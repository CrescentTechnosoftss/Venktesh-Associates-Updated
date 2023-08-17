<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Invoice;
use PhpOffice\PhpWord\Element\TextRun;
use PhpOffice\PhpWord\IOFactory;
use PhpOffice\PhpWord\PhpWord;
use PhpOffice\PhpWord\Shared\Font;
use PhpOffice\PhpWord\Shared\Html;

class InvoicesToWordController extends Controller
{
    public function index(string $uuid)
    {
        $data = Invoice::where('uuid', '=', $uuid)->first();

        $customer_name = $data->customer_name ?? $data->file->customer_name;
        $purchaser = $data->purchaser_name ?? $data->file->purchaser_name;
        $purchaser_name = (($purchaser) !== '') ? ' (PROPOSED PURCHASER ' . $purchaser . ')' : '';

        foreach ($data->descriptions as $index => $description) {
            if ($index > 0) {
                $customer_name = '';
                $purchaser_name = '';
            }
        }
    
        $word = new PhpWord();
        $section = $word->addSection();
        $section->addText('Invoice Bill', ['bold' => true], ['alignment' => 'center']);
        $section->addImage(config('about.logo'), ['width' => 50, 'height' => 50]);
        $section->addText('N. VENKATESH ASSOCIATES', ['bold' => true, 'size' => 20], ['alignment' => 'center']);
        $section->addText('______________________________________________________________________________', ['bold' => true, 'color' => '000000'], ['alignment' => 'center']);

        $section->addText('No. 2985/A, 2nd Stage Rajaji Nagar,', ['bold' => true], ['alignment' => 'center','lineHeight' => 1.2]);
        $section->addText('(Near Kuvempu Metro Station) Bengaluru - 560 021)', ['bold' => true], ['alignment' => 'center','lineHeight' => 1.2]);
        $section->addText('Contact No : 9035735771 / 9035735754', ['bold' => true], ['alignment' => 'center','lineHeight' => 1.2]);
        $section->addText('Email: venkatvaluer@yahoo.com / venkatvaluer@gmail.com', ['bold' => true], ['alignment' => 'center','lineHeight' => 1.2]);
        $section->addText('_______________________________________________________________________________', ['bold' => true, 'color' => '000000'], ['alignment' => 'center']);

        $section->addTextBreak(2);

        $textRun= $section->addTextRun();
        $textRun->addText('To', ['bold' => true], ['alignment' => 'left','lineHeight' => 1.2]);
        $billNo = $data->payment->bill_no ?? 'N/A';
        $textRun->addText('                                                                                                                   ', [], ['alignment' => 'center']);
        $textRun->addText('Invoice No.: ' . $billNo ,['bold' => true],['alignment' => 'right','lineHeight' => 1.2]);
        
        $textRuns= $section->addTextRun();
        $textRuns->addText('THE MANAGER,' , ['bold' => true], ['alignment' => 'left','lineHeight' => 1.2]);
        // $invoce = $data->payment->InvoiceDate ?? 'N/A';
        $invoce = date('d-m-Y', strtotime($data->payment->InvoiceDate) )?? 'N/A';
        $textRuns->addText('                                                                                         ', [], ['alignment' => 'center']);
        $textRuns->addText('Invoice Date: ' .$invoce,['bold' => true],['alignment' => 'right','lineHeight' => 1.2]);

        $textRuna= $section->addTextRun();
        $textRuna->addText($data->bank_name ?? $data->file->bank_name, ['bold' => true], ['alignment' => 'left','lineHeight' => 1.2]);
        $fileid = $data->invoice_file_id ?? $data->file_id;
        $textRuna->addText('                                                                           ', [], ['alignment' => 'center']);
        $textRuna->addText('File No.: ' . $fileid,['bold' => true],['alignment' => 'right','lineHeight' => 1.2]);

        $textRunb= $section->addTextRun();
        $textRunb->addText($data->branch_name ?? $data->file->branch_name, ['bold' => true], ['alignment' => 'left','lineHeight' => 1.2]);
        $textRunb->addText('                                                                                  ', [], ['alignment' => 'center']);
        $textRunb->addText('Referred By: ' . $data->referred_by ?? $data->file->referred_by,['bold' => true],['alignment' => 'right','lineHeight' => 1.2]);
       
        $section->addTextBreak(3);
        $textRune = $section->addTextRun();
        $textRune->addText('Description (Professional Charges)', ['bold' => true] );
        $textRune->addText('                                                                                  ', [], ['alignment' => 'center']);
        $textRune->addText('    Amount',['bold' => true],['alignment' => 'right','lineHeight' => 1.2]);

        $section->addText('_______________________________________________________________________________', ['bold' => true, 'color' => '000000'], ['alignment' => 'center']);
        $section->addText($description . ' ' . $customer_name . $purchaser_name,['bold' => true],['alignment' => 'left','lineHeight' => 1.2]);
        $section->addText($data->payment->amount_paid. '/-',['bold' => true],['alignment' => 'right','lineHeight' => 1.2]);
        $section->addText('GSTIN : '.$data->GstNo,['bold' => true],['alignment' => 'left','lineHeight' => 1.2]);
        $section->addTextBreak(1);
        // $section->addText($data->GstNo,['bold' => true],['alignment' => 'right']);
     if (intval($data->gst_percentage) > 0 && !$data->IGST) {
        // $half_gst = (int)$data->gst_percentage / 2;
        // $half_gst_amount = (float)$data->gst_amount / 2;

        $half_gst = (int)$data->gst_percentage / 2;
         $half_gst_amount = (float)$data->payment->amount_paid * 9 / 100;

        $textRunc= $section->addTextRun();
        $textRunc->addText('CGST @ 9%',['bold' => true],['alignment' => 'left','lineHeight' => 1.2]);
        $textRunc->addText('                                                                                                                                  ', [], ['alignment' => 'center']);
        $textRunc->addText($half_gst_amount. '/-',['bold' => true],['alignment' => 'right','lineHeight' => 1.2]);

        $textRund= $section->addTextRun();
        $textRund->addText('SGST @ 9%',['bold' => true],['alignment' => 'left','lineHeight' => 1.2]);
        $textRund->addText('                                                                                                                                  ', [], ['alignment' => 'center']);
        $textRund->addText($half_gst_amount . '/-',['bold' => true],['alignment' => 'right','lineHeight' => 1.2]);

        $section->addText('____________________________________________________________________________', ['bold' => true, 'color' => '000000'], ['alignment' => 'center']);
        
     }else{

        $half_gst = (int)$data->gst_percentage / 2;
        $half_gst_amount = (float)$data->payment->amount_paid * 9 / 100;
     }

     if ($data->IGST) {
        $section->addText('IGST @ 18%',['bold' => true],['alignment' => 'left','lineHeight' => 1.2]);
        $section->addText($half_gst_amount. '/-',['bold' => true],['alignment' => 'right','lineHeight' => 1.2]);
     }

        $section->addTextBreak(1);

        $section->addText('Grand Total : '.$data->payment->amount_paid + $half_gst_amount. '/-',['bold' => true],['alignment' => 'right','lineHeight' => 1.2]);

        $inWords = strtoupper(getIndianCurrency($data->payment->amount_paid + $half_gst_amount)) . ' ONLY';
        $section->addTextBreak(2);
        $section->addText('Rupees in words '.$inWords,['bold' => true,'underline' => 'single'],['alignment' => 'left','lineHeight' => 1.2]);

        $section->addTextBreak(1);
        // $section->setFontColor('FF0000');

        $section->addText('PAYMENT NOT RECEIVED',['bold' => true,'color' => 'FF0000'],['alignment' => 'left','lineHeight' => 1.2]);

        if ($data->bank !== null) {
            $section->addText('Please pay the amount to the below A/c No.',['bold' => true],['alignment' => 'left','lineHeight' => 1.2]);
            $section->addText($data->bank->bank_name,['bold' => true],['alignment' => 'left','lineHeight' => 1.2]);
            $section->addText($data->bank->branch_name. ' Branch',['bold' => true],['alignment' => 'left','lineHeight' => 1.2]);
            $section->addText('Name : ' . $data->bank->account_name,['bold' => true],['alignment' => 'left','lineHeight' => 1.2]);
            $section->addText($data->bank->account_no,['bold' => true],['alignment' => 'left','lineHeight' => 1.2]);
            $section->addText('IFSC Code : ' . $data->bank->ifsc_code,['bold' => true],['alignment' => 'left','lineHeight' => 1.2]);

        }
        
        $section->addTextBreak(1);
        $section->addText('GSTIN : 29ABPPV0384E3Z4',['bold' => true,'size' => 15],['alignment' => 'left','lineHeight' => 1.2]);

        $section->addText('Signature',['bold' => true,'size' => 12],['alignment' => 'right','lineHeight' => 1.2]);
        $section->addText('(This is computer generated invoice no signature required)',['size' => 10],['alignment' => 'right','lineHeight' => 1.2]);

        $section->addTextBreak(1);

        $section->addText('NOTE 1:  Please Mention File Number at the time of Account Payment.',['bold' => true,'size' => 10],['alignment' => 'left','lineHeight' => 1.2]);

        $section->addText('NOTE 2:  Customer claiming input GST should pay the bill within 31st of',['bold' => true,'size' => 10],['alignment' => 'left','lineHeight' => 1.2]);

         $section->addTextBreak(1);

        // $section->addText('particular month & provide the customer GST No.',['bold' => true,'size' => 10],['alignment' => 'left']);


        // Save the Word document to a file
        
        $filePath = storage_path('temp/demo.docx');
        $objWriter = IOFactory::createWriter($word, 'Word2007');
        $objWriter->save($filePath);
    
        // Read the file contents
        $fileContents = file_get_contents($filePath);
    
        // Set the appropriate response headers for downloading the file
        // $headers = [
        //     'Content-Type' => 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
        //     'Content-Disposition' => 'attachment; filename="Invoice.docx"'
        // ];

        $headers = [
            'Content-Type' => 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
            'Content-Disposition' => 'attachment; filename="InvoiceBill' . $billNo . '.docx"',
        ];
    
        // Return the file response
        return response($fileContents, 200, $headers);
    }
}
