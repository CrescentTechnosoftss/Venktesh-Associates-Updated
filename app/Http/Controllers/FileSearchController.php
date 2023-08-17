<?php

namespace App\Http\Controllers;

use App\Models\CustomerFile;
use App\Models\Invoice;
use Illuminate\Http\Request;

class FileSearchController extends Controller
{


    public function index()
    {
        $searchFactors = [
            'Name',
            'Contact No',
            'Purchaser',
            'Address',
            'Bank',
            'Branch',
            'Engineer',
            'Apartment',
            'Referred By'
        ];
        $pageName = 'Search Files';

        return view('search_files', compact('searchFactors', 'pageName'));
    }

    public function searchFile(string $searchBy, string $search)
    {
        if ($search === '') {
            return collect();
        }

        if ($searchBy === 'Engineer') {
            return ['data' => $this->getDatasByEngineer($search)];
        }
        return ['data' => $this->getDatasByColumn($searchBy, $search)];
    }

//    public function sendWhatsapp(Request $request)  {
//     $fileNo = $request->fileNo;
//     $bank = $request->bank;
//     $branch = $request->branch;
//     $custName = $request->custName;
//     $custNum = $request->custNum;
//     $custEngineer = $request->custEngineer;
//     $engNum = $request->engNum;

//     $messageBody = "File No: $fileNo\nBank: $bank\nBranch: $branch\nCustomer Name: $custName\nCustomer Number: $custNum\nCustomer Engineer: $custEngineer";
//     // $contact_no = '7019780945';
    
//     $curl = curl_init();
//     curl_setopt_array($curl, array(
//         CURLOPT_URL => 'https://api.whatsdesk.in/v4/text.php',
//         CURLOPT_RETURNTRANSFER => true,
//         CURLOPT_ENCODING => '',
//         CURLOPT_MAXREDIRS => 10,
//         CURLOPT_TIMEOUT => 0,
//         CURLOPT_FOLLOWLOCATION => true,
//         CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
//         CURLOPT_CUSTOMREQUEST => 'POST',
//         CURLOPT_POSTFIELDS => array('key' => 'cbEMMQdLJqBjBAikPT', 'number' => '91' . $engNum, 'message' => $messageBody, 'caption' => 'this is test caption'),
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


// public function sendWhatsapp(Request $request)  {
//     $fileNo = $request->fileNo;
//     $bank = $request->bank;
//     $branch = $request->branch;
//     $custName = $request->custName;
//     $custNum = $request->custNum;
//     $custEngineer = $request->custEngineer;
//     $engNum = $request->engNum;

//     // $messageBody = "File No: $fileNo\nBank: $bank\nBranch: $branch\nCustomer Name: $custName\nCustomer Number: $custNum\nCustomer Engineer: $custEngineer";
//     $custBody = "Dear Sir/Madam $custName,\n\nWe have been allotted to do the valuation of your property from $bank, $branch. Our engineer $custEngineer ($engNum) will be contacting you at the earliest. Please co-ordinate with our engineer.\n\nFrom N.Venkatesh and Associates\n9035735771";


//     $numbers = '+91' . $engNum . ',+91' . $custNum;
    
//     $username = 'venkatvaluer1';
//     $password = 'venkatvaluer1';

//     $url = 'https://app.messageautosender.com/api/v1/message/create';
//     $url .= '?username=' . urlencode($username);
//     $url .= '&password=' . urlencode($password);
//     $url .= '&receiverMobileNo=' . urlencode($numbers);
//     $url .= '&message=' . urlencode($custBody);

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
//         // CURLOPT_POSTFIELDS => array('key' => '2c247e9e2623dc93dcfb8a3b348b2743b892102790a1a6d3b3', 'number' => $numbers, 'message' => $messageBody, 'caption' => 'this is test caption'),
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


public function sendWhatsapp(Request $request) {
    $fileNo = $request->fileNo;
    $bank = $request->bank;
    $branch = $request->branch;
    $custName = $request->custName;
    $custNum = $request->custNum;
    $custAddr = $request->custAddr;
    $custEngineer = $request->custEngineer;
    $engNum = $request->engNum;
    
    $custBody = "Dear Sir/Madam $custName,\n\nWe have been allotted to do the valuation of your property from $bank, $branch. Our engineer $custEngineer ($engNum) will be contacting you at the earliest. Please co-ordinate with our engineer.\n\nFrom N.Venkatesh and Associates\n9035735771";

    // $engBody = "Dear $custEngineer,\n\nYou have been assigned to perform the valuation of $custName's property from $bank, $branch. Please contact the customer at $custNum and schedule the visit at the earliest.\n\nFrom N.Venkatesh and Associates\n9035735771";

    $engBody = "Dear $custEngineer,\n\nCustomer $custName's  $bank, $branch. Please contact the customer at $custNum and customer address $custAddr schedule the visit at the earliest.\n\nFrom N.Venkatesh and Associates\n9035735771";

    $engNumbers = '+91' . $engNum;
    $custNumbers = '+91' . $custNum;

    $username = 'venkatvaluer1';
    $password = 'venkatvaluer1';

    $baseUrl = 'https://app.messageautosender.com/api/v1/message/create';

    $payload = [
        'username' => $username,
        'password' => $password,
    ];

    // send message to engineer
    $payload['receiverMobileNo'] = $engNumbers;
    $payload['message'] = $engBody;

    $post_data = http_build_query($payload);

    $curl = curl_init();
    curl_setopt_array($curl, array(
        CURLOPT_URL => $baseUrl,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'POST',
        CURLOPT_POSTFIELDS => $post_data,
    ));

    $engResponse = curl_exec($curl);

    // send message to customer
    $payload['receiverMobileNo'] = $custNumbers;
    $payload['message'] = $custBody;

    $post_data = http_build_query($payload);

    curl_setopt($curl, CURLOPT_POSTFIELDS,  $post_data);
    $custResponse = curl_exec($curl);

    curl_close($curl);

    if ($custResponse && $engResponse) {
        echo json_encode(array('status' => true, 'message' => 'Messages sent successfully.'));
    } else {
        echo json_encode(array('status' => false, 'message' => 'Message sending failed.'));
    }
}


    private function getDatasByEngineer(string $search)
    {
        $files = CustomerFile::with(['invoice:id,file_id', 'engineer:id,name,contact_no'])
            ->whereHas('engineer', function ($engineer) use ($search) {
                $engineer->where('name', 'like', '%' . $search . '%');
            })
            ->orderByDesc('id')
            ->get();

        $invoices = Invoice::with('engineer:id,name,contact_no')
            ->whereHas('engineer', function ($engineer) use ($search) {
                $engineer->where('name', 'like', '%' . $search . '%');
            })->where('has_file', '=', 0)
            ->orderByDesc('invoice_file_id')
            ->get();

        return collect()->push(...$this->parseCustomerFiles($files))->merge($this->parseInvoices($invoices));
    }

    private function getDatasByColumn(string $searchBy, string $search)
    {
        $column = $this->getSearchColumn($searchBy);
        $files = CustomerFile::with(['invoice:id,file_id', 'engineer:id,name,contact_no'])
            ->where($column, 'like', '%' . $search . '%')
            ->orderByDesc('id')
            ->get([
                'id',
                'bank_name',
                'branch_name',
                'customer_name',
                'contact_no',
                'purchaser_name',
                'address',
                'referred_by',
                'engineer_id',
                'engnum'
            ]);

        $invoices = Invoice::with('engineer:id,name,contact_no')
            ->where('has_file', '=', 0)
            ->where($column, 'like', '%' . $search . '%')
            ->orderByDesc('invoice_file_id')
            ->get([
                'id',
                'invoice_file_id',
                'bank_name',
                'branch_name',
                'customer_name',
                'contact_no',
                'purchaser_name',
                'address',
                'referred_by',
                'engineer_id'
            ]);

        return collect()->push(...$this->parseCustomerFiles($files))->merge($this->parseInvoices($invoices));
    }

    private function parseCustomerFiles(\Illuminate\Database\Eloquent\Collection $files): \Illuminate\Support\Collection
    {
        return $files->map(function ($map) {
            return [
                'fileNo' => $map->id,
                'invoiceNo' => $map->invoice->id ?? '-',
                'bank' => $map->bank_name . ' / ' . $map->branch_name,
                'customer' => $map->customer_name . ' / ' . $map->contact_no,
                'purchaser' => $map->purchaser_name,
                'address' => $map->address,
                'referredBy' => $map->referred_by,
                'engineer' => $map->engineer->name ?? '',
                'engnum' => $map->engineer->contact_no ?? ''
            ];
        });
    }

    private function parseInvoices(\Illuminate\Database\Eloquent\Collection $invoices): \Illuminate\Support\Collection
    {
        return $invoices->map(function ($map) {
            return [
                'fileNo' => $map->invoice_file_id,
                'invoiceNo' => $map->id,
                'bank' => $map->bank_name . ' / ' . $map->branch_name,
                'customer' => $map->customer_name . ' / ' . $map->contact_no,
                'purchaser' => $map->purchaser_name,
                'address' => $map->address,
                'referredBy' => $map->referred_by,
                'engineer' => $map->engineer->name ?? '',
                'engnum' => $map->engineer->contact_no ?? ''

                // 'engnum' => $map->engnum 

            ];
        });
    }

    private function getSearchColumn(string $key): string
    {
        return [
            'Name' => 'customer_name',
            'Contact No' => 'contact_no',
            'Purchaser' => 'purchaser_name',
            'Address' => 'address',
            'Bank' => 'bank_name',
            'Branch' => 'branch_name',
            'Apartment' => 'apartment',
            'Referred By' => 'referred_by'
        ][$key];
    }
}
