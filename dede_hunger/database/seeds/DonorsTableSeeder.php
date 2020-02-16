<?php

use Illuminate\Database\Seeder;

class DonorsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $totalUsers = 18;
        
        for ($i = 1; $i <= $totalUsers; $i++) {
            \App\Profile::create([
                'user_id' => $i
            ]);
        }
    }
}
