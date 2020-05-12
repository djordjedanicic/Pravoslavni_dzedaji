<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;
use App\Restoran;
use Auth;
use App\UserInterface;

class ProfilRestoranaController extends Controller
{
    public function index(Restoran $restoran)
    {   
        return view('profil.index', compact('restoran'));
    }

    public function edit(Restoran $restoran)
    {
        //dd($restoran);
        //$this->authorize('update', $restoran->profil_restorana);
        return view('profil.edit', compact('restoran'));
    }   

    public function update(Restoran $restoran)
    {
        $data = request()->validate([
            'telefon' => ['required', 'regex:/^[0-9]+(\.[0-9][0-9]?)?$/'],
            'lokacija' => 'required',
            'opstina' => 'required',
            'tip' => 'required',
            'vreme_od' => 'required',
            'vreme_do' => 'required',
            'opis' => 'required',
            'slika' => '',
        ]);

        if(request('slika'))
        {       
            $imagePath = request('slika')->store('profil', 'public');

            $imageArray = ['slika' => $imagePath];
        }

        Auth::guard('restoran')->user()->profil_restorana->update(array_merge(
            $data,
            $imageArray ?? [],
        ));
        
        return redirect("/restoran/{$restoran->id}");
    }   
}
