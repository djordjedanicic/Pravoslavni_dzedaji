<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jelo extends Model
{
    public function restoran()
    {
        return $this->belongsTo(Restoran::class);
    }

    public function poruceno_jelo()
    {
        return $this->hasMany(PorucenoJelo::class);
    }
}
