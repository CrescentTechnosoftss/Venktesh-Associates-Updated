<?php

namespace App\Http\Controllers\Exports;

use App\Models\CustomerFile;
use Illuminate\Http\Request;
use App\Services\ExportService;
use App\Http\Controllers\Controller;
use PhpOffice\PhpSpreadsheet\Shared\Date;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Style\Color;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\NumberFormat;
use App\Http\Resources\Reports\SalesReportByFileResourceCollection;

class SalesByFileController extends Controller
{
    public function index(Request $request)
    {
        $datas = CustomerFile::with(['invoice.payment.receivedBy', 'engineer', 'deliveryBoy'])
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

        if ($datas->isEmpty()) {
            return response('<script>alert("No Data Found");window.close();</script>');
        } else {
            $files = SalesReportByFileResourceCollection::make($datas);

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

            $sheet->setCellValue('A1', "Sales By File Report from File No $request->from to $request->to");

            $row = 3;

            $headers = [
                'S.No',
                'Date',
                'File No',
                'Invoice No',
                'Bank / Branch',
                'Customer Name / Phone No',
                'Purchaser',
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

            $totalPaid = 0;
            $totalApproved = 0;

            foreach ($files as $index => $file) {
                $paymentStatusCode = 0;
                $paidAmount = 0;

                if ($file->invoice === null) {
                    $paidAmount = (float)$file->cash_paid;
                    if ($file->is_approved) {
                        $paymentStatusCode = 2;
                    } elseif ((float)$file->cash_paid > 0) {
                        $paymentStatusCode = 1;
                    }
                } else {
                    $paidAmount = floatval($file->invoice?->initial_amount)
                        + floatval($file->invoice?->payment?->amount_paid);
                    if ($file->invoice->payment?->is_paid === true) {
                        if ($file->invoice->payment?->is_approved) {
                            $paymentStatusCode = 2;
                        } else {
                            $paymentStatusCode   = 1;
                        }
                    }
                }

                $paymentStatus = (object)$this->getStatusValues($paymentStatusCode);
                $receivedBy = $file->invoice === null ? '-' : $file->invoice->payment?->receivedBy?->name;

                $sheet->getStyle("J$row")->getFont()->getColor()->setARGB($paymentStatus->color);
                $results = [
                    $index + 1,
                    Date::PHPToExcel($file->file_date),
                    $file->id,
                    $file->invoice?->id ?? '-',
                    $file->bank_name . ' / ' . $file->branch_name,
                    $file->customer_name . ' / ' . $file->contact_no,
                    $file->purchaser_name,
                    $file->invoice === null ? $file->bill_amount : $file->invoice->total_amount,
                    $paidAmount,
                    $paymentStatus->text,
                    $file->engineer?->name ?? '-',
                    $receivedBy ?? '-',
                    $file->referredBy,
                ];
                $sheet->fromArray($results, null, "A$row");
                $row++;
                $totalPaid += $paidAmount;
                $totalApproved += $paymentStatus->isApproved ? $paidAmount : 0;
            }
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

            return ExportService::sendSpreadsheetToBrowser($spreadsheet, 'Sales By File');
        }
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
