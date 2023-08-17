<?php

namespace App\Http\Controllers;

use App\Http\Resources\PaymentReceivingResource;
use App\Http\Resources\BillNoResource;
// use App\Models\CustomerFile;
// use App\Models\DeliveryBoy;
use App\Models\Invoice;
use App\Models\Payment;
// use App\Models\UserBank;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PaymentReceivingController extends Controller
{
    public function index()
    {
        $invoiceNos = DB::table('invoices')->get(['id', 'uuid'])->sortByDesc('id');
        $BillNos = DB::table('payments')->get(['id', 'bill_no'])->sortByDesc('bill_no');
        $deliveryBoys = DB::table('delivery_boys')->get(['id', 'name'])->sortByDesc('name');
        $fileNos = $this->getFileNos();
        $banks = DB::table('user_banks')->get(['id', 'bank_name'])->sortBy('bank_name');
        $pageName = 'Payment Receiving';

        return view('payment_receiving', compact('invoiceNos', 'fileNos', 'banks', 'deliveryBoys', 'pageName','BillNos'));
    }

    public function getInvoiceNos(): \Illuminate\Support\Collection
    {
        return DB::table('invoices')->get(['id', 'uuid'])->sortByDesc('id')->values();
    }

    // public function getBillNos(): \Illuminate\Support\Collection
    // {
    //     return DB::table('payments')->get(['id', 'bill_no'])->sortByDesc('bill_no')->values();
    // }

    public function getFileNos(): \Illuminate\Support\Collection
    {
        return DB::table('customer_files')
            ->select(['customer_files.id', 'invoices.uuid as invoiceUuid'])
            ->join('invoices', 'customer_files.id', '=', 'invoices.file_id')
            ->orderByDesc('customer_files.id')
            ->get();
        // return CustomerFile::has('invoice')
        //     ->with('invoice:id,uuid,file_id')
        //     ->get(['id'])
        //     ->sortByDesc('id')
        //     ->map(fn ($map) => (object)['id' => $map->id, 'invoiceUuid' => $map->invoice->uuid]);
    }

    public function store(Request $request)
    {
        $userId = $request->session()->get('userId');

        $payment = Payment::where('invoice_id', '=', $request->invoiceNo)->first();

        if ($payment !== null) {
            $invoiceDateS = date('Y-m-d H:i:s', strtotime($request->InvoiceDate));
            $payment->paid_date = $request->paidDate;
            $payment->InvoiceDate = $invoiceDateS;
            $payment->bill_no = $request->billNo;
            $payment->bank_id = $request->bank;
            $payment->remarks = $request->remarks;
            $payment->received_by = $request->receivedBy;
            $payment->updated_by = $userId;

            if ($payment->is_approved === false || $request->session()->get('userType') === 'admin') {
                $payment->amount_paid = $request->amountPaid;
                $payment->is_paid = $request->isPaid;
            }

            $payment->save();
        } else {
            $invoiceDate = date('Y-m-d H:i:s', strtotime($request->InvoiceDate));
            Payment::create([
                'invoice_id' => $request->invoiceNo,
                'amount_paid' => $request->amountPaid,
                'InvoiceDate' => $invoiceDate,
                'paid_date' => $request->paidDate,
                'bill_no' => $request->billNo,
                'bank_id' => $request->bank,
                'remarks' => $request->remarks,
                'is_paid' => $request->isPaid,
                'is_approved' => false,
                'received_by' => $request->receivedBy,
                'created_by' => $userId,
                'updated_by' => $userId,
            ]);
        }

        return response('Payment Receiving Saved')
            ->header('Content-Type', 'text/plain');
    }

//     public function store(Request $request)
// {
//     $userId = $request->session()->get('userId');

//     $lastBillNo = Payment::max('bill_no'); // Get the highest bill_no from the Payment table

//     // Generate the next bill number by incrementing the last bill number
//     $nextBillNo = $lastBillNo !== null ? $lastBillNo + 1 : 8230;

//     $payment = Payment::where('invoice_id', '=', $request->invoiceNo)->first();

//     if ($payment !== null) {
//         // Existing payment
//         $invoiceDateS = date('Y-m-d H:i:s', strtotime($request->InvoiceDate));
//         $payment->paid_date = $request->paidDate;
//         $payment->InvoiceDate = $invoiceDateS;
//         $payment->bank_id = $request->bank;
//         $payment->remarks = $request->remarks;
//         $payment->received_by = $request->receivedBy;
//         $payment->updated_by = $userId;

//         if ($payment->is_approved === false || $request->session()->get('userType') === 'admin') {
//             $payment->amount_paid = $request->amountPaid;
//             $payment->is_paid = $request->isPaid;
//         }

//         $payment->save();
//     } else {
//         // New payment
//         $invoiceDate = date('Y-m-d H:i:s', strtotime($request->InvoiceDate));
//         Payment::create([
//             'bill_no' => $nextBillNo, // Assign the generated bill number
//             'invoice_id' => $request->invoiceNo,
//             'amount_paid' => $request->amountPaid,
//             'InvoiceDate' => $invoiceDate,
//             'paid_date' => $request->paidDate,
//             'bank_id' => $request->bank,
//             'remarks' => $request->remarks,
//             'is_paid' => $request->isPaid,
//             'is_approved' => false,
//             'received_by' => $request->receivedBy,
//             'created_by' => $userId,
//             'updated_by' => $userId,
//         ]);
//     }

//     return response('Payment Receiving Saved')
//         ->header('Content-Type', 'text/plain');
// }

public function generateBillNumber()
{
    $lastBillNo = Payment::max('bill_no');
    $nextBillNo = $lastBillNo !== null ? $lastBillNo + 1 : 8230;

    return response()->json(['billNo' => $nextBillNo]);
}


    public function show(string $uuid): PaymentReceivingResource
    {
        $invoiceDetails = Invoice::where('uuid', '=', $uuid)->first();

        return PaymentReceivingResource::make($invoiceDetails);
    }

    // public function getBillDetails(string $billNo): BillNoResource
    // {
    //     $billDetails = Payment::where('bill_no', '=', $billNo)->first();

    //     return BillNoResource::make($billDetails);
    // }
}
