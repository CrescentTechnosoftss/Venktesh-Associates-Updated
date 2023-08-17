<?php

namespace App\Http\Controllers;

use App\Http\Resources\CustomerSearchResourceCollection;
use App\Models\CustomerFile;
use App\Models\Invoice;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CommonController extends Controller
{
    public function searchFile(string $search): array
    {
        $files = CustomerFile::with('invoice:id,file_id')
            ->where(function ($query) use ($search) {
                $query->where('id', '=', $search)
                    ->orWhere('customer_name', 'like', '%' . $search . '%')
                    ->orWhere('contact_no', 'like', $search . '%')
                    ->orWhere('apartment_name', 'like', $search . '%');
            })
            ->orderByDesc('id')
            ->get(['id', 'customer_name', 'contact_no']);

        $invoices = DB::table('invoices')
            ->where('has_file', '=', 0)
            ->where(function ($query) use ($search) {
                $query->where('id', '=', $search)
                    ->orWhere('customer_name', 'like', '%' . $search . '%')
                    ->orWhere('contact_no', 'like', $search . '%')
                    ->orWhere('apartment_name', 'like', $search . '%');
            })
            ->orderByDesc('id')
            ->get(['id', 'invoice_file_id', 'customer_name', 'contact_no']);

        $searchData = collect()->push(...$this->parseFiles($files))->push(...$this->parseInvoices($invoices));

        return ['files' => $searchData];
    }

    private function parseFiles(\Illuminate\Database\Eloquent\Collection $files): \Illuminate\Support\Collection
    {
        return $files->map(function ($map) {
            return [
                'fileNo' => $map->id,
                'invoiceNo' => $map->invoice->id ?? '-',
                'customerName' => $map->customer_name,
                'contactNo' => $map->contact_no
            ];
        });
    }

    private function parseInvoices(\Illuminate\Support\Collection $invoices): \Illuminate\Support\Collection
    {
        return $invoices->map(function ($map) {
            return [
                'fileNo' => $map->invoice_file_id,
                'invoiceNo' => $map->id,
                'customerName' => $map->customer_name,
                'contactNo' => $map->contact_no
            ];
        });
    }
}
