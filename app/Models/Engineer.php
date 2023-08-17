<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Engineer extends Model
{
    use HasFactory;

    protected $table = 'engineers';

    protected $fillable = [
        'name',
        'contact_no',
        'email_id',
        'address'
    ];
}
