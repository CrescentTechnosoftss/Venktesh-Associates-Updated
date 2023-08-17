<?php

namespace App\Http\Controllers\Masters;

use Illuminate\Support\Str;
use App\Models\BankDetail;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class BankMasterController extends Controller
{
    public function index()
    {
        $banks = DB::table('bank_details')->orderBy('bank_name')->orderBy('branch_name')->get();

        $pageName = 'Bank Master';

        return view('masters.bank_master', compact('banks', 'pageName'));
    }

    public function store(Request $request): array
    {
        $exists = BankDetail::where('bank_name', '=', $request->bank)
            ->where('branch_name', '=', $request->branch)
            ->exists();

        if ($exists) {
            return [
                'status' => false,
                'message' => 'Bank Details Already Exists'
            ];
        }

        $id = BankDetail::Create(
            [
                'bank_name' => Str::upper($request->bank),
                'branch_name' => Str::upper($request->branch),
                'contact_no' => $request->contact,
                'email_id' => Str::lower($request->email),
                'address' => Str::upper($request->address)
            ]
        )->id;

        return [
            'status' => true,
            'message' => 'Bank Details Saved',
            'id' => $id
        ];
    }

    public function update(Request $request, int $id): array
    {
        $exists = BankDetail::where('bank_name', '=', $request->bank)
            ->where('branch_name', '=', $request->branch)
            ->where('id', '!=', $id)
            ->exists();

        if ($exists) {
            return [
                'status' => false,
                'message' => 'Bank Details already Exists'
            ];
        } else {
            $bank = BankDetail::find($id);
            $bank->bank_name = Str::upper($request->bank);
            $bank->branch_name = Str::upper($request->branch);
            $bank->contact_no = $request->contact;
            $bank->email_id = $request->email;
            $bank->address = Str::upper($request->address);

            $bank->save();

            return [
                'status' => true,
                'message' => 'Bank Detail Updated'
            ];
        }
    }

    public function destroy(int $id): \Illuminate\Http\Response
    {
        BankDetail::where('id', '=', $id)->delete();

        return response('Bank Details Deleted')->header('Content-Type', 'text/plain');
    }
}
