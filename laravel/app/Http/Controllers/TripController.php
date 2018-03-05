<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;
use App\Trip;

class TripController extends Controller
{
    public function index()
    {
        $user = User::find(Auth::id());
        $trips = null;
        if(!$user->flights->isEmpty())
        {
            $trips = $user->flights;
        }

        return view('trip', ['trips'=> $trips]);
    }

    public function remove($trip)
    {
        if (isset($_POST['remove']))
        {
            $target = Trip::where('flight_id','=',$trip);
            $target->delete();
            return redirect('/trip');
        }
    }
}
