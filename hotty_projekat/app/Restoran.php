<?php

namespace App;

use Illuminate\Foundation\Auth\User;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use App\UserInterface;
use Laravelista\Comments\Commenter;

class Restoran extends Authenticatable implements UserInterface
{
    use Notifiable, Commenter;

    protected $guard = 'restoran';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'naziv', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    protected static function boot()
    {
        parent::boot();

        static::created(function ($restoran) {
            $restoran->profil_restorana()->create([
                'naziv' => $restoran->naziv,
            ]);

            //Mail::to($user->email)->send(new NewUserWelcomeMail());
        });
    }

    public function jelo() 
    {
        return $this->hasMany(Jelo::class)->orderBy('created_at', 'DESC');
    }

    public function komentar() 
    {
        return $this->hasMany(Komentar::class)->orderBy('created_at', 'DESC');
    }

    public function ocena() 
    {
        return $this->hasMany(Ocena::class);
    }

    public function profil_restorana() 
    {
        return $this->hasOne(ProfilRestorana::class);
    }

    public function isRestoran()
    {
        return true;
    }
}
