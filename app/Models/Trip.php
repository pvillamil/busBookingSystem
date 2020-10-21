<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trip extends Model
{
    use HasFactory;

    protected $fillable = array("start_station_id", "end_station_id");

    protected $with = array("startStation", "endStation");

    public function startStation() {

    	return $this->belongsTo("App\Models\Station", "start_station_id");
    }

    public function endStation() {

    	return $this->belongsTo("App\Models\Station", "end_station_id");

    }
}
