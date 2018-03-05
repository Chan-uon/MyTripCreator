<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
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
     * Get the flights that belong to this user.
     *
     * @return object
     */
    public function flights()
    {
        return $this->belongsToMany(Flight::class, 'trips', 'user_id', 'flight_id')
                    ->orderBy('origin', 'asc');
    }
}
