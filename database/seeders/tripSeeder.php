<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

use App\Models\Trip;

class tripSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

    		Trip::create(array("start_station_id" => 1, "end_station_id" => 4));

    }
}
