<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\apiController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::middleware("auth:api")->group(function() {

Route::get('/', [apiController::class, "index"]);

Route::get("/tripBooking", [apiController::class, "tripBooking"])->name("tripBooking");

Route::get("/checkAvailableSeats", [apiController::class, "checkAvailableSeats"]);

Route::post("/addBooking", [apiController::class, "addBooking"]);
});