<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AuthController extends Controller
{
    public function login()
    {
       return view('admin.Auth.login');

    }
    public function doLogin(Request $request)
    {
        $data = $request->validate([
            'email' => 'reqired|email|max191',
            'password' => 'required|string',
        ]);
        if (!auth()->attempt(['email' => $data['email'], 'password'=> $data['password']]))
            {

                return back();
            }
            else
            {
                return redirect (route('admin.home'));
            }

    }

}
