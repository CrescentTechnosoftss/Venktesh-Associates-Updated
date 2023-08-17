<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BillNoResource extends JsonResource
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
                'invoiceNo' => $this->id,
                // 'InvoiceDate' => $this->InvoiceDate,
                'fileNo' => $this->file_id,
                'customerName' => $this->file->customer_name,
                'purchaserName'=>$this->file->purchaser_name,
                'bankName' => $this->file->bank_name,
                'branchName' => $this->file->branch_name,
                'billAmount' => $this->total_amount,
                'advance' => $this->initial_amount,
                // 'billNo' => $this->payment->bill_no,
                'billNo' => $this->payment ? $this->payment->bill_no : null,
                'InvoiceDate' => $this->payment->InvoiceDate ?? date('Y-m-d'),
                'amountPaid' => $this->payment->amount_paid ?? 0,
                'paidDate' => $this->payment->paid_date ?? date('Y-m-d'),
                'receivedBy' => $this->payment->received_by ?? '0',
                'paidBank' => $this->payment->bank_id ?? '0',
                'remarks' => $this->payment->remarks ?? '',
                'isPaid' => $this->payment->is_paid ?? false,
                'isApproved' => $this->payment->is_approved ?? false,
                'isAdmin'=>session('userType')==='admin'
            ];
        }

        return [
            'invoiceNo' => $this->id,
            'fileNo' => $this->invoice_file_id,
            'customerName' => $this->customer_name,
            'purchaserName'=>$this->purchaser_name,
            'bankName' => $this->bank_name,
            'branchName' => $this->branch_name,
            'billAmount' => $this->total_amount,
            'advance' => $this->initial_amount,
            'amountPaid' => $this->payment->amount_paid ?? 0,
            // 'billNo' => $this->payment->bill_no,
            'billNo' => $this->payment ? $this->payment->bill_no : null,
            'paidDate' => $this->payment->paid_date ?? date('Y-m-d'),
            'InvoiceDate' => $this->payment->InvoiceDate ?? date('Y-m-d'),
            'receivedBy' => $this->payment->received_by ?? '0',
            'paidBank' => $this->payment->bank_id ?? '0',
            'remarks' => $this->payment->remarks ?? '',
            'isPaid' => $this->payment->is_paid ?? false,
            'isApproved' => $this->payment->is_approved ?? false,
            'isAdmin'=>session('userType')==='admin'
        ];
    }
}
