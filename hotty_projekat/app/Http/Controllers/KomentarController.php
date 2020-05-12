<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Komentar;
use App\Restoran;

class KomentarController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

   /* public function store()
    {
        $data = $this->validate([
            'tekst' => ['required', 'string' , 'max:1000'],
        ]);

        //$restoran = Restoran::find($restoran_id);

        Auth::guard('restoran')->user()->komentar()->create([
            'tekst' => $data['tekst'],
        ]);



        return redirect('/restoran/' . Auth::guard('restoran')->user()->id);
    }*/

    public function store() 
    {
        dd($data);
        $data = request()->validate([
            'tekst' => ['required', 'string' , 'max:1000'],
        ]);

        Komentar::create([
            'tekst' => $data('tekst'),
            //'user_id' => Auth::user()->id
        ]);

        return redirect('/restoran/' . Auth::guard('restoran')->user()->id);

    }
}
