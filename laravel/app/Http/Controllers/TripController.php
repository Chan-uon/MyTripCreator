<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;
use App\Trip;
class TripController extends Controller
{
    public function  index()
    {
        $user = User::find(Auth::id());
        $trips = $user->flights;

        return view('trip', ['trips'=> $trips]);
    }
}
