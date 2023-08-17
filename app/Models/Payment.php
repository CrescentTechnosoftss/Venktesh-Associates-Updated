<?php

namespace App\Models;

// use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    // use HasFactory;
    protected $table = 'payments';

    protected $fillable = [
        'invoice_id',
        'file_id',
        'amount_paid',
        'paid_date',
        'bank_id',
        'remarks',
        'is_paid',
        'received_by',
        'is_approved',
        'InvoiceDate',
        'bill_no',
        'created_by',
        'updated_by'
    ];

    protected $casts = [
        'is_paid' => 'boolean',
        'is_approved' => 'boolean'
    ];

    protected $dates=[
        'paid_date'
    ];

    public function receivedBy()
    {
        return $this->belongsTo(DeliveryBoy::class, 'received_by', 'id');
    }

    public function file()
    {
        return $this->belongsTo(CustomerFile::class, 'file_id', 'id');
    }
}
