<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Airline;
use App\Flight;
use App\Trip;
use Auth;

class HomeController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Home Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for generating a random list of flights
    | and inserting them into their table. It also handles requests
    | for adding a flight to a trip. Lastly, it displays the user's dashboard.
    |
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
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $select_flights = 40;
        $flights = null;
        if (Flight::get()->isEmpty())
        {
            while($select_flights > 0)
            {//randomly create 40 flights and insert it into flights table
                $origin = Airline::inRandomOrder()->first();
                $destination = Airline::inRandomOrder()->first();
                if ($origin->id !== $destination->id)
                {
                    $flight = new Flight;
                    $flight->origin = $origin->location .", ".
                                      $origin->province . " - ".
                                      $origin->airport . " ".
                                      "(". $origin->iata . ")";
                    $flight->destination = $destination->location .", ".
                                           $destination->province . " - ".
                                           $destination->airport . " ".
                                           "(". $destination->iata . ")";
                    $flight->save();
                    $select_flights--;
                }
            }
        }
        else
        {
           $flights = Flight::orderBy('origin','asc')->paginate(10);
        }

        return view('home', ['flights'=>$flights]);
    }

    /**
     * Add a flight to trips table.
     *
     * @param int
     *
     * @return \Illuminate\Http\Response
     */
    public function add($flight)
    {
        $target = Trip::where('flight_id', '=', $flight)
                      ->where('user_id', '=', Auth::id())->get();
        if ($target->isEmpty())
        {
            $trip = new Trip;
            $trip->user_id = Auth::id();
            $trip->flight_id = $flight;
            $trip->save();
            return redirect('/trip');
        }
        else
        {
            return redirect('/trip');
        }
    }
}
