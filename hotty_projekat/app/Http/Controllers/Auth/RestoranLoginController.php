<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Restoran;

class RestoranLoginController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest:restoran');
    }

    public function showLoginForm()
    {
        return view('auth.restoran-login');
    }

    public function login(Request $request)
    {
        $this->validate($request, [
            'email' => ['required', 'email'],
            'password' => ['required', 'min:8'],
        ]);

        if(Auth::guard('restoran')->attempt([
            'email' => $request->email,
            'password' => $request->password], 
            $request->remember))
        {
            $restoran = Auth::guard('restoran')->user();

            return redirect("/restoran/{$restoran->id}");
        }

        return redirect()->back()->withInput($request->only('email', 'remember'));
    }
}
