<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CustomerSearchResource extends JsonResource
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
            'invoiceNo' => $this->invoice?->id ?? '-',
            'customerName' => $this->customer_name,
            'contactNo' => $this->contact_no
        ];
    }
}
