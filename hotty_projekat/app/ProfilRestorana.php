<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProfilRestorana extends Model
{
    public function jelo() 
    {
        return $this->hasMany(Jelo::class);
    }

    public function komentar() 
    {
        return $this->hasMany(Komentar::class);
    }

    public function ocena() 
    {
        return $this->hasMany(Ocena::class);
    }

    public function restoran()
    {
        return $this->belongsTo(Restoran::class);
    }
}
