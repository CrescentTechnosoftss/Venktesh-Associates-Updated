<?php

namespace App\Http\Resources\Reports;

use Illuminate\Http\Resources\Json\JsonResource;

class SalesReportByInvoiceResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $paymentStatus = ['color' => '#cf250e', 'text' => 'Pending'];

        if ($this->payment?->is_paid === true) {
            if ($this->payment?->is_approved === true || $this->file?->is_approved === true) {
                $paymentStatus = ['color' => '#38b50b', 'text' => 'Paid & Approved'];
            } else {
                $paymentStatus = ['color' => '#0000ff', 'text' => 'Paid'];
            }
        }
        if ($this->has_file) {
            return [
                'date' => $this->invoice_date,
                'invoiceNo' => 'P'.$this->id,
                'fileNo' => $this->file_id,
                'bank' => $this->file->bank_name . ' / ' . $this->file->branch_name,
                'customer' => $this->file->customer_name . ' / ' . $this->file->contact_no,
                'purchaser' => $this->file->purchaser_name,
                'billAmount' => $this->total_amount,
                'paidAmount' => floatval($this->initial_amount) + floatval($this->payment?->amount_paid),
                'paymentStatus' => $paymentStatus,
                'engineerName' => $this->file->engineer->name ?? '-',
                'receivedBy' => $this->payment->receivedBy->name ?? '-',
                'referredBy' => $this->file->referred_by
            ];
        }

        return [
            'date' => $this->invoice_date,
            'invoiceNo' => 'P'.$this->id,
            'fileNo' => $this->invoice_file_id,
            'bank' => $this->bank_name . ' / ' . $this->branch_name,
            'customer' => $this->customer_name . ' / ' . $this->contact_no,
            'purchaser' => $this->purchaser_name,
            'billAmount' => $this->total_amount,
            'paidAmount' => floatval($this->initial_amount) + floatval($this->payment?->amount_paid),
            'paymentStatus' => $paymentStatus,
            'engineerName' => $this->engineer->name ?? '-',
            'receivedBy' => $this->payment->receivedBy->name ?? '-',
            'referredBy' => $this->referred_by
        ];
    }
}
