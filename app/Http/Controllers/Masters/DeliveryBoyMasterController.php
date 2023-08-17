<?php

namespace App\Http\Controllers\Masters;

use App\Http\Controllers\Controller;
use App\Models\DeliveryBoy;
use Illuminate\Http\Request;
use Str;

class DeliveryBoyMasterController extends Controller
{
    public function index()
    {
        $deliveryBoys = DeliveryBoy::all()->sortBy('name');
        $pageName = 'Delivery Boy Master';

        return view('masters.delivery_boy_master', compact('deliveryBoys', 'pageName'));
    }

    public function store(Request $request): array
    {
        $isExists = DeliveryBoy::where('name', '=', $request->deliveryBoy)->exists();

        if ($isExists) {
            return ['status' => false, 'message' => 'Delivery Boy Name already Exists'];
        }
        $id=DeliveryBoy::create([
            'name' => Str::upper($request->deliveryBoy),
            'contact_no' => $request->contact,
            'email_id' => Str::lower($request->email),
            'address' => $request->address
        ])->id;
        return [
            'status' => true,
            'message' => 'Delivery Boy Details Saved',
            'id' => $id
        ];
    }

    public function update(Request $request, int $id): array
    {
        $isExists = DeliveryBoy::where('name', '=', $request->deliveryBoy)
            ->where('id', '!=', $id)->exists();

        if ($isExists) {
            return ['status' => false, 'message' => 'Delivery Boy Name already Exists'];
        }
        DeliveryBoy::find($id)
            ->update([
                'name' => Str::upper($request->deliveryBoy),
                'contact_no' => $request->contact,
                'email_id' => $request->email,
                'address' => $request->address
            ]);

        return [
            'status' => true,
            'message' => 'Delivery Boy Details Updated'
        ];
    }

    public function destroy(int $id): \Illuminate\Http\Response
    {
        DeliveryBoy::where('id', '=', $id)->delete();

        return response('Delivery Boy Details Deleted')->header('Content-Type', 'text/plain');
    }
}
