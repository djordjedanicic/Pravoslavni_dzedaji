<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PorucenoJelo extends Model
{
    public function porudzbina()
    {
        return $this->belongsTo(Porudzbina::class);
    }

    public function jelo()
    {
        return $this->belongsTo(Jelo::class);
    }
}
