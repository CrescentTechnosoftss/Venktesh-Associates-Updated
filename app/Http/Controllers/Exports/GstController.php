<?php

namespace App\Http\Controllers\Exports;

use Carbon\Carbon;
use App\Models\Invoice;
use Illuminate\Http\Request;
use App\Services\ExportService;
use App\Http\Controllers\Controller;
use PhpOffice\PhpSpreadsheet\Shared\Date;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\NumberFormat;

class GstController extends Controller
{
    public function index(Request $request): \Illuminate\Http\Response
    {

        // $invoices = Invoice::with(['file.engineer:id,name', 'payment.receivedBy:id,name', 'engineer:id,name'])
        //     ->whereHas('payment', function ($query) use ($request) {
        //         if ($request->receivedBy !== 'all') {
        //             $query->where('received_by', '=', $request->receivedBy);
        //         }
        //         $query->whereNotNull('GstNo')
        //         ->where('GstNo', '!=', '');
        //         $query->whereBetween('invoice_date', [$request->from, $request->to]);
        //     })
        //     ->get();
        
        $invoices = Invoice::with(['file.engineer:id,name', 'payment.receivedBy:id,name', 'engineer:id,name'])
        ->whereHas('payment', function ($query) use ($request) {
            if ($request->receivedBy !== 'all') {
                $query->where('received_by', '=', $request->receivedBy);
            }

                $query->whereNotNull('GstNo')
                ->where('GstNo', '!=', '');

             // Check if the GstType is set to 'all' or not
              if ($request->GstType !== 'all') {
                $query->where('is_paid' ,'=' ,$request->GstType);
              }
              
            $query->whereBetween('InvoiceDate', [$request->from, $request->to]);
        })
        ->get();

        if ($request->bank !== 'all') {
            $bank = $request->bank;
            $invoices = $invoices->filter(
                fn (Invoice $filter): bool => $filter->bank_name === $bank || $filter->file?->bank_name === $bank
            );
        }
        if ($request->branch !== 'all') {
            $branch = $request->branch;
            $invoices = $invoices->filter(
                fn (Invoice $filter): bool =>
                $filter->branch_name === $branch || $filter->file?->branch_name === $branch
            );
        }

        if ($request->engineer !== 'all') {
            $engineer_id = (int)$request->engineer;
            $invoices = $invoices->filter(
                fn (Invoice $filter): bool =>
                $filter->engineer_id === $engineer_id || $filter->file?->engineer_id === $engineer_id
            );
        }


        if ($invoices->isEmpty()) {
            return response('<script>alert("No Data Found");window.close();</script>');
        }

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
        $sheet->getColumnDimension('I')->setWidth(12);
        $sheet->getColumnDimension('J')->setWidth(20);
        $sheet->getColumnDimension('K')->setWidth(20);
        $sheet->getColumnDimension('L')->setWidth(20);


        $startDate = Carbon::parse($request->from)->format('d-m-Y');
        $endDate = Carbon::parse($request->to)->format('d-m-Y');

        $sheet->mergeCells('A1:L2');
        $sheet->getStyle('A1')->getFont()->setSize(14)->setBold(true);
        $sheet->getStyle('A1')->getAlignment()
            ->setHorizontal(Alignment::HORIZONTAL_CENTER)
            ->setVertical(Alignment::VERTICAL_CENTER);

        $sheet->setCellValue('A1', "Gst Report");

        $row = 3;

        $headers = [
            'S.No',
            'Proforma Date',
            'Proforma No',
            // 'File No',
            'Name',
            'GSTIN NO.',
            // 'Purchaser Name',
            'Bill Amount',
            'CGST 9%',
            'SGST 9%',
            'IGST 18%',
            'Total'
        ];

        $sheet->fromArray($headers, null, "A$row");
        $sheet->getStyle("A$row:L$row")->getFont()->setBold(true);
        $row++;

        // $paid = 0;
        $totalPaid = 0;
        foreach ($invoices as $index => $invoice) {
            // $paid += (float)$invoice->total_amount;
            if ($invoice->has_file) {
               $cgst =  $invoice->bill_amount*9/100;
               $sgst =  $invoice->bill_amount*9/100;
                // $cgst =  $invoice->gst_amount/2;
                // $sgst =  $invoice->gst_amount/2;
                $results = [
                    $index + 1,
                    Date::PHPToExcel($invoice->invoice_date),
                    'P'.$invoice->id,
                    // $invoice->file_id,
                    $invoice->file->customer_name,
                    $invoice->GstNo,
                    // $invoice->file->purchaser_name,
                    $invoice->bill_amount,
                    $invoice->IGST ? '': $cgst,
                    $invoice->IGST ? '': $sgst,
                    $invoice->IGST ? $invoice->gst_amount : '',
                    $invoice->total_amount,
                ];
            } else {
                $cgst =  $invoice->bill_amount*9/100;
                $sgst =  $invoice->bill_amount*9/100;
                $results = [
                    $index + 1,
                    Date::PHPToExcel($invoice->invoice_date),
                    'P'.$invoice->id,
                    // $invoice->invoice_file_id,
                    $invoice->bank_name . ' / ' . $invoice->branch_name,
                    $invoice->GstNo,
                    // $invoice->customer_name . ' / ' . $invoice->contact_no,
                    // $invoice->purchaser_name,
                    $invoice->bill_amount,
                    $invoice->IGST ? '': $cgst,
                    $invoice->IGST ? '': $sgst,
                    $invoice->IGST ? $invoice->gst_amount : '',
                    $invoice->total_amount
                ];
                
            }
            $sheet->fromArray($results, null, "A$row");
            $row++;
            // $totalPaid += $paid;
        }
        
        $lastRow = $row - 1;
        $sheet->getStyle('B4:B' . $lastRow)
            ->getNumberFormat()
            ->setFormatCode('dd-mm-yyyy');

        $sheet->getStyle("H4:I$lastRow")
            ->getNumberFormat()
            ->setFormatCode(NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED1);

        $row++;
        // $sheet->setCellValue("A$row", 'Total Amount Collected is Rs.' . number_format($totalPaid, 2));
        // $sheet->getStyle("A$row")->getFont()->setBold(true);
        // $sheet->mergeCells("A$row:L$row");

        return ExportService::sendSpreadsheetToBrowser($spreadsheet, 'Paid Invoice');
    }
}
