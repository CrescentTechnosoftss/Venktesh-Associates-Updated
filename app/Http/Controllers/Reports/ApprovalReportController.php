<?php

namespace App\Http\Controllers\Reports;

use App\Http\Controllers\Controller;
use App\Models\CustomerFile;
use App\Models\Engineer;
use App\Models\Invoice;
use App\Models\Payment;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use PhpParser\Node\Expr\Empty_;

class ApprovalReportController extends Controller
{
    public function index(): \Illuminate\Contracts\View\View
    {
        $cashApprovals = $this->getCashApprovalPending();
        $invoiceApprovals = $this->getInvoiceApprovalPending();
        $pageName = 'Approval Report';
        // $engineers = Engineer::get(['id', 'name'])->sortBy('name');

        return view(
            'report_viewers.approval_pending_report',
            compact('cashApprovals', 'invoiceApprovals', 'pageName', )
        );
    }

    public function validateApprovalAuth(Request $request)
    {
        $user = User::where('name', '=', $request->user)
            ->where('user_type', '=', 'admin')
            ->first();

        if (is_null($user) || Hash::check($request->password, $user->password) === false) {
            return ['status' => false];
        }

        $request->session()->put('approvalAuth', Carbon::now()->format('Y-m-d H:i:s'));
        return ['status' => true];
    }

    public function checkApprovalAuthStatus()
    {
        $sessionValue = session('approvalAuth');
        $approval = $sessionValue !== null && now()->diffInSeconds(Carbon::parse($sessionValue)) < 121;

        if ($approval === false) {
            session()->forget('approvalAuth');
        }

        return ['status' =>  $approval];
    }

    public function clearApprovalAuth()
    {
        session()->destroy('approvalAuth');
    }

    public function getDatasByDate(Request $request)
    {
        // dd($request);
        $invoiceApprovals = $this->getInvoiceApprovalPending();
        $pageName = 'Approval Report';
        $cashApprovals = CustomerFile::doesntHave('invoice')
            ->with(['engineer:id,name', 'deliveryBoy:id,name'])
            ->where('cash_paid', '>', 0)
            ->where('is_approved', '=', 0)
            ->whereBetween('file_date', [$request->fromDate, $request->toDate])
            ->get();
        if (!$cashApprovals ->isEmpty()){
            // dd($cashApprovals);
            return view(
                'report_viewers.approval_pending_report',
                compact('cashApprovals', 'invoiceApprovals', 'pageName')
            );
        } else {
            return response()->json(['success' => 'false',
            'errors'  => 'empty'], 500);
            
        }

    }

    private function getCashApprovalPending(): \Illuminate\Support\Collection
    {
        return CustomerFile::doesntHave('invoice')
            ->with(['engineer:id,name', 'deliveryBoy:id,name'])
            ->where('cash_paid', '>', 0)
            ->where('is_approved', '=', 0)
            ->get();
    }

    private function getInvoiceApprovalPending(): \Illuminate\Support\Collection
    {
        return Invoice::whereHas('payment', function ($query) {
            $query->where('is_paid', '=', 1)
                ->where('is_approved', '=', 0);
        })
            ->with(['file.engineer:id,name', 'payment.receivedBy:id,name', 'engineer:id,name'])
            ->get([
                'id',
                'file_id',
                'has_file',
                'invoice_file_id',
                'customer_name',
                'purchaser_name',
                'bank_name',
                'branch_name',
                'contact_no',
                'engineer_id',
                'referred_by',
                'invoice_date',
                'total_amount',
                'initial_amount'
            ]);
    }

    // public function changeApprovalStatus(Request $request, string $id): array
    // {
    //     if ($this->checkApprovalAuthStatus()['status'] === false) {
    //         return ['status' => false];
    //     }

    //     if ($request->type === 'file') {
    //         CustomerFile::find($id)
    //             ->update(['is_approved' => 1]);
    //     } else {
    //         $payment = Payment::where('invoice_id', '=', $id)->first();
    //         $payment->is_approved = true;
    //         $payment->save();
    //     }
    //     return [
    //         'status' => true,
    //         'message' => 'Payment Approved'
    //     ];
    // }
    
    public function changeApprovalStatus(Request $request): array
    {
        if ($this->checkApprovalAuthStatus()['status'] === false) {
            return ['status' => false];
        }
    
        $ids = $request->input('ids');
        
        $type = $request->input('type');
    
        if ($type === 'file') {
            CustomerFile::whereIn('id', $ids)
                ->update(['is_approved' => 1]);
        } else {
            Payment::whereIn('invoice_id', $ids)
                ->update(['is_approved' => true]);
        }
    
        return [
            'status' => true,
            'message' => 'Payments Approved'
        ];
    }
    

    
    public function getBydateInvoice(Request $req){
        $from= $req->fromDate;
        $to=$req->toDate;
        $invoice= Invoice::whereHas('payment', function ($query) {
            $query->where('is_paid', '=', 1)
                ->where('is_approved', '=', 0);

        })
            ->whereBetween('invoice_date', [$from, $to])
            ->with(['file.engineer:id,name', 'payment.receivedBy:id,name', 'engineer:id,name'])
            ->get([
                'id',
                'file_id',
                'has_file',
                'invoice_file_id',
                'customer_name',
                'purchaser_name',
                'bank_name',
                'branch_name',
                'contact_no',
                'engineer_id',
                'referred_by',
                'invoice_date',
                'total_amount',
                'initial_amount'
            ]);
        if(!$invoice->isEmpty()){
            return $invoice;
        }else{
            return response()->json(['success' => 'false',
            'errors'  => 'empty'], 500);
        }
    }
    public function sendSms(Request $req)

    {
    
        $id=$req->id;
        $getData = CustomerFile::where("id", '=', $id)

            ->first();
        // Account details
        $var1 =$getData->id;
        $var2= $getData->cash_paid;
        $phone= $getData->contact_no;
        $apiKey = urlencode('ZDFkYWU1Mzg4MTMzYzM0NWM0MzMwMzE5MTJjZDcxMWY=');

        // Message details
        $numbers = urlencode($phone);
        $sender = urlencode('246813');
        $message = rawurlencode('N.VENKATESH & ASSOCIATES VALUER. Your File No.'.$var1.'.We have received Rs.'.$var2.' towards the valuation charges. If any discrepancy. Call on 9844011655');

        // Prepare data for POST request
        $data = 'apikey=' . $apiKey . '&numbers=' . $numbers . "&sender=" . $sender . "&message=" . $message;

        // Send the GET request with cURL
        $ch = curl_init('https://api.textlocal.in/send/?' . $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($ch);
        curl_close($ch);
        return $response;
   
    }
}
