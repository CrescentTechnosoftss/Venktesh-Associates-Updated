<?php

namespace App\Http\Resources\Reports;

use Carbon\Carbon;
use Illuminate\Http\Resources\Json\JsonResource;

class PaidInvoiceResource extends JsonResource
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
                'date' => $this->payment->paid_date,
                'ProformaNo' => 'P'.$this->id,
                'fileNo' => $this->file_id,
                'bank' => $this->file->bank_name . ' / ' . $this->file->branch_name,
                'customer' => $this->file->customer_name . ' / ' . $this->file->contact_no,
                'purchaser' => $this->file->purchaser_name,
                'billAmount' => $this->total_amount,
                'amountPaid' => ((float)$this->initial_amount + (float)$this->payment->amount_paid),
                'receivedBy'=>$this->payment->receivedBy->name ?? '-',
                'referredBy' => $this->file->referred_by,
                'engineer' => $this->file->engineer->name ?? '-'
            ];
        }
        return [
            'date' => $this->payment->paid_date,
            'ProformaNo' => 'P'.$this->id,
            'fileNo' => $this->invoice_file_id,
            'bank' => $this->bank_name . ' / ' . $this->branch_name,
            'customer' => $this->customer_name . ' / ' . $this->contact_no,
            'purchaser' => $this->purchaser_name,
            'billAmount' => $this->total_amount,
            'amountPaid' => ((float)$this->initial_amount + (float)$this->payment->amount_paid),
            'receivedBy'=>$this->payment->receivedBy->name ?? '-',
            'referredBy' => $this->referred_by,
            'engineer' => $this->engineer->name ?? '-'
        ];
    }
}
