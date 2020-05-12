<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Restoran;
class RestoranController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:restoran');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('restoran');
    }
}
