<?php

namespace App\Http\Resources\Reports;

use Carbon\Carbon;
use Illuminate\Http\Resources\Json\JsonResource;

class NonPaidInvoiceResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        if ($this->has_file) {
            return [
                'ProformaDate' => $this->invoice_date,
                'ProformaNo' => 'P'.$this->id,
                'fileNo' => $this->file_id,
                'bank' => $this->file->bank_name . ' / ' . $this->file->branch_name,
                'customer' => $this->file->customer_name . ' / ' . $this->file->contact_no,
                'purchaser' => $this->file->purchaser_name,
                'billAmount' => (float)$this->total_amount,
                'referredBy' => $this->file->referred_by. ' / ' . $this->file->refercon,
                'engineer' => $this->file->engineer?->name ?? '-'
            ];
        } else {
            return [
                'ProformaDate' =>$this->invoice_date,
                'ProformaNo' => 'P'.$this->id,
                'fileNo' => $this->invoice_file_id,
                'bank' => $this->bank_name . ' / ' . $this->branch_name,
                'customer' => $this->customer_name . ' / ' . $this->contact_no,
                'purchaser' => $this->purchaser_name,
                'billAmount' => (float)$this->total_amount,
                // 'referredBy' => $this->referred_by,
                'referredBy' => $this->referred_by. ' / ' . $this->refeerMob,
                'engineer' => $this->engineer?->name ?? '-'
            ];
        }
    }
}
