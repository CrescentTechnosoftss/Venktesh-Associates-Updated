<?php

namespace App\Http\Controllers\Masters;

use App\Http\Controllers\Controller;
use App\Models\EmailAccount;
use Crypt;
use Illuminate\Http\Request;
use Str;

class MailMasterController extends Controller
{
    public function index()
    {
        $accounts = EmailAccount::all();
        $pageName = 'Mail Master';

        return view('masters.mail_master', compact('accounts', 'pageName'));
    }

    public function store(Request $request): array
    {
        $id = EmailAccount::create([
            'sender_name' => $request->sender,
            'email_address' => Str::lower($request->email),
            'password' => Crypt::encryptString($request->password),
            'is_default' => false
        ])->id;

        return [
            'id' => $id,
            'message' => 'Email Account Added'
        ];
    }

    public function update(int $id): \Illuminate\Http\Response
    {
        $email = EmailAccount::find($id);

        if ($email->is_default === false) {
            EmailAccount::where('is_default', '=', 1)
                ->update(['is_default' => 0]);
        }

        $email->is_default = 1;
        $email->save();

        return response('Default Email Fixed')->header('Content-Type', 'text/plain');
    }

    public function destroy(int $id): \Illuminate\Http\Response
    {
        EmailAccount::where('id', '=', $id)->delete();

        return response('Email Account Deleted')->header('Content-Type', 'text/plain');
    }
}
