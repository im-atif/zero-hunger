<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $totalUsers = 25;
        factory(App\User::class, $totalUsers)->create();
        factory(App\Profile::class, $totalUsers)->create();
        factory(App\DonorDetail::class, 12)->create();
        factory(App\RecipientDetail::class, 13)->create();
        factory(App\Donation::class, 120)->create();
        factory(App\Request::class, 80)->create();

        // for ($i = 1; $i <= $totalUsers; $i++) {
        //     \App\Profile::create([
        //         'user_id' => $i
        //     ]);
        // }
    }
}
