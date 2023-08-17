<?php

namespace App\Http\Controllers\Reports;

use App\Http\Controllers\Controller;
use App\Http\Resources\Reports\NonPaidInvoiceResourceCollection;
use App\Models\BankDetail;
use App\Models\EmailAccount;
use App\Models\Invoice;
use Crypt;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
use App\Libraries\Fpdf\Scripts\McTable;
use Illuminate\Support\Facades\Storage;
use Dompdf\Dompdf;
use Dompdf\Options;
use CURLFile;
use Barryvdh\DomPDF\PDF;




class NonPaidInvoiceController extends Controller
{
    private const MAIL_NOT_EXISTS = 'Email Id Not Exists for the Selected Bank / Branch';
    private const INVALID_MAIL = 'Invalid Email ID. Check Bank Master!!!';
    private const MAIL_ERROR = 'An Error Occured while Sending the Mail';
    private const MAIL_SUCCESS = 'Email Sent to the Bank';
    private const SENDER_MAIL_NOT_EXISTS = 'Email Id Not Exists. Add default mail in Mail Master';
    private const SENDER_INVALID_MAIL = 'Invalid Email ID. Check Mail Master!!!';

    public function index()
    {
        $banks = BankDetail::distinct()->orderBy('bank_name')->pluck('bank_name');
        $engineers = DB::table('engineers')->orderBy('name')->get(['id', 'name']);
        $pageName = 'Non Paid Proforma Report';

        return view('report_viewers.non_paid_invoice', compact('banks', 'engineers', 'pageName'));
    }

    public function getBranches(string $bank): array
    {
        $branches = BankDetail::where('bank_name', '=', $bank)
            ->orderBy('branch_name')
            ->pluck('branch_name');
        return compact('branches');
    }

    private function getNonPaidInvoices(string $from, string $to): \Illuminate\Support\Collection
    {
        return Invoice::query()
            ->with(['file.engineer:id,name', 'engineer:id,name'])
            ->whereDoesntHave('payment', function ($query) {
                $query->where('is_paid', '=', 1);
            })
            ->whereBetween('invoice_date', [$from, $to])
            ->get();
    }

   

    public function show(Request $request): NonPaidInvoiceResourceCollection
    {
        $invoices = $this->getNonPaidInvoices($request->from, $request->to);
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
        NonPaidInvoiceResourceCollection::wrap('invoices');
//   dd($invoices);
        return NonPaidInvoiceResourceCollection::make($invoices);
    }

    // public function sendWhatsapp(Request $request)  {

    //     $bank_details = BankDetail::where('bank_name', '=', $request->bank)
    //     ->where('branch_name', '=', $request->branch)
    //     ->first();

    //     $invoiceDate = $request->invoiceDate;
    //     $invoiceNo = $request->invoiceNo;
    //     $fileNo = $request->fileNo;
    //     $bank = $request->bank;
    //     $branch = $request->branch;
    //     $custName = $request->custName;
    //     $custNum = $request->custNum;
    //     $billAmount = $request->billAmount;
    
    //     $messageBody =   "Invoice Date: " . $invoiceDate . "\n" .
    //                      "Invoice No: " . $invoiceNo . "\n" .
    //                      "File No: " . $fileNo . "\n" .
    //                      "Bank: " . $bank . "\n" .
    //                      "Branch: " . $branch . "\n" .
    //                      "Customer Name: " . $custName . "\n" .
    //                      "Customer Number: " . $custNum . "\n" .
    //                      "Bill Amount: " . $billAmount;
                         

    //     $numbers = '91' . $custNum . ',91' . $bank_details->contact_no;
    //     $apiKey = 'cbEMMQdLJqBjBAikPT';
    //     // dd($numbers);
    //     $curl = curl_init();
    //     curl_setopt_array($curl, array(
    //         CURLOPT_URL => "https://api.whatsdesk.in/v4/multinumbersText.php?message=".urlencode($messageBody)."&key=".$apiKey."&number=".$numbers,
    //         CURLOPT_RETURNTRANSFER => true,
    //         CURLOPT_ENCODING => '',
    //         CURLOPT_MAXREDIRS => 10,
    //         CURLOPT_TIMEOUT => 0,
    //         CURLOPT_FOLLOWLOCATION => true,
    //         CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    //         CURLOPT_CUSTOMREQUEST => 'POST',
    //         // CURLOPT_POSTFIELDS => array('message' => $messageBody,'key' => 'cbEMMQdLJqBjBAikPT', 'number' => $numbers),
    //     ));
        
    //     $response = curl_exec($curl);
    //     curl_close($curl);
    
    //     if ($response) {
    //         // dd($response);
    //         echo json_encode(array('status' => true, 'message' => 'Message sent successfully.'));
    //     } else {
    //         echo json_encode(array('status' => false, 'message' => 'Message sending failed.'));
    //     }
        
    //    }


    //Working

    // public function sendWhatsapp(Request $request)  {

    //     $bank_details = BankDetail::where('bank_name', '=', $request->bank)
    //     ->where('branch_name', '=', $request->branch)
    //     ->first();

    //     $invoiceDate = $request->invoiceDate;
    //     $invoiceNo = $request->invoiceNo;
    //     $fileNo = $request->fileNo;
    //     $bank = $request->bank;
    //     $branch = $request->branch;
    //     $custName = $request->custName;
    //     $custNum = $request->custNum;
    //     $billAmount = $request->billAmount;
    
    //     $messageBody =   "Invoice Date: " . $invoiceDate . "\n" .
    //                      "Invoice No: " .'P'.$invoiceNo . "\n" .
    //                      "File No: " . $fileNo . "\n" .
    //                      "Bank: " . $bank . "\n" .
    //                      "Branch: " . $branch . "\n" .
    //                      "Customer Name: " . $custName . "\n" .
    //                      "Customer Number: " . $custNum . "\n" .
    //                      "Bill Amount: " . $billAmount. "\n\n" .
    //                      "From N.Venkatesh and Associates\n9035735771";
                         

    //     $numbers = '+91' . $custNum . ',+91' . $bank_details->contact_no;
    //     $username = 'venkatvaluer1';
    //     $password = 'venkatvaluer1';

    //          $url = 'https://app.messageautosender.com/api/v1/message/create';
    //          $url .= '?username=' . urlencode($username);
    //          $url .= '&password=' . urlencode($password);
    //          $url .= '&receiverMobileNo=' . urlencode($numbers);
    //          $url .= '&message=' . urlencode($messageBody);

        
    //     $curl = curl_init();
    //     curl_setopt_array($curl, array(
    //         CURLOPT_URL => $url,
    //         CURLOPT_RETURNTRANSFER => true,
    //         CURLOPT_ENCODING => '',
    //         CURLOPT_MAXREDIRS => 10,
    //         CURLOPT_TIMEOUT => 0,
    //         CURLOPT_FOLLOWLOCATION => true,
    //         CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    //         CURLOPT_CUSTOMREQUEST => 'POST',
    //         // CURLOPT_POSTFIELDS => array('message' => $messageBody,'key' => 'cbEMMQdLJqBjBAikPT', 'number' => $numbers),
    //     ));
    //     curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
    //     $response = curl_exec($curl);
    //     curl_close($curl);
    
    //     if ($response) {
    //         // dd($response);
    //         echo json_encode(array('status' => true, 'message' => 'Message sent successfully.'));
    //     } else {
    //         echo json_encode(array('status' => false, 'message' => 'Message sending failed.'));
    //     }
        
    //    }

    //02/05/2023
    // public function sendWhatsapp(Request $request)  {

    //     $bank_details = BankDetail::where('bank_name', '=', $request->bank)
    //     ->where('branch_name', '=', $request->branch)
    //     ->first();

    //     $invoiceDate = $request->invoiceDate;
    //     $invoiceNo = $request->invoiceNo;
    //     $fileNo = $request->fileNo;
    //     $bank = $request->bank;
    //     $branch = $request->branch;
    //     $custName = $request->custName;
    //     $custNum = $request->custNum;
    //     $billAmount = $request->billAmount;

    //     $invoice = Invoice::find($request->invoiceNo);

    //     $view = view('invoice.print', ['data' => $invoice])->render();

    //     $file_name = 'invoice_' . $request->invoiceNo . '.pdf';
    //     $file_path = storage_path('app/public/' . $file_name);
    //     file_put_contents($file_path, $view);
    
    //     $report = storage_path('app/public/' . $file_name );

    //     $newreport = new \CURLFILE($report, 'application/pdf',$file_name);

    //     // dd($newreport);

    //     // $pdf_data = file_get_contents($report);
    //     // $pdf_file = new \CURLFile($report, 'application/pdf', 'Invoice.pdf');

    
    //     $messageBody =   "Invoice Date: " . $invoiceDate . "\n" .
    //                      "Invoice No: " . $invoiceNo . "\n" .
    //                      "File No: " . $fileNo . "\n" .
    //                      "Bank: " . $bank . "\n" .
    //                      "Branch: " . $branch . "\n" .
    //                      "Customer Name: " . $custName . "\n" .
    //                      "Customer Number: " . $custNum . "\n" .
    //                      "Bill Amount: " . $billAmount. "\n\n" .
    //                      "From N.Venkatesh and Associates\n9035735771";
                         

    //     $numbers = '+91' . $custNum . ',+91' . $bank_details->contact_no;
    //     $username = 'venkatvaluer1';
    //     $password = 'venkatvaluer1';

        
    //          $url = 'https://app.messageautosender.com/api/v1/message/create';
    //          $url .= '?username=' . urlencode($username);
    //          $url .= '&password=' . urlencode($password);
    //          $url .= '&receiverMobileNo=' . urlencode($numbers);
    //          $url .= '&message=' . urlencode($messageBody);
        
    //     $curl = curl_init();
    //     curl_setopt_array($curl, array(
    //         CURLOPT_URL => $url,
    //         CURLOPT_RETURNTRANSFER => true,
    //         CURLOPT_ENCODING => '',
    //         CURLOPT_MAXREDIRS => 10,
    //         CURLOPT_TIMEOUT => 0,
    //         CURLOPT_FOLLOWLOCATION => true,
    //         CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    //         CURLOPT_CUSTOMREQUEST => 'POST',
    //         // CURLOPT_POSTFIELDS => array('&filePathUrl=' => new \CURLFILE($report)),
    //         CURLOPT_POSTFIELDS => array('username' => $username,'password' => $password ,'receiverMobileNo' => $numbers,'message' => $messageBody,'ftpFilePathUrl' => $newreport),

    //     ));
        
    //     $response = curl_exec($curl);
    //     curl_close($curl);
    
    //     if ($response) {
    //         dd($response);
    //         echo json_encode(array('status' => true, 'message' => 'Message sent successfully.'));
    //     } else {
    //         echo json_encode(array('status' => false, 'message' => 'Message sending failed.'));
    //     }
        
    //    }

       //working
    public function sendWhatsapp(Request $request)  {

        $bank_details = BankDetail::where('bank_name', '=', $request->bank)
        ->where('branch_name', '=', $request->branch)
        ->first();

        $invoiceDate = $request->invoiceDate;
        $invoiceNo = $request->invoiceNo;
        $fileNo = $request->fileNo;
        $bank = $request->bank;
        $branch = $request->branch;
        $custName = $request->custName;
        $custNum = $request->custNum;
        $billAmount = $request->billAmount;

        $invoice = Invoice::find($request->invoiceNo);

        $view = view('invoice.print', ['data' => $invoice])->render();

        $file_name = 'invoice' . $request->invoiceNo . '.pdf';
        $file_path = storage_path('app/public/' . $file_name);
        file_put_contents($file_path, $view);
    
        // $report = storage_path('app/public/' . $file_name );

        // $newreport = new \CURLFILE($report, 'application/pdf',$file_name);

        // dd($newreport);

        // $pdf_data = file_get_contents($report);
        // $pdf_file = new \CURLFile($report, 'application/pdf', 'Invoice.pdf');

    
        $messageBody = "Hello sir/madam,

        This is a payment reminder from Venkatesh and Associates regarding the following invoice:
        
        Sir/madam, your valuation charges $billAmount is pending in our records, please pay the amount at the earliest if you have already paid the bill please ignore the message and provide us the payment details through whatsapp.
        
        Thank you.
        
        From N.Venkatesh and Associates
        Contact: 9035735771";
                         

        $numbers = '91'. $custNum . ',91'.$bank_details->contact_no;
        
           $number1 = '91'.$custNum;
        //    dd($number1);
        // $number2 = '91' .$bank_details->contact_no;

        // $numbers = $number1 . ',' . $number2;
        
        // $numbers = '91' . $custNum . ', ' . $bank_details->contact_no;

        // Output the comma-separated list of phone numbers
        // dd($numbers);

        $username = 'venkatvaluer1';
        $password = 'venkatvaluer1';

        
        // $path= APPPATH.'Uploads/PatientPDF/'.$id.$this->hosID.'.pdf';
        $path = storage_path('app/public/' . $file_name );
        // dd($path);
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://api.whatsdesk.in/v4/filefromdisk.php',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => array('data' => new \CURLFILE($path), 'key' => 'cbXSCtvVbOGfaBpTtu', 'number' => $numbers, 'caption' => $messageBody),
        ));
        
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
        $response = curl_exec($curl);
        curl_close($curl);
    
        if ($response) {
            // dd($response);
            echo json_encode(array('status' => true, 'message' => 'Message sent successfully.'));
        } else {
            echo json_encode(array('status' => false, 'message' => 'Message sending failed.'));
        }
        
       }

       public function sendWhatsappReferred(Request $request)  {

        $bank_details = BankDetail::where('bank_name', '=', $request->bank)
        ->where('branch_name', '=', $request->branch)
        ->first();

        $invoiceDate = $request->invoiceDate;
        $invoiceNo = $request->invoiceNo;
        $fileNo = $request->fileNo;
        $bank = $request->bank;
        $branch = $request->branch;
        $custName = $request->custName;
        $custNum = $request->custNum;
        // dd($custNum);
    
        $billAmount = $request->billAmount;

        $invoice = Invoice::find($request->invoiceNo);

        $view = view('invoice.print', ['data' => $invoice])->render();

        $file_name = 'invoice' . $request->invoiceNo . '.pdf';
        $file_path = storage_path('app/public/' . $file_name);
        file_put_contents($file_path, $view);
    
        // $report = storage_path('app/public/' . $file_name );

        // $newreport = new \CURLFILE($report, 'application/pdf',$file_name);

        // dd($newreport);

        // $pdf_data = file_get_contents($report);
        // $pdf_file = new \CURLFile($report, 'application/pdf', 'Invoice.pdf');

    
        $messageBody = "Hello sir/madam,

        This is a payment reminder from Venkatesh and Associates regarding the following invoice:
        
        Sir/madam, your valuation charges $billAmount is pending in our records, please pay the amount at the earliest if you have already paid the bill please ignore the message and provide us the payment details through whatsapp.
        
        Thank you.
        
        From N.Venkatesh and Associates
        Contact: 9035735771";
                         

        $numbers = '91'. $custNum;
        
           $number1 = '91'.$custNum;
        //    dd($number1);
        // $number2 = '91' .$bank_details->contact_no;

        // $numbers = $number1 . ',' . $number2;
        
        // $numbers = '91' . $custNum . ', ' . $bank_details->contact_no;

        // Output the comma-separated list of phone numbers
        // dd($numbers);

        $username = 'venkatvaluer1';
        $password = 'venkatvaluer1';

        
        // $path= APPPATH.'Uploads/PatientPDF/'.$id.$this->hosID.'.pdf';
        $path = storage_path('app/public/' . $file_name );
        // dd($path);
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://api.whatsdesk.in/v4/filefromdisk.php',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => array('data' => new \CURLFILE($path), 'key' => 'cbXSCtvVbOGfaBpTtu', 'number' => $numbers, 'caption' => $messageBody),
        ));
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
        $response = curl_exec($curl);
        curl_close($curl);
    
        if ($response) {
            // dd($response);
            echo json_encode(array('status' => true, 'message' => 'Message sent successfully.'));
        } else {
            echo json_encode(array('status' => false, 'message' => 'Message sending failed.'));
        }
        
       }

    public function getBankEmails(): \Illuminate\Support\Collection
    {
        return DB::table('bank_details')
            ->distinct()
            ->get(['bank_name', 'branch_name', 'email_id'])
            ->map(
                fn ($map) => ['bank' => $map->bank_name . ' / ' . $map->branch_name, 'email' => $map->email_id]
            );
    }

    private function validateEmails(?BankDetail $bank_details): array
    {
        if ($bank_details === null) {
            return ['status' => false, 'message' => self::MAIL_NOT_EXISTS];
        }

        if (filter_var($bank_details->email_id, FILTER_VALIDATE_EMAIL) === false) {
            return ['status' => false, 'message' => self::INVALID_MAIL];
        }
        $sender_email = EmailAccount::where('is_default', '=', 1)->first();

        if ($sender_email === null) {
            return ['status' => false, 'message' => self::SENDER_MAIL_NOT_EXISTS];
        }
        if (filter_var($sender_email->email_address, FILTER_VALIDATE_EMAIL) === false) {
            return ['status' => false, 'message' => self::SENDER_INVALID_MAIL];
        }

        return ['status' => true, 'senderMail' => $sender_email->email_address];
    }

    private function getDefaultEmail(): EmailAccount
    {
        return EmailAccount::where('is_default', '=', 1)->first();
    }

    private function getSmtpHost(string $email): string
    {
        if (str_contains($email, 'gmail')) {
            return 'smtp.gmail.com';
        }
        if (str_contains($email, 'yahoo')) {
            return 'smtp.mail.yahoo.com';
        }
        return 'smtp.hostinger.in';
    }

    public function sendMail(Request $request): array
    {
        $bank_details = BankDetail::where('bank_name', '=', $request->bank)
            ->where('branch_name', '=', $request->branch)
            ->first();

        $validated = $this->validateEmails($bank_details);

        if ($validated['status'] === false) {
            return $validated;
        }

        $invoice = Invoice::find($request->invoiceNo);
        $emailAccount = $this->getDefaultEmail();
        $smtpHost = $this->getSmtpHost($emailAccount->email_address);
        try {
            $mail = new PHPMailer();
            $mail->SMTPDebug = SMTP::DEBUG_OFF;
            $mail->isSMTP();
            $mail->Host       = $smtpHost;
            $mail->SMTPAuth   = true;
            $mail->Username   = $emailAccount->email_address;
            $mail->Password   = 'huwtnzofvblgnmyr';
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port       = 587;
            $mail->Subject = 'Invoice Pending';
            $mail->Body = 'Invoice Reminder From N.VENKATESH & ASSOCIATES : 
            If u have already paid this bill, please ignore this msg & provide us the payment details through mail.';
            $mail->setFrom($emailAccount->email_address, $emailAccount->sender_name);
            $mail->addAddress($bank_details->email_id);
            $mail->SMTPOptions = array(
                'ssl' => array(
                    'verify_peer' => false,
                    'verify_peer_name' => false,
                    'allow_self_signed' => true
                )
            );

            $view = view('invoice.print', ['data' => $invoice])->render();
            $mail->addStringAttachment(string: $view, filename: 'Invoice.pdf', type: 'application/pdf');
            $mail->send();
        } catch (Exception) {
            return ['status' => false, 'message' => self::MAIL_ERROR];
        }
        return ['status' => true, 'message' => self::MAIL_SUCCESS];
    }

    public function sendBulkMail(Request $request): array
    {
        $bank_details = BankDetail::where('bank_name', '=', $request->bank)
            ->where('branch_name', '=', $request->branch)
            ->first();

        $validated = $this->validateEmails($bank_details);

        if ($validated['status'] === false) {
            return $validated;
        }

        $emailAccount = $this->getDefaultEmail();
        $smtpHost = $this->getSmtpHost($emailAccount->email_address);

        try {
            $mail = new PHPMailer();
            $mail->SMTPDebug = SMTP::DEBUG_OFF;
            $mail->isSMTP();
            $mail->Host       = $smtpHost;
            $mail->SMTPAuth   = true;
            $mail->Username   = $emailAccount->email_address;
            // $mail->Password   = Crypt::decryptString($emailAccount->password);
            $mail->Password   =  'huwtnzofvblgnmyr';
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port       = 587;
            $mail->Subject = 'Invoice Pending';
            $mail->Body = 'Invoice Reminder From N.VENKATESH & ASSOCIATES';
            $mail->setFrom($emailAccount->email_address, $emailAccount->sender_name);
            $mail->addAddress($bank_details->email_id);
            $mail->SMTPOptions = array(
                'ssl' => array(
                    'verify_peer' => false,
                    'verify_peer_name' => false,
                    'allow_self_signed' => true
                )
            );
            $invoiceNos = $this->getPendingInvoicesForMail(
                $request->bank,
                $request->branch,
                $request->from,
                $request->to,
                $request->engineer
            );

            if ($invoiceNos->count() === 0) {
                return ['status' => false, 'message' => 'No Invoices found'];
            }

            $invoices = Invoice::whereIn('id', $invoiceNos)
                ->get();

            // $fileName = storage_path('temp/mail.pdf');
            foreach ($invoices as $invoice) {
                $view = view('invoice.print', ['data' => $invoice])->render();
                $mail->addStringAttachment(string: $view, filename: 'Invoice.pdf', type: 'application/pdf');

                $status = $mail->send();
                if ($status === false) {
                    return ['status' => false, 'message' => self::MAIL_ERROR];
                }
            }
        } catch (Exception) {
            return ['status' => false, 'message' => self::MAIL_ERROR];
        }
        return ['status' => true, 'message' => self::MAIL_SUCCESS];
    }

    private function getPendingInvoicesForMail(
        string $bank,
        string $branch,
        string $from,
        string $to,
        string $engineer
    ) {
        $invoices = Invoice::with('file:id,bank_name,branch_name')
            ->whereDoesntHave('payment', function ($query) {
                $query->where('is_paid', '=', 1);
            })
            ->whereBetween('invoice_date', [$from, $to])
            ->get(['id', 'file_id', 'bank_name', 'branch_name']);

        if ($bank !== 'all') {
            $invoices = $invoices->filter(
                fn (Invoice $filter): bool =>
                $filter->bank_name === $bank
                    || $filter->file?->bank_name === $bank
            );
        }
        if ($branch !== 'all') {
            $invoices = $invoices->filter(
                fn (Invoice $filter): bool =>
                $filter->branch_name === $branch
                    || $filter->file?->branch_name === $branch
            );
        }

        if ($engineer !== 'all') {
            $engineer_id = (int)$engineer;
            $invoices = $invoices->filter(
                fn (Invoice $filter): bool =>
                $filter->engineer_id === $engineer_id
                    || $filter->file?->engineer_id === $engineer_id
            );
        }
        return $invoices->pluck('id');
    }
}
