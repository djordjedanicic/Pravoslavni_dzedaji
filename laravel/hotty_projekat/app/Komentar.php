<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Komentar extends Model
{
    public function restoran()
    {
        return $this->belongsTo(Restoran::class);
    }

    public function korisnik()
    {
        return $this->belongsTo(Korisnik::class);
    }
}

