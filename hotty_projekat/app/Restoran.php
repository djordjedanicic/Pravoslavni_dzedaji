<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Restoran extends Model
{
    public function profil_restorana()
    {
        return $this->hasOne(ProfilRestorana::class);
    }
}
