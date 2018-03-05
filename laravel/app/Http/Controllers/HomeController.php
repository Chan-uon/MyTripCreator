<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Airline;
use App\Flight;
use App\Trip;
use Auth;

class HomeController extends Controller
{
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
        $select_flights = 20;
        $flights = null;
        if (Flight::get()->isEmpty())
        {
            while($select_flights > 0){
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
           $flights = Flight::all();
        }

        return view('home', ['flights'=>$flights]);
    }

    public function add($flight)
    {
        $trip = new Trip;
        $trip->user_id = Auth::id();
        $trip->flight_id = $flight;
        $trip->save();
        return redirect('/home');
    }
}
