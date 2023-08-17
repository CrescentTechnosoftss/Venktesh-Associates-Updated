<?php

namespace App\Http\Controllers\Masters;

use App\Http\Controllers\Controller;
use App\Models\Engineer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Str;

class EngineerMasterController extends Controller
{
    public function index()
    {
        $engineers = DB::table('engineers')->get()->sortBy('name');
        $pageName = 'Engineer Master';

        return view('masters.engineer_master', compact('engineers', 'pageName'));
    }

    public function store(Request $request): array
    {
        $isExists = Engineer::where('name', '=', Str::upper($request->engineer))->exists();

        if ($isExists) {
            return ['status' => false, 'message' => 'Engineer Name already Exists'];
        }
        Engineer::create([
            'name' => Str::upper($request->engineer),
            'contact_no' => $request->contact,
            'email_id' => Str::lower($request->email),
            'address' => $request->address
        ]);
        return [
            'status' => true,
            'message' => 'Engineer Details Saved',
            'id' => Engineer::max('id')
        ];
    }

    public function update(Request $request, int $id): array
    {
        $isExists = Engineer::where('name', '=', Str::upper($request->engineer))
            ->where('id', '!=', $id)->exists();

        if ($isExists) {
            return ['status' => false, 'message' => 'Engineer Name already Exists'];
        }
        Engineer::find($id)
            ->update([
                'name' => Str::upper($request->engineer),
                'contact_no' => $request->contact,
                'email_id' => $request->email,
                'address' => $request->address
            ]);

        return [
            'status' => true,
            'message' => 'Engineer Details Updated'
        ];
    }

    public function destroy(int $id): \Illuminate\Http\Response
    {
        Engineer::where('id', '=', $id)->delete();

        return response('Engineer Details Deleted')->header('Content-Type', 'text/plain');
    }
}
