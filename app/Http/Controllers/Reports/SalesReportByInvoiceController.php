<?php

namespace App\Http\Controllers\Reports;

use App\Http\Controllers\Controller;
use App\Http\Resources\Reports\SalesReportByInvoiceResourceCollection;
use App\Models\DeliveryBoy;
use App\Models\Engineer;
use App\Models\Invoice;
use Illuminate\Http\Request;

class SalesReportByInvoiceController extends Controller
{
    public function index()
    {
        $engineers = Engineer::all(['id', 'name'])->sortBy('name');
        $deliveryBoys = DeliveryBoy::all(['id', 'name'])->sortBy('name');
        $pageName = 'Sales Report (Proforma)';

        return view('report_viewers.sales_report_by_invoice', compact('engineers', 'deliveryBoys', 'pageName'));
    }

    public function show(Request $request)
    {
        $invoices = Invoice::with(['file.engineer:id,name', 'payment.receivedBy:id,name', 'engineer:id,name'])
            ->when($request->receivedBy !== 'all', function ($query) use ($request) {
                $query->whereHas('payment', fn ($payment) => $payment->where('received_by', '=', $request->receivedBy));
            })
            ->when(
                $request->filterBy === 'number',
                fn ($query) => $query->whereBetween('id', [$request->from, $request->to])
            )
            ->when(
                $request->filterBy === 'date',
                fn ($query) => $query->whereBetween('invoice_date', [$request->fromDate, $request->toDate])
            )
            ->get([
                'id',
                'file_id',
                'invoice_file_id',
                'total_amount',
                'initial_amount',
                'invoice_date',
                'has_file',
                'bank_name',
                'branch_name',
                'customer_name',
                'purchaser_name',
                'contact_no',
                'engineer_id',
                'referred_by'
            ])
            ->sortBy('id');


        if ($request->engineer !== 'all') {
            $engineer = (int)$request->engineer;
            $invoices = $invoices->filter(
                fn (Invoice $invoice) =>
                $invoice->engineer_id === $engineer || $invoice->file?->engineer_id === $engineer
            );
        }

        SalesReportByInvoiceResourceCollection::wrap('data');
        return SalesReportByInvoiceResourceCollection::make($invoices);
    }
}
