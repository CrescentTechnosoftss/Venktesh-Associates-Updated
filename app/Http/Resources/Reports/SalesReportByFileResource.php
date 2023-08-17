<?php

namespace App\Http\Resources\Reports;

use Illuminate\Http\Resources\Json\JsonResource;

class SalesReportByFileResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $paid = ['color' => '#0000ff', 'text' => 'Paid'];
        $approved = ['color' => '#38b50b', 'text' => 'Paid & Approved'];

        $paymentStatus = ['color' => '#cf250e', 'text' => 'Pending'];
        $paidAmount = 0;

        if ($this->invoice === null) {
            $paidAmount = (float)$this->cash_paid;
            if ($this->is_approved) {
                $paymentStatus = $approved;
            } elseif ((float)$this->cash_paid > 0) {
                $paymentStatus = $paid;
            }
        } else {
            $paidAmount = floatval($this->invoice?->initial_amount) + floatval($this->invoice?->payment?->amount_paid);
            if ($this->invoice->payment?->is_paid === true) {
                if ($this->invoice->payment?->is_approved) {
                    $paymentStatus = $approved;
                } else {
                    $paymentStatus = $paid;
                }
            }
        }

        return [
            'date' => $this->file_date,
            'invoiceNo' => $this->invoice->id ?? '-',
            'fileNo' => $this->id,
            'bank' => $this->bank_name . ' / ' . $this->branch_name,
            'customer' => $this->customer_name,
            'purchaser' => $this->purchaser_name,
            'billAmount' => $this->invoice === null ? $this->bill_amount : $this->invoice->total_amount,
            'paidAmount' => $paidAmount,
            'paymentStatus' => $paymentStatus,
            'engineerName' => $this->engineer?->name ?? '-',
            'status' => $this->status,
            'referredBy' => $this->referred_by
        ];
    }
}
