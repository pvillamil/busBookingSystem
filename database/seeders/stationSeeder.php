<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

use App\Models\Station;

class stationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $stationNames = array("Cairo", "AlFayyum", "AlMinya", "Asyut");

        foreach ($stationNames as $station) {
        	# code...

        	Station::create(array("stationName" => $station));
        }
    }
}
