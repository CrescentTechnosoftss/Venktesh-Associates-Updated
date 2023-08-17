<?php

namespace App\Http\Controllers\Reports;

use App\Models\Invoice;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\Reports\PaidInvoiceResourceCollection;
use App\Models\BankDetail;
use Illuminate\Support\Facades\DB;

class PaidInvoiceController extends Controller
{
    public function index()
    {
        $banks = BankDetail::distinct()->orderBy('bank_name')->pluck('bank_name');
        $engineers = DB::table('engineers')->orderBy('name')->get(['id', 'name']);
        $deliveryBoys = DB::table('delivery_boys')->orderBy('name')->get(['id', 'name']);
        $pageName = 'Paid Proforma';
        return view('report_viewers.paid_invoice', compact('banks', 'engineers', 'deliveryBoys', 'pageName'));
    }

    public function getBranches(string $bank): array
    {
        return [
            'branches' => BankDetail::where('bank_name', '=', $bank)
                ->orderBy('branch_name')
                ->pluck('branch_name')
        ];
    }

    public function show(Request $request): PaidInvoiceResourceCollection
    {
        $data = Invoice::with(['file.engineer:id,name', 'payment.receivedBy:id,name', 'engineer:id,name'])
            ->whereHas('payment', function ($query) use ($request) {
                if ($request->receivedBy !== 'all') {
                    $query->where('received_by', '=', $request->receivedBy);
                }
                $query->where('is_paid', '=', 1)
                    ->whereBetween('paid_date', [$request->from, $request->to]);
            })
            ->get();

        if ($request->bank !== 'all') {
            $bank = $request->bank;
            $data = $data->filter(
                fn (Invoice $filter): bool => $filter->bank_name === $bank || $filter->file?->bank_name === $bank
            );
        }
        if ($request->branch !== 'all') {
            $branch = $request->branch;
            $data = $data->filter(
                fn (Invoice $filter): bool =>
                $filter->branch_name === $branch || $filter->file?->branch_name === $branch
            );
        }

        if ($request->engineer !== 'all') {
            $engineer_id = (int)$request->engineer;
            $data = $data->filter(
                fn (Invoice $filter): bool =>
                $filter->engineer_id === $engineer_id || $filter->file?->engineer_id === $engineer_id
            );
        }

        PaidInvoiceResourceCollection::wrap('invoices');
        return PaidInvoiceResourceCollection::make($data);
    }
}
