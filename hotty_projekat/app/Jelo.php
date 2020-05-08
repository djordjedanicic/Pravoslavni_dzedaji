<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jelo extends Model
{
    public function profil_restorana()
    {
        return $this->belongsTo(ProfilRestorana::class);
    }

    public function poruceno_jelo()
    {
        return $this->hasMany(PorucenoJelo::class);
    }
}
