<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Korisnik extends Model
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'ime', 'email', 'sifra',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'sifra', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    
    public function porudzbina() 
    {
        return $this->hasMany(Porudzbina::class)->orderBy('created_at', 'DESC');
    }

    public function komentar() 
    {
        return $this->hasMany(Komentar::class);
    }

    public function ocena() 
    {
        return $this->hasMany(Porudzbina::class);
    }
}
