<?php

namespace App\Http\Resources\Invoice;

use Illuminate\Http\Resources\Json\JsonResource;

class FileDetailResource extends JsonResource
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
            'fileNo' => $this->id,
            'customer' => $this->customer_name,
            'purchaser' => $this->purchaser_name,
            'engineer' => $this->engineer?->name ?? '',
            'referrer' => $this->referred_by,
            'referrerMob' => $this->refercon,
            'bank' => $this->bank_name,
            'branch' => $this->branch_name,
            'billAmount' => $this->bill_amount
        ];
    }
}
