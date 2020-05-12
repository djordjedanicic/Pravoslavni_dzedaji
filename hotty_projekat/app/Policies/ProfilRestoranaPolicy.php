<?php

namespace App\Policies;

use App\ProfilRestorana;
use App\User;
use App\Restoran;
use App\UserInterface;
use Illuminate\Auth\Access\HandlesAuthorization;

class ProfilRestoranaPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\User  $user
     * @return mixed
     */

    public function before($user, $ability)
    {
        dd($user);
        if ($user->isRestoran()) {
            return true;
        }
        return false;
    }

    public function viewAny(User $user)
    {
        //
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\User  $user
     * @param  \App\ProfilRestorana  $profilRestorana
     * @return mixed
     */
    public function view(User $user, ProfilRestorana $profilRestorana)
    {
        //
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        //
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\User  $user
     * @param  \App\ProfilRestorana  $profilRestorana
     * @return mixed
     */
    public function update(?User $user, ProfilRestorana $profilRestorana)
    {
        dd($user);
        return optional($user)->id == $profilRestorana->restoran_id;
        /*return true;
        if($user->isRestoran()) 
        {
            return $user->id == $profilRestorana->restoran_id;
        }
        return false;*/
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\ProfilRestorana  $profilRestorana
     * @return mixed
     */
    public function delete(User $user, ProfilRestorana $profilRestorana)
    {
        //
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\User  $user
     * @param  \App\ProfilRestorana  $profilRestorana
     * @return mixed
     */
    public function restore(User $user, ProfilRestorana $profilRestorana)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\ProfilRestorana  $profilRestorana
     * @return mixed
     */
    public function forceDelete(User $user, ProfilRestorana $profilRestorana)
    {
        //
    }
}
