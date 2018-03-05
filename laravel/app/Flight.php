<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Flight extends Model
{
    public function users()
    {
       return $this->belongsToMany(User::class, 'trips', 'user_id', 'flight_id');
    }
}
