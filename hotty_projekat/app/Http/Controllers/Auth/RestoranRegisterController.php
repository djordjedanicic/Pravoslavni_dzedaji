<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Restoran;
use Illuminate\Http\Request;
use Illuminate\Auth\Events\Registered;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Auth;

class RestoranRegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/restoran';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest:restoran');
    }

    public function showRegisterForm()
    {
        return view('auth.restoran-register');
    }

    public function register(Request $request)
    {
        $this->validator($request->all())->validate();

        event(new Registered($restoran = $this->create($request->all())));

        $this->guard()->login($restoran);

        return $this->registered($request, $restoran)
            ?: redirect()->intended("/restoran/{$restoran->id}");
    }

    protected function guard()
    {
        return Auth::guard('restoran');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'naziv' => ['required', 'string', 'max:255', 'unique:restorans'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:restorans'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Restoran
     */
    protected function create(array $data)
    {
        return Restoran::create([
            'naziv' => $data['naziv'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
        
    }
}
