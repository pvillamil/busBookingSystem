<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Station;

use App\Models\Trip;

use App\Models\Booking;

use App\Models\Seat;

use Auth;


class tripsController extends Controller
{
    //

    public function __construct() {

    	$this->middleware("auth");
    }

    public function index(Request $request) {

    	$trips = Trip::all();

    	return View("allTrips", ["trips" => $trips]);

    }

    public function tripBooking(Trip $trip) {

    	$startStations = Station::where("id", "!=", $trip->end_station_id)->get();

    	$endStation = Station::where("id", "!=", $trip->start_station_id)->latest()->first();

    	return View("tripBooking", ["startStations" => $startStations, "endStation" => $endStation, "trip" => $trip]);

    }

    public function addBooking(Request $request) {

    	$authUser = Auth::user();

    	$request->validate([

    		"start_station_id" => "required",
    		"end_station_id"   => "required",
    		"seat_id"          => "required|digits_between:1,12"
    	], [
    		"start_station_id.required" 		=> "Start Station Must Be Selected",
    		"end_station_id.required"            => "End Station Must Be Selected",
    		"seat_id.required"                   => "seat number is required"
    	]);


    	$booking = $authUser->bookings()->create(["trip_id" => 1, "seat_id" => $request->seat_id, "start_station_id" => $request->start_station_id, "end_station_id" => $request->end_station_id]);

    	if($booking) {

    		return back()->with("status", "Booked Successfully");
    	}

    }

    public function checkAvailableSeats( Trip $trip, Request $request) {

    	// $trip = Trip::findOrFail($request->trip_id);

    	$reservedBookings = Booking::with("seat")
                                    ->where("end_station_id", ">", $request->start_station_id)
                                    ->get()->toArray();

        $maxSeatsCount = Seat::count();

    	$seats = range(1, $maxSeatsCount);

    	$availableSeatNumbers = array();

    	$reservedSeatNumbers = array_map(function($record) {
    		return $record["seat"]["seatNumber"];
    	}, $reservedBookings);

    	
    	foreach ($seats as $seatNumber) {
    		# code...

    		if(!in_array($seatNumber, $reservedSeatNumbers)) {

    			array_push($availableSeatNumbers, $seatNumber);
    		}
    	}

    	echo json_encode(["availableSeats" => $availableSeatNumbers]);
    }

    
}
