<?php

use App\Libraries\Fpdf\Scripts\McTable;

$pdf = new McTable('L', 'mm', 'A3');

$pdf->addPage();

$pdf->setFont('times', 'B', 20);

$pdf->setXY(10, 100);

$pdf->setX(260);
$pdf->cell(140, 6, $data->bank_name, 0, 1, 'C');
$pdf->ln(5);
$pdf->setX(260);
$pdf->cell(140, 6, $data->branch_name . ' BRANCH', 0, 1, 'C');


$pdf->ln(15);

$pdf->setFont('times', '', 14);

$pdf->setX(260);
$pdf->cell(140, 5, 'VALUATION OF PROPERTY', 0, 1, 'C');
$pdf->setX(260);
$pdf->multiCell(140, 5, 'BELONGING TO ' . $data->customer_name, 0, 'C');
if ($data->purchaser_name !== '') {
    $pdf->setX(260);
    $pdf->multiCell(140, 6, 'PROPOSED PURCHASER : ' . $data->purchaser_name, 0, 'C');
}

$pdf->output('', 'Bill #.docx', 1);

// $pdf->output('D','rapper.docx');
