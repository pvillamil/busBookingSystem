<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

use App\Models\Seat;

class seatSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

        for($i = 1; $i < 13; ++$i) {

        		Seat::create(array("seatNumber" => $i));

        }
    }
}
