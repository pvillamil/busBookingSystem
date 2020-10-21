<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Station;

use App\Models\Trip;

use App\Models\Booking;

use Auth;

class apiController extends Controller
{
    //

    public function index(Request $request) {

		$trips = Trip::all();

    	return ["trips" => $trips];  	
    }

    public function tripBooking(Request $request) {

    	$trip = Trip::findOrFail($request->trip_id);

    	$startStations = Station::where("id", "!=", $trip->end_station_id)->get();

    	$endStation = Station::where("id", "!=", $trip->start_station_id)->latest()->first();

    	return  ["startStations" => $startStations, "endStation" => $endStation];

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


    	$booking = $authUser->bookings()->create(["trip_id" => $request->trip_id, "seat_id" => $request->seat_id, "start_station_id" => $request->start_station_id, "end_station_id" => $request->end_station_id]);

    	if($booking) {

    		return ["status" => "Booked Successfully"];
    	}

    }

    public function checkAvailableSeats(Request $request) {

    	   	$trip = Trip::findOrFail($request->trip_id);

    	$reservedBookings = Booking::with("seat")->orWhere([
    		["end_station_id", ">", $request->start_station_id]
    		// ["end_station_id", "=", $trip->end_station_id]
    	])->get()->toArray();

    	$seats = range(1, 12);

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

    	return ["availableSeats" => $availableSeatNumbers];

     }
}
