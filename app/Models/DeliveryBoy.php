<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DeliveryBoy extends Model
{
    use HasFactory;

    protected $table = 'delivery_boys';

    protected $fillable = [
        'name',
        'contact_no',
        'email_id',
        'address'
    ];
}
