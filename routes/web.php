<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\tripsController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [tripsController::class, "index"]);

Route::get("/tripBooking/{trip}", [tripsController::class, "tripBooking"])->where("trip", '[0-9]+')->name("tripBooking");

Route::get("/checkAvailableSeats/{trip}", [tripsController::class, "checkAvailableSeats"]);

Route::post("/addBooking", [tripsController::class, "addBooking"]);

Auth::routes();
