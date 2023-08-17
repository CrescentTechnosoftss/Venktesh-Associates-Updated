<?php

namespace App\Http\Controllers\Masters;

use Str;
use App\Models\Bank;
use App\Models\Branch;
use App\Models\Engineer;

use App\Models\DeliveryBoy;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DataMasterController extends Controller
{
    public function index()
    {
        $banks = Bank::pluck('bank_name');
        $branches = Branch::pluck('branch_name');
        $deliveryBoys = DeliveryBoy::pluck('name');
        $pageName = 'Data Master';

        return view('masters.data_master', compact('banks', 'branches', 'deliveryBoys', 'pageName'));
    }

    public function addBankName(Request $request): \Illuminate\Http\Response
    {
        $bankName = $request->bank;
        Bank::create(['bank_name' => Str::upper($bankName)]);

        return response('Bank Name Added')->header('Content-Type', 'text/plain');
    }

    public function removeBankName(string $bankName): \Illuminate\Http\Response
    {
        Bank::where('bank_name', '=', rawurldecode($bankName))->delete();

        return response('Bank Name Removed')->header('Content-Type', 'text/plain');
    }

    public function addBranchName(Request $request): \Illuminate\Http\Response
    {
        $branchName = $request->branch;
        Branch::create(['branch_name' => Str::upper($branchName)]);

        return response('Branch Name Added')->header('Content-Type', 'text/plain');
    }

    public function removeBranchName(string $branchName): \Illuminate\Http\Response
    {
        Branch::where('branch_name', '=', rawurldecode($branchName))->delete();

        return response('Branch Name Removed')->header('Content-Type', 'text/plain');
    }

    public function addDeliveryBoy(Request $request): \Illuminate\Http\Response
    {
        $name = $request->deliveryBoy;

        DeliveryBoy::create(['name' => Str::upper($name)]);

        return response('Delivery Boy Name Added')->header('Content-Type', 'text/plain');
    }

    public function removeDeliveryBoy(string $name): \Illuminate\Http\Response
    {
        DeliveryBoy::where('name', '=', rawurldecode($name))->delete();

        return response('Delivery Boy Name Removed')->header('Content-Type', 'text/plain');
    }
}
