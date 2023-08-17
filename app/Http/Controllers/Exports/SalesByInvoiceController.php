<?php

namespace App\Http\Controllers\Exports;

use App\Models\Invoice;
use Illuminate\Http\Request;
use App\Services\ExportService;
use App\Http\Controllers\Controller;
use PhpOffice\PhpSpreadsheet\Shared\Date;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Color;
use PhpOffice\PhpSpreadsheet\Style\NumberFormat;

class SalesByInvoiceController extends Controller
{
    public function index(Request $request): \Illuminate\Http\Response
    {
        $invoices = Invoice::with(['file.engineer:id,name', 'payment.receivedBy:id,name'])
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
            $engineer_id = (int)$request->engineer;
            $invoices = $invoices->filter(
                fn (Invoice $invoice) =>
                $invoice->engineer_id === $engineer_id || $invoice->file?->engineer_id === $engineer_id
            );
        }

        if ($invoices->isEmpty()) {
            return response('<script>alert("No Data Found");window.close();</script>');
        } else {
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
            $sheet->getColumnDimension('M')->setWidth(20);


            $sheet->mergeCells('A1:M2');
            $sheet->getStyle('A1')->getFont()->setSize(14)->setBold(true);
            $sheet->getStyle('A1')->getAlignment()
                ->setHorizontal(Alignment::HORIZONTAL_CENTER)
                ->setVertical(Alignment::VERTICAL_CENTER);

            $sheet->setCellValue('A1', "Sales By Proforma Report from Proforma No $request->from to $request->to");

            $row = 3;

            $headers = [
                'S.No',
                'Date',
                'Invoice No',
                'File No',
                'Bank / Branch',
                'Customer Name / Phone No',
                'Purchaser Name',
                'Bill Amount',
                'Paid Amount',
                'Payment Status',
                'Engineer Name',
                'Received By',
                'Referred By',
            ];

            $sheet->fromArray($headers, null, "A$row");
            $sheet->getStyle("A$row:M$row")->getFont()->setBold(true);
            $row++;

            $paid = 0;
            $totalPaid = 0;
            $totalApproved = 0;

            $startRow = $row;
            $results = [];
            foreach ($invoices as $index => $invoice) {
                $paid = ((float)$invoice->initial_amount + (float)$invoice->payment?->amount_paid);
                if ($invoice->has_file) {
                    $paymentStatus = $this->getPaymentStatus($invoice->payment?->is_paid, $invoice->file->is_approved);
                    $sheet->getStyle("J$row")->getFont()->getColor()->setARGB($paymentStatus->color);
                    array_push($results, [
                        $index + 1,
                        Date::PHPToExcel($invoice->invoice_date),
                        'P'.$invoice->id,
                        $invoice->file_id,
                        $invoice->file->bank_name . ' / ' . $invoice->file->branch_name,
                        $invoice->file->customer_name . ' / ' . $invoice->file->contact_no,
                        $invoice->file->purchaser_name,
                        $invoice->total_amount,
                        $paid,
                        $paymentStatus->text,
                        $invoice->file->engineer->name ?? '-',
                        $invoice->payment->receivedBy->name ?? '-',
                        $invoice->file->referred_by,
                    ]);
                } else {
                    $paymentStatus = $this->getPaymentStatus(
                        $invoice->payment?->is_paid,
                        $invoice->payment?->is_approved
                    );
                    $sheet->getStyle("J$row")->getFont()->getColor()->setARGB($paymentStatus->color);
                    array_push($results, [
                        $index + 1,
                        Date::PHPToExcel($invoice->invoice_date),
                        'P'.$invoice->id,
                        $invoice->invoice_file_id,
                        $invoice->bank_name . ' / ' . $invoice->branch_name,
                        $invoice->customer_name . ' / ' . $invoice->contact_no,
                        $invoice->purchaser_name,
                        $invoice->total_amount,
                        $paid,
                        $paymentStatus->text,
                        $invoice->engineer->name ?? '-',
                        $invoice->payment->receivedBy->name ?? '-',
                        $invoice->referred_by,
                    ]);
                }

                $row++;
                $totalPaid += $paid;
                $totalApproved += $paymentStatus->isApproved ? $paid : 0;
            }
            $sheet->fromArray($results, null, "A$startRow");
            $lastRow = $row - 1;
            $sheet->getStyle('B4:B' . $lastRow)
                ->getNumberFormat()
                ->setFormatCode('dd-mm-yyyy');

            $sheet->getStyle("H4:I$lastRow")
                ->getNumberFormat()
                ->setFormatCode(NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED1);

            $row++;
            $sheet->setCellValue("A$row", 'Total Amount Collected is Rs.' . number_format($totalPaid, 2));
            $sheet->setCellValue("G$row", 'Total Amount Approved is Rs.' . number_format($totalApproved, 2));
            $sheet->getStyle("A$row:M$row")->getFont()->setBold(true);
            $sheet->mergeCells("A$row:F$row");
            $sheet->mergeCells("G$row:M$row");

            return ExportService::sendSpreadsheetToBrowser($spreadsheet, 'Sales By Invoice');
        }
    }

    private function getPaymentStatus($isPaid, $isApproved)
    {
        $paymentStatus = 0;
        if ($isPaid === true) {
            if ($isApproved === true) {
                $paymentStatus = 2;
            } else {
                $paymentStatus = 1;
            }
        }
        return (object)$this->getStatusValues($paymentStatus);
    }

    private function getStatusValues(int $statusCode): array
    {
        switch ($statusCode) {
            case 1:
                return ['color' => Color::COLOR_BLUE, 'text' => 'Paid', 'isApproved' => false];
            case 2:
                return ['color' => Color::COLOR_DARKGREEN, 'text' => 'Paid & Approved', 'isApproved' => true];
            default:
                return ['color' => Color::COLOR_RED, 'text' => 'Pending', 'isApproved' => false];
        }
    }
}
