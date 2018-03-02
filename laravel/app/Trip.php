<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Trip extends Model
{
    public function users()
    {
        return $this->belongsToMany(User::class);
    }

    public function flights()
    {
        return $this->belongsTo(Flight::class);
    }
}
