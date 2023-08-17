<?php

namespace App\Http\Controllers;

use App\Models\Invoice;
use App\Models\CustomerFile;
use Carbon\Carbon;
use Illuminate\Http\Request;
// use Illuminate\Http\Request;
use PhpOffice\PhpWord\IOFactory;
use PhpOffice\PhpWord\PhpWord;
use PhpOffice\PhpWord\Shared\Html;
use Exception;

class PrintController extends Controller
{
    // public function rapper(string $uuid) : \Illuminate\Http\Response
    // {
    //     $data = CustomerFile::where('uuid', '=', $uuid)->first();

    //     $phpWord = new \PhpOffice\PhpWord\PhpWord();
    //     $filePath = config('paths.tempDocx');
    //     $section = $phpWord->addSection();

    //     // Html::addHtml($section, '<h2 style="margin-top:40px>"'.$data->bank_name.'</h2>', false, false);

    //     $section->addText(
    //        $data->bank_name,
    //         array('name' => 'Tahoma', 'size' => 10)
    //     );
    //     $writer = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007',true);
    //     // $writer->save($filePath);
    //     try {
    //         $writer->save(storage_path($uuid.'.docx'),true);
    //     } catch (Exception $e) {
    //     }
    //     $headers = [
    //         'Content-Type' => 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'
    //     ];
    //     return response()->download(storage_path($uuid.'.docx'),$headers);
   
    //     // readfile(storage_path($uuid.'helloWorld.docx'));
    //     // return response()
    //     // ->header('Content-Type', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document')
    //     // ->header('Content-Disposition', 'attachment; filename="Invoice.docx"');

    //     // return response()->view('rapper_print', compact('data'))
    //     // ->header('Content-Type', mime_content_type($filePath))
    //     //     ->header('Content-Disposition', 'attachment;filename="' . $uuid . '.docx"');

    //     // return response()
    //     //     ->view('rapper_print', compact('data'))
    //     //     ->header('Content-Type', 'application/docx')
    //     //     ->header('Content-Disposition', 'attachment;filename="Rapper Print.docx"');
    // }

    
    public function rapper(string $uuid)
    {
        $data = CustomerFile::where('uuid', '=', $uuid)->first();

        $phpWord = new \PhpOffice\PhpWord\PhpWord();
        $paper = new \PhpOffice\PhpWord\Style\Paper();
        $paper->setSize('A3');

        //$section = $phpword->addSection();


        $filePath = config('paths.tempDocx');
        $section = $phpWord->addSection(array('pageSizeW' => $paper->getWidth(), 'pageSizeH' => $paper->getHeight(),
         'orientation' => 'landscape','marginLeft' =>14000, 'marginRight' => 1000,
         'marginTop' => 1500, 'marginBottom' => 4000)
        );

        // array());
        //$section = $phpword->addSection();
        // Html::addHtml($section, '<h2 style="margin-top:40px>"'.$data->bank_name.'</h2>', false, false);
        $section->addTextBreak(8);
        $section->addText(
            $data->bank_name??' ',
            array('name' => 'Times New Roman', 'size' => 21, 'bold'=>true),
            array('alignment'=>'center', 'spaceAfter'=>0, 'LineSpacing' =>1.0)

            );

        $section->addText(
            $data->branch_name ??' '. '  ' .'BRANCH',
            array('indentLeft'=> 45,'name' => 'Times New Roman', 'size' => 21,'bold'=>true),
            array('alignment'=>'center') );

        $section->addTextBreak(.8);

        $section->addText( 'VALUATION OF PROPERTY',
        array('name' => 'Times New Roman', 'size' => 16,'bold'=>true),
        array('alignment'=>'center', 'spaceAfter'=>0, 'LineSpacing' =>1.0));

        $section->addText('BELONGING TO '
        . $data->customer_name??' ',
        array('name' => 'Times New Roman', 'size' => 16,'bold'=>true),
        array('alignment'=>'center', 'spaceAfter'=>0, 'LineSpacing' =>1.0));
        if ($data->purchaser_name !== '') {

            $section->addText('PROPOSED PURCHASER : ' . $data->purchaser_name,
            array('name' => 'Times New Roman', 'size' => 14,'bold'=>true),
            array('alignment'=>'center'));
        }
        $writer = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007', true);
        // $writer->save($filePath);
        try {
            $writer->save(storage_path($uuid . '.docx'), true);
        } catch (Exception $e) {
        }

        return response()->download(storage_path($uuid . '.docx'));

        // return response()
        //     ->view('rapper_print', compact('data'))
        //     ->header('Content-Type', 'application/docx')
        //     ->header('Content-Disposition', 'attachment;filename="Rapper Print.docx"');
    }

    public function invoice(string $uuid): \Illuminate\Http\Response
    {
        $data = Invoice::where('uuid', '=', $uuid)->first();

        return response(view('invoice.print', compact('data')))->header('Content-Type', 'application/pdf');
    }

    public function purchaseInvoice(string $uuid): \Illuminate\Http\Response
    {
        $data = Invoice::where('uuid', '=', $uuid)
        ->with('payment')
        ->first();

        return response(view('invoice.purchaseprint', compact('data')))->header('Content-Type', 'application/pdf');
    }

    public function nonPaidInvoice(Request $request)
    {
        $invoices = Invoice::with('file.engineer:id,name')
            ->when($request->bank !== "all" || $request->branch !== "all", function ($query) use ($request) {
                $query->whereHas('file', function ($file) use ($request) {
                    if ($request->bank !== 'all') {
                        $file->where('bank_name', '=', $request->bank);
                    }
                    if ($request->branch !== 'all') {
                        $file->where('branch_name', '=', $request->branch);
                    }
                });
            })
            ->whereDoesntHave('payment', function ($query) {
                $query->where('is_paid', '=', 1);
            })
            ->whereBetween('invoice_date', [$request->from, $request->to])
            ->get();

        $start = Carbon::parse($request->from)->format('d-m-Y');
        $end = Carbon::parse($request->to)->format('d-m-Y');
        $header = "Non Paid Invoice from $start to $end";

        return view('reports.non_paid_invoice', compact('invoices', 'header'));
    }
}
