<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Restoran extends Model
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
}
