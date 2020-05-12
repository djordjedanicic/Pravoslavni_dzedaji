<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jelo extends Model
{
    protected $guarded = [];

    public function restoran()
    {
        return $this->belongsTo(Restoran::class);
    }

    public function poruceno_jelo()
    {
        return $this->belongsToMany(PorucenoJelo::class);
    }
}
