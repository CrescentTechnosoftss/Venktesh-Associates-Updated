<?php

namespace App\Models;

// use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EmailAccount extends Model
{
    // use HasFactory;

    protected $table = 'email_accounts';

    protected $fillable = [
        'sender_name',
        'email_address',
        'password',
        'is_default'
    ];

    protected $hidden = [
        'password'
    ];

    protected $casts=[
        'is_default'=>'boolean'
    ];
}
