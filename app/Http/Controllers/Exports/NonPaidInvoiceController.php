<?php

namespace App\Http\Controllers\Exports;

use App\Models\Invoice;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use PhpOffice\PhpSpreadsheet\Shared\Date;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use App\Services\ExportService;
use Carbon\Carbon;
use PhpOffice\PhpSpreadsheet\Style\Alignment;

class NonPaidInvoiceController extends Controller
{
    public function index(Request $request): \Illuminate\Http\Response
    {
        $invoices = Invoice::with('file.engineer:id,name', 'engineer:id,name')
            ->whereDoesntHave('payment', function ($query) {
                $query->where('is_paid', '=', 1);
            })
            ->whereBetween('invoice_date', [$request->from, $request->to])
            ->get();

        if ($request->bank !== 'all') {
            $bank = $request->bank;
            $invoices = $invoices->filter(
                fn (Invoice $filter): bool =>
                $filter->bank_name === $bank
                    || $filter->file?->bank_name === $bank
            );
        }
        if ($request->branch !== 'all') {
            $branch = $request->branch;
            $invoices = $invoices->filter(
                fn (Invoice $filter): bool =>
                $filter->branch_name === $branch
                    || $filter->file?->branch_name === $branch
            );
        }
        if ($request->engineer !== 'all') {
            $engineer_id = (int)$request->engineer;
            $invoices = $invoices->filter(
                fn (Invoice $filter): bool =>
                $filter->engineer_id === $engineer_id
                    || $filter->file?->engineer_id === $engineer_id
            );
        }

        if ($invoices->isEmpty()) {
            return response('<script>alert("No Data Found");window.close();</script>');
        }

        $headers = [
            'S.No',
            'Proforma Date',
            'Proforma No',
            'File No',
            'Bank / Branch',
            'Customer Name / Phone No',
            'Purchaser Name',
            'Bill Amount',
            'Referred By',
            'Engineer Name'
        ];

        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getSheet(0);

        $sheet->getColumnDimension('A')->setWidth(8);
        $sheet->getColumnDimension('B')->setWidth(12);
        $sheet->getColumnDimension('C')->setWidth(10);
        $sheet->getColumnDimension('D')->setWidth(8);
        $sheet->getColumnDimension('E')->setWidth(35);
        $sheet->getColumnDimension('F')->setWidth(35);
        $sheet->getColumnDimension('G')->setWidth(25);
        $sheet->getColumnDimension('H')->setWidth(12);
        $sheet->getColumnDimension('I')->setWidth(20);
        $sheet->getColumnDimension('J')->setWidth(20);

        $startDate = Carbon::parse($request->from)->format('d-m-Y');
        $endDate = Carbon::parse($request->to)->format('d-m-Y');

        $sheet->mergeCells('A1:J2');
        $sheet->getStyle('A1')->getFont()->setSize(14)->setBold(true);
        $sheet->getStyle('A1')->getAlignment()
            ->setHorizontal(Alignment::HORIZONTAL_CENTER)
            ->setVertical(Alignment::VERTICAL_CENTER);

        $sheet->setCellValue('A1', "Non Paid Invoice Report from $startDate to $endDate");

        $row = 3;

        $sheet->fromArray($headers, null, "A$row");
        $sheet->getStyle("A$row:J$row")->getFont()->setBold(true);
        $row++;

        foreach ($invoices as $index => $invoice) {
            if ($invoice->has_file) {
                $results = [
                    $index + 1,
                    Date::PHPToExcel($invoice->invoice_date),
                    'P'.$invoice->id,
                    $invoice->file_id,
                    $invoice->file->bank_name . ' / ' . $invoice->file->branch_name,
                    $invoice->file->customer_name . ' / ' . $invoice->file->contact_no,
                    $invoice->file->purchaser_name,
                    $invoice->total_amount,
                    $invoice->file->referred_by,
                    $invoice->file->engineer->name ?? '-'
                ];
            } else {
                $results = [
                    $index + 1,
                    Date::PHPToExcel($invoice->invoice_date),
                    'P'.$invoice->id,
                    $invoice->invoice_file_id,
                    $invoice->bank_name . ' / ' . $invoice->branch_name,
                    $invoice->customer_name . ' / ' . $invoice->contact_no,
                    $invoice->purchaser_name,
                    $invoice->total_amount,
                    $invoice->referred_by,
                    $invoice->engineer->name ?? '-'
                ];
            }
            $sheet->fromArray($results, null, "A$row");
            $row++;
        }
        $lastRow = $row - 1;
        $sheet->getStyle('B4:B' . $lastRow)
            ->getNumberFormat()
            ->setFormatCode('dd-mm-yyyy');

        return ExportService::sendSpreadsheetToBrowser($spreadsheet, 'Non Paid Invoice');
    }
}
