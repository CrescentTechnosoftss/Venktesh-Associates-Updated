<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CustomerFileResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {

        return [
            'fileDate' => $this->file_date,
            'bank' => $this->bank_name,
            'branch' => $this->branch_name,
            'customer' => $this->customer_name,
            'purchaser' => $this->purchaser_name,
            'contact' => $this->contact_no,
            'address' => $this->address,
            'remarks' => $this->remarks,
            'referrer' => $this->referred_by,
            'referrerMob' => $this->refercon,
            'engineer' => $this->engineer_id,
            'apartment' => $this->apartment_name,
            'status' => $this->status,
            'totalValue' => $this->total_value,
            'billAmount' => $this->bill_amount,
            'cashPaid' => $this->cash_paid,
            'isApproved' => $this->is_approved,
            'deliveryBoy' => $this->delivery_boy_id,
            'reportDate' => $this->report_delivered_date,
            'invoiceNo' => $this->invoice?->id,
            'deliveredTo' => $this->delivered_to,
            // 'approved' => $this->approved,
            'isAdmin' => session('userType') === 'admin'
        ];
    }
}
