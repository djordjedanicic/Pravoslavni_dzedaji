<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ocena extends Model
{
    public function profil_restorana()
    {
        return $this->belongsTo(ProfilRestorana::class);
    }

    public function korisnik()
    {
        return $this->belongsTo(Korisnik::class);
    }
}
