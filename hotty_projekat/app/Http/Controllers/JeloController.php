<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;
use Illuminate\Http\UploadedFile;
use App\Jelo;
use App\Restoran;
use Auth;

class JeloController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:restoran');
    }

    public function create()
    {
        return view('jelo.create');
    }

    public function store()
    {
        $data = request()->validate([
            'naziv' => ['required', 'string', 'max:255'],
            'cena' => ['required', 'regex:/^[0-9]+(\.[0-9][0-9]?)?$/'],
            'vrsta' => ['required', 'string', 'max:255'],
            'sastojci' => ['required', 'string' , 'max:1000'],
            'gramaza' => ['required', 'integer'],
            'slika' => ['required', 'image'],
        ]);

        $imagePath = request('slika')->store('jela', 'public');

        //$image = Image::make(public_path("storage/{$imagePath}"))->fit(200, 150);
        //$image->save();

        Auth::guard('restoran')->user()->jelo()->create([
            'naziv' => $data['naziv'],
            'cena' => $data['cena'],
            'vrsta' => $data['vrsta'],
            'sastojci' => $data['sastojci'],
            'gramaza' => $data['gramaza'],
            'slika' =>  $imagePath,
        ]);

        return redirect('/restoran/' . Auth::guard('restoran')->user()->id);
    }
}
