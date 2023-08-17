<?php

namespace App\Http\Controllers;

use App\Http\Resources\CustomerFileResource;
use App\Models\Bank;
use App\Models\BankDetail;
use App\Models\Branch;
use App\Models\CustomerFile;
use App\Models\Engineer;
use App\Models\DeliveryBoy;
use App\Models\Invoice;
use DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Str;

class CustomerFileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $banks = BankDetail::distinct()->orderBy('bank_name')->pluck('bank_name');
        $engineers = DB::table((new Engineer)->getTable())->get(['id', 'name'])->sortBy('name');
        $deliveryBoys = DB::table((new DeliveryBoy)->getTable())->get(['id', 'name'])->sortBy('name');
        $customers = CustomerFile::pluck('customer_name');
        $contacts = CustomerFile::pluck('contact_no');

        $pageName = 'Customer Details';
        $statuses = [
            'VALUATION COMPLETED',
            'VALUATION COMPLETED BUT DOCUMENT PENDING',
            'VALUATION CANCELLED',
            'TYPING COMPLETED',
            'REPORT DELIVERED'
        ];

        return view(
            'customer_details',
            compact('banks', 'engineers', 'deliveryBoys', 'pageName', 'statuses', 'customers', 'contacts')
        );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request): \Illuminate\Http\JsonResponse
    {
        $data = $request->all();

        $customer_data = CustomerFile::create([
            'file_date' => DateTime::createFromFormat('d-m-Y', $data['fileDate'])->format('Y-m-d'),
            'bank_name' => Str::upper($data['bank']),
            'engnum' => $data['enumber'],
            'branch_name' => Str::upper($data['branch']),
            'customer_name' => Str::upper($data['customer']),
            'purchaser_name' => Str::upper($data['purchaser']),
            'contact_no' => Str::upper($data['contact']),
            'address' => Str::upper($data['address']),
            'remarks' => Str::upper($data['remarks']),
            'referred_by' => Str::upper($data['referrer']),
            'refercon' => $data['referrerMob'],
            'engineer_id' => $data['engineer'],
            'apartment_name' => Str::upper($data['apartment']),
            'total_value' => (float)$data['totalValue'],
            'status' => $data['status'],
            'bill_amount' => (float)$data['billAmount'],
            'cash_paid' => (float)$data['cashPaid'],
            'is_approved' => 0,
            'delivery_boy_id' => $data['deliveryBoy'],
            'report_delivered_date' => $data['reportDate'] === ''
                ? null
                : DateTime::createFromFormat('d-m-Y', $data['reportDate'])->format('Y-m-d'),

            'delivered_to' => Str::upper($data['deliveredTo']),
            'created_by' => $request->session()->get('userId'),
            'updated_by' => $request->session()->get('userId')
        ]);

        return response()->json([
            'message' => 'File Saved',
            'id' => $customer_data->id
        ]);
    }

        public function getEngNum(string $name)
        {
        return Engineer::where('id', '=', $name)
            ->pluck('contact_no');
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
        return DB::table('customer_files')->get(['id', 'uuid'])->sortByDesc('id')->values();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(string $uuid)
    {
        $customerData = CustomerFile::where('uuid', '=', $uuid)->firstOrFail();

        $invoice = Invoice::where('file_id', '=', $customerData->id)
            ->whereHas('payment', function ($query) {
                $query->where('is_paid', '=', 1)
                    ->where('is_approved', '=', 1);
            })->first();
        if ($invoice != null) {
            $customerDataInvoice = CustomerFile::where('id', '=', $invoice->file_id)->firstOrFail();
            return [

                'fileDate' => $customerDataInvoice->file_date,
                'bank' => $customerDataInvoice->bank_name,
                'branch' => $customerDataInvoice->branch_name,
                'customer' => $customerDataInvoice->customer_name,
                'purchaser' => $customerDataInvoice->purchaser_name,
                'contact' => $customerDataInvoice->contact_no,
                'address' => $customerDataInvoice->address,
                'remarks' => $customerDataInvoice->remarks,
                'referrer' => $customerDataInvoice->referred_by,
                'referrerMob' => $customerDataInvoice->refercon,
                'engineer' => $customerDataInvoice->engineer_id,
                'apartment' => $customerDataInvoice->apartment_name,
                'status' => $customerDataInvoice->status,
                'totalValue' => $customerDataInvoice->total_value,
                'billAmount' => $customerDataInvoice->bill_amount,
                'cashPaid' => $customerDataInvoice->cash_paid,
                'isApproved' => $customerDataInvoice->is_approved,
                'deliveryBoy' => $customerDataInvoice->delivery_boy_id,
                'reportDate' => $customerDataInvoice->report_delivered_date,
                'invoiceNo' => $customerDataInvoice->invoice?->id,
                'deliveredTo' => $customerDataInvoice->delivered_to,
                'invoiceApproved' => 'approved',
                'isAdmin' => session('userType') === 'admin'
            ];
        } else {
            return CustomerFileResource::make($customerData);
        }
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
        $customer = CustomerFile::where('uuid', '=', $uuid)->first();

        $deliveredDate = $data->reportDate === ''
            ? null
            : DateTime::createFromFormat('d-m-Y', $data->reportDate)->format('Y-m-d');

        $customer->file_date = DateTime::createFromFormat('d-m-Y', $data->fileDate)->format('Y-m-d');
        $customer->bank_name = Str::upper($data->bank);
        $customer->branch_name = Str::upper($data->branch);
        $customer->customer_name = Str::upper($data->customer);
        $customer->purchaser_name = Str::upper($data->purchaser);
        $customer->contact_no = Str::upper($data->contact);
        $customer->address = Str::upper($data->address);
        $customer->remarks = Str::upper($data->remarks);
        $customer->referred_by = Str::upper($data->referrer);
        $customer->refercon = Str::upper($data->referrerMob);
        $customer->engineer_id = $data->engineer ?? 0;
        $customer->apartment_name = Str::upper($data->apartment);
        $customer->total_value = (float)$data->totalValue;
        $customer->status = $data->status;
        $customer->bill_amount = (float)$data->billAmount;
        $customer->delivery_boy_id = $data->deliveryBoy ?? 0;
        $customer->report_delivered_date = $deliveredDate;
        $customer->delivered_to = Str::upper($data->deliveredTo);
        $customer->updated_by = $request->session()->get('userId');

        if ($customer->is_approved === false || $request->session()->get('userType') === 'admin') {
            $customer->cash_paid = (float)$data->cashPaid;
        }

        $customer->save();

        return response('File Details Updated')->header('Content-Type', 'text/plain');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(string $uuid): \Illuminate\Http\Response
    {
        $customer = CustomerFile::where('uuid', '=', $uuid)->first();
        Invoice::where('file_id', '=', $customer->id)->delete();
        $customer->delete();
        return response('Customer Details Deleted')->header('Content-Type', 'text/plain');
    }
}
