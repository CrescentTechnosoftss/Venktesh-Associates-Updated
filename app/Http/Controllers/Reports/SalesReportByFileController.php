<?php

namespace App\Http\Controllers\Reports;

// use App\Models\Engineer;
// use App\Models\DeliveryBoy;
use App\Models\CustomerFile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Http\Resources\Reports\SalesReportByFileResourceCollection;

class SalesReportByFileController extends Controller
{
    public function index()
    {
        $engineers = DB::table('engineers')->get(['id', 'name'])->sortBy('name');
        $statuses = [
            'VALUATION COMPLETED',
            'VALUATION COMPLETED BUT DOCUMENT PENDING',
            'VALUATION CANCELLED',
            'TYPING COMPLETED',
            'REPORT DELIVERED'
        ];
        $pageName = 'Sales Report (File)';

        return view('report_viewers.sales_report_by_file', compact('engineers', 'statuses', 'pageName'));
    }


    public function show(Request $request)
    {
        $files = CustomerFile::with(['invoice.payment', 'engineer', 'deliveryBoy'])
            ->when($request->engineer !== 'all', function ($query) use ($request) {
                $query->where('engineer_id', '=', $request->engineer);
            })
            ->when(
                $request->status !== 'all',
                fn ($query) => $query->where('status', '=', $request->status)
            )
            ->when(
                $request->filterBy === 'date',
                fn ($query) => $query->whereBetween('file_date', [$request->fromDate, $request->toDate])
            )
            ->when(
                $request->filterBy === 'number',
                fn ($query) => $query->whereBetween('id', [$request->from, $request->to])
            )
            ->get()
            ->sortBy('id');

        return SalesReportByFileResourceCollection::make($files);
    }
}
