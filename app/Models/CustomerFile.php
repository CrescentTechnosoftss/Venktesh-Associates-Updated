<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Str;

class CustomerFile extends Model
{
    use HasFactory;

    protected $table = 'customer_files';

    protected $fillable = [
        'uuid',
        'file_date',
        'bank_name',
        'branch_name',
        'customer_name',
        'purchaser_name',
        'contact_no',
        'address',
        'remarks',
        'referred_by',
        'refercon',
        'engineer_id',
        'apartment_name',
        'total_value',
        'status',
        'bill_amount',
        'cash_paid',
        'is_approved',
        'delivery_boy_id',
        'report_delivered_date',
        'delivered_to',
        'payment_status',
        'engnum',
        'created_by',
        'updated_by'
    ];

    protected $casts = [
        'is_approved' => 'boolean',
        'engineer_id'=>'integer'
    ];

    protected $dates = [
        'file_date'
    ];

    public static function boot()
    {
        parent::boot();
        static::creating(function (self $customer_files) {
            $customer_files->uuid = Str::uuid();
        });
    }

    public function invoice()
    {
        return $this->hasOne(Invoice::class, 'file_id', 'id');
    }

    public function engineer()
    {
        return $this->belongsTo(Engineer::class, 'engineer_id', 'id');
    }

    public function deliveryBoy()
    {
        return $this->belongsTo(DeliveryBoy::class, 'delivery_boy_id', 'id');
    }

    public function payment()
    {
        return $this->hasOne(Payment::class, 'file_id', 'id');
    }
}
