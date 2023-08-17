<?php

// @formatter:off
/**
 * A helper file for your Eloquent Models
 * Copy the phpDocs from this file to the correct Model,
 * And remove them from this file, to prevent double declarations.
 *
 * @author Barry vd. Heuvel <barryvdh@gmail.com>
 */


namespace App\Models{
/**
 * App\Models\Bank
 *
 * @property int $id
 * @property string $bank_name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Bank newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Bank newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Bank query()
 * @method static \Illuminate\Database\Eloquent\Builder|Bank whereBankName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bank whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bank whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bank whereUpdatedAt($value)
 */
	class Bank extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\BankDetail
 *
 * @property int $id
 * @property string $bank_name
 * @property string $branch_name
 * @property string $contact_no
 * @property string $email_id
 * @property string $address
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Database\Factories\BankDetailFactory factory(...$parameters)
 * @method static \Illuminate\Database\Eloquent\Builder|BankDetail newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BankDetail newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BankDetail query()
 * @method static \Illuminate\Database\Eloquent\Builder|BankDetail whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BankDetail whereBankName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BankDetail whereBranchName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BankDetail whereContactNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BankDetail whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BankDetail whereEmailId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BankDetail whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BankDetail whereUpdatedAt($value)
 */
	class BankDetail extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Branch
 *
 * @property int $id
 * @property string $branch_name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Database\Factories\BranchFactory factory(...$parameters)
 * @method static \Illuminate\Database\Eloquent\Builder|Branch newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Branch newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Branch query()
 * @method static \Illuminate\Database\Eloquent\Builder|Branch whereBranchName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Branch whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Branch whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Branch whereUpdatedAt($value)
 */
	class Branch extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\CustomerFile
 *
 * @property int $id
 * @property string $uuid
 * @property \Illuminate\Support\Carbon|null $file_date
 * @property string|null $bank_name
 * @property string|null $branch_name
 * @property string $customer_name
 * @property string|null $purchaser_name
 * @property string $contact_no
 * @property string $address
 * @property string $remarks
 * @property string $referred_by
 * @property int $engineer_id
 * @property string $apartment_name
 * @property string $total_value
 * @property string $status
 * @property string $bill_amount
 * @property string|null $cash_paid
 * @property bool|null $is_approved
 * @property int $delivery_boy_id
 * @property string|null $report_delivered_date
 * @property string $delivered_to
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property int|null $created_by
 * @property int|null $updated_by
 * @property string|null $engineer_name
 * @property-read \App\Models\DeliveryBoy $deliveryBoy
 * @property-read \App\Models\Engineer $engineer
 * @property-read \App\Models\Invoice|null $invoice
 * @property-read \App\Models\Payment|null $payment
 * @method static \Database\Factories\CustomerFileFactory factory(...$parameters)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile query()
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereApartmentName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereBankName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereBillAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereBranchName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereCashPaid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereContactNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereCreatedBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereCustomerName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereDeliveredTo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereDeliveryBoyId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereEngineerId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereEngineerName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereFileDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereIsApproved($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile wherePurchaserName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereReferredBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereReportDeliveredDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereTotalValue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereUpdatedBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomerFile whereUuid($value)
 */
	class CustomerFile extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\DeliveryBoy
 *
 * @property int $id
 * @property string $name
 * @property string|null $contact_no
 * @property string|null $email_id
 * @property string|null $address
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Database\Factories\DeliveryBoyFactory factory(...$parameters)
 * @method static \Illuminate\Database\Eloquent\Builder|DeliveryBoy newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|DeliveryBoy newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|DeliveryBoy query()
 * @method static \Illuminate\Database\Eloquent\Builder|DeliveryBoy whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DeliveryBoy whereContactNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DeliveryBoy whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DeliveryBoy whereEmailId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DeliveryBoy whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DeliveryBoy whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DeliveryBoy whereUpdatedAt($value)
 */
	class DeliveryBoy extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\EmailAccount
 *
 * @property int $id
 * @property string|null $sender_name
 * @property string|null $email_address
 * @property string|null $password
 * @property bool|null $is_default
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|EmailAccount newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EmailAccount newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EmailAccount query()
 * @method static \Illuminate\Database\Eloquent\Builder|EmailAccount whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmailAccount whereEmailAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmailAccount whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmailAccount whereIsDefault($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmailAccount wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmailAccount whereSenderName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmailAccount whereUpdatedAt($value)
 */
	class EmailAccount extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Engineer
 *
 * @property int $id
 * @property string $name
 * @property string|null $contact_no
 * @property string|null $email_id
 * @property string|null $address
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Database\Factories\EngineerFactory factory(...$parameters)
 * @method static \Illuminate\Database\Eloquent\Builder|Engineer newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Engineer newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Engineer query()
 * @method static \Illuminate\Database\Eloquent\Builder|Engineer whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Engineer whereContactNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Engineer whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Engineer whereEmailId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Engineer whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Engineer whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Engineer whereUpdatedAt($value)
 */
	class Engineer extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Invoice
 *
 * @property int $id
 * @property string $uuid
 * @property \Illuminate\Support\Carbon|null $invoice_date
 * @property int|null $file_id
 * @property string|null $invoice_file_id
 * @property int|null $has_file
 * @property string|null $bank_name
 * @property string|null $branch_name
 * @property string|null $customer_name
 * @property string|null $purchaser_name
 * @property string|null $contact_no
 * @property string|null $address
 * @property string|null $remarks
 * @property string|null $referred_by
 * @property int|null $engineer_id
 * @property string|null $apartment_name
 * @property string|null $status
 * @property string|null $total_value
 * @property string|null $report_delivery_date
 * @property string|null $delivered_to
 * @property array|null $descriptions
 * @property string $bill_amount
 * @property int|null $gst_percentage
 * @property string|null $gst_amount
 * @property string|null $total_amount
 * @property string $initial_amount
 * @property string $paying_amt
 * @property string $due_amt
 * @property string $payment_type
 * @property int $bank_id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property int|null $created_by
 * @property int|null $updated_by
 * @property-read \App\Models\UserBank $bank
 * @property-read \App\Models\CustomerFile|null $file
 * @property-read \App\Models\Payment|null $payment
 * @method static \Database\Factories\InvoiceFactory factory(...$parameters)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice query()
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereApartmentName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereBankId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereBankName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereBillAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereBranchName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereContactNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereCreatedBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereCustomerName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereDeliveredTo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereDescriptions($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereDueAmt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereEngineerId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereFileId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereGstAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereGstPercentage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereHasFile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereInitialAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereInvoiceDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereInvoiceFileId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice wherePayingAmt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice wherePaymentType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice wherePurchaserName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereReferredBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereReportDeliveryDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereTotalAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereTotalValue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereUpdatedBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Invoice whereUuid($value)
 */
	class Invoice extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Payment
 *
 * @property int $id
 * @property int|null $invoice_id
 * @property int|null $file_id
 * @property int|null $amount_paid
 * @property string|null $paid_date
 * @property int|null $bank_id
 * @property string|null $remarks
 * @property int|null $received_by
 * @property bool|null $is_paid
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property int|null $created_by
 * @property int|null $updated_by
 * @property-read \App\Models\CustomerFile|null $file
 * @property-read \App\Models\DeliveryBoy|null $receivedBy
 * @method static \Illuminate\Database\Eloquent\Builder|Payment newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Payment newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Payment query()
 * @method static \Illuminate\Database\Eloquent\Builder|Payment whereAmountPaid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Payment whereBankId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Payment whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Payment whereCreatedBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Payment whereFileId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Payment whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Payment whereInvoiceId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Payment whereIsPaid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Payment wherePaidDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Payment whereReceivedBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Payment whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Payment whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Payment whereUpdatedBy($value)
 */
	class Payment extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\User
 *
 * @property int $id
 * @property string $name
 * @property string $password
 * @property string $user_type
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection|\Illuminate\Notifications\DatabaseNotification[] $notifications
 * @property-read int|null $notifications_count
 * @method static \Database\Factories\UserFactory factory(...$parameters)
 * @method static \Illuminate\Database\Eloquent\Builder|User newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|User newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|User query()
 * @method static \Illuminate\Database\Eloquent\Builder|User whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereUserType($value)
 */
	class User extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\UserBank
 *
 * @property int $id
 * @property string $bank_name
 * @property string $branch_name
 * @property string $account_name
 * @property string $account_no
 * @property string $ifsc_code
 * @property string $address
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Database\Factories\UserBankFactory factory(...$parameters)
 * @method static \Illuminate\Database\Eloquent\Builder|UserBank newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserBank newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserBank query()
 * @method static \Illuminate\Database\Eloquent\Builder|UserBank whereAccountName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserBank whereAccountNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserBank whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserBank whereBankName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserBank whereBranchName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserBank whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserBank whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserBank whereIfscCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserBank whereUpdatedAt($value)
 */
	class UserBank extends \Eloquent {}
}

