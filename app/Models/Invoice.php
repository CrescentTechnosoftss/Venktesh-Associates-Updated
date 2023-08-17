<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Str;

class Invoice extends Model
{
    use HasFactory;

    protected $table = 'invoices';

    protected $fillable = [
        'uuid',
        'invoice_date',
        'file_id',
        'descriptions',
        'bill_amount',
        'gst_percentage',
        'gst_amount',
        'total_amount',
        'initial_amount',
        'paying_amt',
        'due_amt',
        'refeerMob',
        'payment_type',
        'bank_id',
        'IGST',
        'GstNo',
        'created_by',
        'updated_by'
    ];

    protected $casts = [
        'descriptions' => 'array',
        'is_balance_paid' => 'boolean',
        'is_approved' => 'boolean',
        'has_file' => 'boolean',
        'engineer_id' => 'integer'
    ];

    protected $dates = [
        'invoice_date'
    ];

    public static function boot()
    {
        parent::boot();
        static::creating(function (self $invoice) {
            $invoice->uuid = Str::uuid();
        });
    }

    public function file()
    {
        return $this->belongsTo(CustomerFile::class, 'file_id', 'id');
    }

    public function bank()
    {
        return $this->belongsTo(UserBank::class, 'bank_id', 'id');
    }

    public function payment()
    {
        return $this->hasOne(Payment::class, 'invoice_id', 'id');
    }

    public function engineer()
    {
        return $this->belongsTo(Engineer::class, 'engineer_id', 'id');
    }
}
