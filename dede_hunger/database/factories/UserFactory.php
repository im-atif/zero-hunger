<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use Faker\Generator as Faker;
use Illuminate\Support\Str;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(App\User::class, function (Faker $faker) {
    return [
        'first_name' => $faker->firstName,
        'last_name' => $faker->lastName,
        'email' => $faker->unique()->safeEmail,
        'email_verified_at' => now(),
        'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
        'remember_token' => Str::random(10),
    ];
});

$factory->define(App\Profile::class, function(Faker $faker, $i) {
    return [
        'user_id' => rand(1, 25)
    ];
});

$factory->define(App\DonorDetail::class, function(Faker $faker, $i) {
    $donations = ['Weekly', 'Monthly', 'Random'];

    return [
        'user_id' => rand(1, 25),
        'subtype_id' => rand(1, 4),
        'name' => $faker->sentence(2),
        'location' => $faker->sentence(2),
        'donation' => rand(0, 2)
    ];
});

$factory->define(App\RecipientDetail::class, function(Faker $faker, $i) {
    $donations = ['Weekly', 'Monthly', 'Random'];

    return [
        'user_id' => rand(1, 25),
        'subtype_id' => rand(5, 8),
        'name' => $faker->sentence(2),
        'location' => $faker->sentence(2),
        'persons' => rand(1, 25)
    ];
});

$factory->define(App\Donation::class, function(Faker $faker, $i) {
    return [
        'user_id' => rand(1, 25),
        'persons' => rand(1, 25),
        'title' => $faker->sentence(3),
        'desc' => $faker->sentence(15)
    ];
});

$factory->define(App\Request::class, function(Faker $faker, $i) {
    return [
        'user_id' => rand(1, 25),
        'persons' => rand(1, 25),
        'title' => $faker->sentence(3),
        'desc' => $faker->sentence(15)
    ];
});