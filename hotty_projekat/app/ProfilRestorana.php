<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laravelista\Comments\Commentable;

class ProfilRestorana extends Model
{
    use Commentable;

    protected $guarded = [];

    public function profileImage()
    {
        $imagePath = $this->slika ? $this->slika : 'profil/hBv8oUZym0F56eZfTSjBnfvwLYIqX60W6zFl5xfd.png';
        return '/storage/' . $imagePath;
    }
    
    public function restoran()
    {
        return $this->belongsTo(Restoran::class);
    }
}
