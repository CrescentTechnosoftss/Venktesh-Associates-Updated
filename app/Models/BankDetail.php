<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BankDetail extends Model
{
    use HasFactory;

    protected $table = 'bank_details';

    protected $fillable = [
        'bank_name',
        'branch_name',
        'contact_no',
        'email_id',
        'address'
    ];
}
