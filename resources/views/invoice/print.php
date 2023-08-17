<?php

use App\Libraries\Fpdf\Scripts\McTable;

$pdf = new McTable();

$pdf->addPage();

$pdf->setFont('times', 'B', 12);
$pdf->cell(190, 5, 'Proforma Bill', 0, 1, 'C');
$pdf->setX(20);
$pdf->cell(180, 5, 'Mobile : 98440 11655', 0, 1, 'R');

$pdf->ln(1);
$pdf->image(storage_path('app/public/logo.jpeg'), 10, 5, 30, 20);
$pdf->setFont('times', 'B', 20);
$pdf->cell(190, 6, 'N. VENKATESH & ASSOCIATES', 0, 1, 'C');

$pdf->setFontSize(10);
$pdf->line(10, $pdf->getY(), 200, $pdf->getY());
$pdf->cell(190, 5, 'No. 2985/A, 2nd Stage Rajaji Nagar,', 0, 1, 'C');
$pdf->cell(190, 5, '( Near Kuvempu Metro Station ) Bengaluru - 560 021', 0, 1, 'C');
$pdf->cell(190, 5, 'Contact No : 9035735771 / 9035735754', 0, 1, 'C');
$pdf->cell(190, 5, 'Email : venkatvaluer@yahoo.com / venkatvaluer@gmail.com', 0, 1, 'C');
$pdf->line(10, $pdf->getY(), 200, $pdf->getY());

$pdf->setLeftMargin(20);
$pdf->ln(5);
$pdf->setFont('times');

$pdf->cell(120, 6, 'To');
$pdf->cell(23, 6, 'Proforma No');
$pdf->cell(30, 6, ': P' . $data->id, 0, 1);

$pdf->cell(120, 6, 'THE MANAGER,');
$pdf->cell(23, 6, 'Proforma Date');
$pdf->cell(30, 6, ': ' . $data->invoice_date->format('d-m-Y'), 0, 1);

$pdf->cell(120, 6, strtoupper($data->bank_name ?? $data->file->bank_name));
$pdf->cell(23, 6, 'File No');
$pdf->cell(30, 6, ': ' . ($data->invoice_file_id ?? $data->file_id), 0, 1);

$pdf->cell(120, 6, strtoupper($data->branch_name ?? $data->file->branch_name) . ' BRANCH');
$pdf->cell(23, 6, 'Referred By');
// $pdf->cell(30, 6, ': ' . ($data->referred_by ?? $data->file->referred_by), 0, 1);
// $pdf->cell(30, 6, ': ' . ($data->refeerMob ?? $data->file->refercon).'/'.($data->referred_by ?? $data->file->referred_by), 0, 1);
$pdf->SetX(160); // Set X position for the cell
$pdf->MultiCell(0, 6, ': ' . ($data->refeerMob ?? $data->file->refercon) . "\n/" . ($data->referred_by ?? $data->file->referred_by), 0, 'L');


$pdf->ln(5);

$pdf->setFont('times', 'B');
$pdf->cell(20, 6, 'Description ');

$pdf->setFont('times');
$pdf->cell(120, 6, '(Professional Charges)');

$pdf->setFont('times', 'B');
$pdf->cell(20, 6, 'Amount', 0, 1, 'R');

$pdf->line(16, $pdf->getY() - 1, 200, $pdf->getY() - 1);


$pdf->setFont('times');

$pdf->setX(165);
$pdf->cell(20, 6, 'Rs.' . number_format($data->bill_amount) . '/-', 0, 0, 'R');
// $pdf->cell(20, 6, 'Rs.' . number_format($data->payment->amount_paid) . '/-', 0, 0, 'R');


$pdf->setX(20);

$customer_name = $data->customer_name ?? $data->file->customer_name;

$purchaser = $data->purchaser_name ?? $data->file->purchaser_name;
$purchaser_name = (($purchaser) !== '') ? ' (PROPOSED PURCHASER ' . $purchaser . ')' : '';

foreach ($data->descriptions as $index => $description) {
    if ($index > 0) {
        $customer_name = '';
        $purchaser_name = '';
    }

    $pdf->multiCell(140, 6, $description . ' ' . $customer_name . $purchaser_name);
}
if (intval($data->gst_percentage) > 0 && !$data->IGST) {
    $half_gst = (int)$data->gst_percentage / 2;
    $half_gst_amount = (float)$data->gst_amount / 2;

    $pdf->cell(25, 6, "GSTIN :");
    $pdf->cell(20, 6,  $data->GstNo , 0, 1, 'R');

    $pdf->cell(145, 6, "CGST @ $half_gst%");
    $pdf->cell(20, 6, 'Rs.' . number_format($half_gst_amount) . '/-', 0, 1, 'R');

    $pdf->cell(145, 6, "SGST @ $half_gst%");
    $pdf->cell(20, 6, 'Rs.' . number_format($half_gst_amount) . '/-', 0, 1, 'R');

    
}

if ($data->IGST) {
    $pdf->cell(25, 6, "GSTIN :");
    $pdf->cell(20, 6,  $data->GstNo , 0, 1, 'R');
    
    $pdf->cell(145, 6, "IGST @ 18%");
    $pdf->cell(20, 6, 'Rs.' . number_format((float)$data->gst_amount) . '/-', 0, 1, 'R');
} 

$pdf->line(16, $pdf->getY(), 200, $pdf->getY());


$pdf->setFont('times', 'B');

$pdf->cell(135, 6, 'Grand Total', 0, 0, 'R');
$pdf->cell(30, 6, number_format($data->total_amount) . '/-', 0, 1, 'R');

$pdf->ln(3);
$inWords = strtoupper(getIndianCurrency($data->total_amount)) . ' ONLY';
$pdf->cell(190, 5, 'Rupees in words ' . $inWords, 0, 1);

$wordLength = $pdf->getStringWidth($inWords);
$pdf->setLineWidth(0.4);
$pdf->line(47, $pdf->getY() - 1, $wordLength + 47, $pdf->getY() - 1);

$pdf->ln(5);

$pdf->setFontSize(18);
$pdf->setTextColor(250, 0, 0);
$pdf->cell(100, 6, 'PAYMENT NOT RECEIVED', 0, 1);

$pdf->ln(5);

if ($data->bank !== null) {
    $pdf->setFontSize(14);
    $pdf->cell(100, 5, 'Please pay the amount to the below A/c No.', 0, 1);
    $pdf->ln(2);
    $pdf->cell(100, 6, $data->bank->bank_name, 0, 1);
    $pdf->setTextColor(0, 0, 0);
    $pdf->cell(100, 6, $data->bank->branch_name . ' Branch', 0, 1);
    $pdf->cell(100, 6, 'Name : ' . $data->bank->account_name, 0, 1);
    $pdf->cell(100, 6, $data->bank->account_no, 0, 1);
    $pdf->cell(100, 6, 'IFSC Code : ' . $data->bank->ifsc_code, 0, 1);
} else {
    $pdf->setTextColor(0, 0, 0);
}


$pdf->setFont('times', 'B', 11);
$pdf->setX(160);
$pdf->cell(20, 5, 'Signature', 0, 1);
$pdf->setFont('times');
$pdf->setX(145);
$pdf->multiCell(50, 5, '(This is computer generated invoice no signature required) ');

$pdf->setFont('times', 'B', 16);
$pdf->cell(190, 6, 'GSTIN : 29ABPPV0384E3Z4', 0, 1);

$pdf->ln(10);

$pdf->setFont('times', 'B', 14);

$pdf->multiCell(190, 6, file_get_contents('invoice_notes.txt', true));

$pdf->output(isset($dest) ? $dest : '', isset($name) ? $name : '');
