<?php

namespace App\Http\Controllers;

use App\Models\Invoice;
use App\Models\Engineer;
use App\Models\UserBank;
use App\Models\Bank;
use App\Models\BankDetail;
use App\Models\CustomerFile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Resources\Invoice\BankDetailResource;
use App\Http\Resources\Invoice\FileDetailResource;
use App\Http\Resources\Invoice\InvoiceDetailResource;

class InvoiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $userBanks = DB::table('user_banks')->get(['id', 'bank_name'])->sortBy('bank_name');
        $fileIds = $this->getFileNos();
        $banks = BankDetail::distinct()->orderBy('bank_name')->pluck('bank_name');
        $engineers = DB::table('engineers')->get(['id', 'name'])->sortBy('name');
        $pageName = 'Proforma Bill';
        $descriptions = [
            'VALUATION OF PROPERTY BELONGING TO',
            'ESTIMATION OF PROPERTY BELONGING TO',
            'INSPECTION REPORT OF PROPERTY BELONGING TO',
            'COMPLETION REPORT OF PROPERTY BELONGING TO'
        ];
        $statuses = [
            'VALUATION COMPLETED',
            'VALUATION COMPLETED BUT DOCUMENT PENDING',
            'VALUATION CANCELLED',
            'TYPING COMPLETED',
            'REPORT DELIVERED'
        ];
        return view(
            'invoice.main',
            compact('fileIds', 'userBanks', 'descriptions', 'pageName', 'banks', 'engineers', 'statuses')
        );
    }

    public function getBranches(string $bank): array
    {
        $branches = BankDetail::where('bank_name', '=', $bank)
            ->orderBy('branch_name')
            ->pluck('branch_name');
        return compact('branches');
    }

   
    public function getFileNos(): \Illuminate\Support\Collection
    {
        return CustomerFile::doesntHave('invoice')
            ->getQuery()
            // ->where('cash_paid', '=', 0)
            ->orderByDesc('id')
            ->get(['id', 'uuid']);
    }

    public function getFileDetails(string $uuid): FileDetailResource
    {
        $data = CustomerFile::where('uuid', '=', $uuid)->first();
        
        return FileDetailResource::make($data);
    }

    public function getBankDetails(int $id): BankDetailResource
    {
        return BankDetailResource::make(UserBank::find($id));
    }

        public function updateBankDetails(Request $request, $bankId)
    {
        $bank = UserBank::findOrFail($bankId);
        
        // $bank->branch = $request->input('branch');
        $bank->account_name = $request->input('accountName');
        $bank->account_no = $request->input('accountNo');
        $bank->ifsc_code = $request->input('ifscCode');
        
        $bank->save();
        
        // return response()->json(['message' => 'Bank details updated successfully']);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request): \Illuminate\Http\JsonResponse
    {
        $data = (object)$request->all();
        $invoice = new Invoice();

        $invoice->invoice_date = $data->invoiceDate;

        $invoice->has_file = $data->hasFile;
        $invoice->descriptions = $data->descriptions;
        $invoice->bill_amount = $data->billAmount;
        $invoice->gst_percentage = $data->gstPercentage;
        $invoice->IGST = $data->IGST;
        $invoice->gst_amount = $data->gstAmount;
        $invoice->total_amount = $data->totalAmount;
        $invoice->initial_amount = $data->initialAmount;
        $invoice->paying_amt = $data->initialAmount;
        $invoice->due_amt = floatval($data->billAmount) - floatval($data->initialAmount);
        $invoice->payment_type = $data->paymentType;
        $invoice->GstNo = $data->GstNo;
        $invoice->refeerMob = $data->referrerMob;
        $invoice->bank_id = $data->bank;
        $invoice->created_by = $request->session()->get('userId');
        $invoice->updated_by = $request->session()->get('userId');

        if ($data->hasFile === false) {
            $customerDetails = (object)$data->customerDetails;
            $invoice->invoice_file_id = $customerDetails->fileNo;
            $invoice->customer_name = $customerDetails->customer;
            $invoice->bank_name = $customerDetails->bank;
            $invoice->branch_name = $customerDetails->branch;
            // $invoice->IGST = $customerDetails->IGST;
            $invoice->GstNo = $customerDetails->GstNo;
            $invoice->purchaser_name = $customerDetails->purchaser;
            $invoice->contact_no = $customerDetails->contact;
            $invoice->address = $customerDetails->address;
            $invoice->remarks = $customerDetails->remarks;
            $invoice->referred_by = $customerDetails->referrer;
            $invoice->refeerMob = $customerDetails->referrerName;
            $invoice->engineer_id = $customerDetails->engineer;
            $invoice->apartment_name = $customerDetails->apartment;
            $invoice->status = $customerDetails->status;
            $invoice->delivered_to = $customerDetails->deliveredTo;
            $invoice->report_delivery_date = $customerDetails->reportDate;
        } else {
            $invoice->file_id = intval($data->fileNo);
        }

        $invoice->save();

        $savePath = config('paths.pdfSavePath');

        if ($savePath !== null && is_dir($savePath)) {
            $fileName = $savePath . $invoice->id . '.pdf';

            $file = fopen($fileName, 'w');
            $view = view('invoice.print', ['data' => $invoice])->render();
            fwrite($file, $view);
            fclose($file);
        }

        return response()->json([
            'message' => 'Invoice Added',
            'invoiceNo' => $invoice->id,
            'uuid' => $invoice->uuid
        ]);
    }

    public function getInvoiceNos(): \Illuminate\Support\Collection
    {
        return DB::table('invoices')
            ->orderByDesc('id')
            ->get(['id', 'uuid']);
    }

    /**
     * Display the specified resource.
     *
     * @param  string $uuid
     * @return \Illuminate\Http\Response
     */
    public function show(string $uuid): InvoiceDetailResource
    {
        return InvoiceDetailResource::make(Invoice::where('uuid', '=', $uuid)->first());
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, string $uuid): \Illuminate\Http\Response
    {
        $data = (object)$request->all();
        $invoice = Invoice::where('uuid', '=', $uuid)
        ->first();

        $invoice->invoice_date = $data->invoiceDate;
        $invoice->descriptions = $data->descriptions;
        $invoice->bill_amount = $data->billAmount;
        $invoice->gst_percentage = $data->gstPercentage;
        $invoice->gst_amount = $data->gstAmount;
        $invoice->total_amount = $data->totalAmount;
        $invoice->payment_type = $data->paymentType;
        $invoice->GstNo = $data->GstNo;
        $invoice->IGST = $data->IGST;
        $invoice->bank_id = $data->bank;
        
        $invoice->updated_by = $request->session()->get('userId');

        if ($invoice->has_file === false) {
            $customerDetails = (object)$data->customerDetails;
            $invoice->invoice_file_id = $customerDetails->fileNo;
            $invoice->customer_name = $customerDetails->customer;
            $invoice->bank_name = $customerDetails->bank;
            $invoice->branch_name = $customerDetails->branch;
            $invoice->purchaser_name = $customerDetails->purchaser;
            $invoice->contact_no = $customerDetails->contact;
            $invoice->address = $customerDetails->address;
            $invoice->remarks = $customerDetails->remarks;
            // $invoice->IGST = $customerDetails->IGST;
            $invoice->GstNo = $customerDetails->GstNo;
            $invoice->referred_by = $customerDetails->referrer;
            $invoice->engineer_id = $customerDetails->engineer;
            $invoice->apartment_name = $customerDetails->apartment;
            $invoice->status = $customerDetails->status;
            $invoice->delivered_to = $customerDetails->deliveredTo;
            $invoice->report_delivery_date = $customerDetails->reportDate;
          
        
        }

        

        $invoice->save();

        $savePath = config('paths.pdfSavePath');

        if ($savePath !== null && is_dir($savePath)) {
            $fileName = $savePath . $invoice->id . '.pdf';

            $file = fopen($fileName, 'w');
            $view = view('invoice.print', ['data' => $invoice])->render();
            fwrite($file, $view);
            fclose($file);
        }

        return response('Invoice Details Updated!!!')->header('Content-Type', 'text/plain');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(string $uuid): \Illuminate\Http\Response
    {
        Invoice::where('uuid', '=', $uuid)->delete();

        return response('Invoice Details Deleted')->header('Content-Type', 'text/plain');
    }
}
