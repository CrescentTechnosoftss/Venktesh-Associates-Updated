<?php

namespace App\Http\Resources\Invoice;

use Illuminate\Http\Resources\Json\JsonResource;

class BankDetailResource extends JsonResource
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
            'branch' => $this->branch_name,
            'accountName' => $this->account_name,
            'accountNo' => $this->account_no,
            'ifscCode' => $this->ifsc_code
        ];
    }
}
