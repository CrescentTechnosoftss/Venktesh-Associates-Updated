<?php

namespace App\Http\Controllers;

use App\Models\User;
use Hash;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function index()
    {
        $users = User::all();
        $pageName = 'User Master';
        return view('masters.user_master', compact('users', 'pageName'));
    }

    public function validateLogin(Request $request)
    {
        $user = User::where('name', '=', $request->username)->first();

        if ($user === null) {
            return back()->with('message', 'User Name doesn\'t exists!!!')->withInput();
        } elseif (Hash::check($request->password, $user->password) === false) {
            return back()->with('message', 'Incorrect Password')->withInput();
        } else {
            $request->session()->put([
                'is_logged_in' => true,
                'userType' => $user->user_type,
                'userName' => $user->name,
                'userId' => $user->id
            ]);
            return redirect('dashboard');
        }
    }

    public function getUsers(): array
    {
        return ['users' => User::get(['id', 'name'])];
    }

    public function store(Request $request): array
    {
        $isExists = User::where('name', '=', $request->userName)->exists();

        if ($isExists) {
            return ['status' => false, 'message' => 'User Name already Exists!!!'];
        }

        User::create([
            'name' => $request->userName,
            'user_type' => $request->userType,
            'password' => Hash::make($request->password)
        ]);

        return ['status' => true, 'message' => 'User Added...'];
    }

    public function show(int $id): array
    {
        $data = User::find($id);

        return [
            'name' => $data->name,
            'userType' => $data->user_type,
        ];
    }

    public function update(Request $request, int $id): array
    {
        $isExists = User::where('id', '!=', $id)
            ->where('name', '=', $request->userName)
            ->exists();

        if ($isExists) {
            return ['status' => false, 'message' => 'User Name already Exists!!!'];
        }
        $update_values = [
            'name' => $request->newName,
            'user_type' => $request->userType
        ];

        if ($request->password !== '') {
            $update_values['password'] = Hash::make($request->password);
        }

        User::find($id)->update($update_values);
        return [
            'status' => true,
            'message' => 'User Details Updated'
        ];
    }

    public function destroy(int $id): \Illuminate\Http\Response
    {
        User::where('id', '=', $id)->delete();

        return response('User Details Deleted')->header('Content-Type', 'text/plain');
    }
}
