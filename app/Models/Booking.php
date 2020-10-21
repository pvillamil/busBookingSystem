<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Booking extends Model
{
    use HasFactory;

    protected $fillable = array("trip_id", "seat_id", "start_station_id", "end_station_id", "user_id");

    public function trip() {

    	return $this->belongsTo("App\Models\Trip", "trip_id");
    }

    public function seat() {

    	return $this->belongsTo("App\Models\Seat", "seat_id");
    }

    public function startStation() {

    	return $this->belongsTo("App\Models\Station", "start_station_id");
    }

    public function endStation() {

    	return $this->belongsTo("App\Models\Station", "end_station_id");
    }

    public function user() {

    	return $this->belongsTo("App\Models\User", "user_id");
    }
}
