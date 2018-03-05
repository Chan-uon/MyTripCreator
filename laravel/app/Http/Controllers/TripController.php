<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;
use App\Trip;

class TripController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Trip Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling the user's request for
    | removing a flight from a trip. Lastly, it displays the user's scheduled
    | trips.
    */

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show scheduled trips.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = User::find(Auth::id());
        $trips = null;
        if(!$user->flights->isEmpty())
        {
            $trips = $user->flights()->paginate(10);
        }

        return view('trip', ['trips'=> $trips]);
    }

    /**
     * Remove a flight from trips table.
     *
     * @param int
     *
     * @return \Illuminate\Http\Response
     */
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
