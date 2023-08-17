<?php

namespace App\Http\Resources\Invoice;

use Illuminate\Http\Resources\Json\JsonResource;

class InvoiceDetailResource extends JsonResource
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
            'fileNo' => $this->file_id,
            'invoiceDate' => $this->invoice_date,
            'hasFile' => $this->has_file,
            'customerName' => $this->file?->customer_name,
            'purchaserName' => $this->file?->purchaser_name,
            'engineerName' => $this->file?->engineer?->name,
            'referrer' => $this->file?->referred_by,
            'referrerMob' => $this->file?->refercon,
            'customerBank' => $this->file?->bank_name,
            'customerBranch' => $this->file?->branch_name,
            'descriptions' => $this->descriptions,
            'billAmount' => $this->bill_amount,
            'initialAmount' => $this->initial_amount,
            'gstPercentage' => $this->gst_percentage,
            'gstAmount' => $this->gst_amount,
            'totalAmount' => $this->total_amount,
            'paidAmount' => $this->payment?->is_paid ? $this->total_amount : $this->initial_amount,
            'dueAmount' => $this->payment?->is_paid ? 0 : $this->due_amt,
            'paymentType' => $this->payment_type,
            'GstNo' => $this->GstNo,
            'IGST' => $this->IGST,
            'bank' => $this->bank_id,
            'branch' => $this->bank?->branch_name,
            'accountName' => $this->bank?->account_name,
            'accountNo' => $this->bank?->account_no,
            'ifscCode' => $this->bank?->ifsc_code,
            'customerDetails' => [
                'fileNo' => $this->invoice_file_id,
                'customer' => $this->customer_name,
                'bank' => $this->bank_name,
                'branch' => $this->branch_name,
                'purchaser' => $this->purchaser_name,
                'contact' => $this->contact_no,
                'IGST' => $this->IGST,
                'GstNo' => $this->GstNo,
                'address' => $this->address,
                'remarks' => $this->remarks,
                'referrer' => $this->referred_by,
                'engineer' => $this->engineer_id,
                'apartment' => $this->apartment_name,
                'status' => $this->status,
                'totalValue' => $this->total_value,
                'reportDate' => $this->report_delivery_date,
                'delivered_to' => $this->delivered_to
            ]
        ];
    }
}
