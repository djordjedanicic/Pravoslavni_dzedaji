<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Porudzbina extends Model
{
    public function korisnik()
    {
        return $this->belongsTo(Korisnik::class);
    }

    public function poruceno_jelo() 
    {
        return $this->hasMany(PorucenoJelo::class);
    }
}
