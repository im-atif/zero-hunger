<?php

use Illuminate\Http\Request;

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });


/**
 * Users Route
 */

// Route::resource('users', 'Users\UsersController');
// Route::resource('users', 'Users\UsersController', ['only' => ['index', 'show']]);
Route::resource('users', 'Users\UsersController', ['only' => ['index', 'store']]);
Route::resource('donations', 'DonationController', ['only' => ['index', 'store']]);
Route::resource('requests', 'RequestController', ['only' => ['index', 'store']]);
Route::resource('donors', 'DonorController', ['only' => ['store']]);
Route::resource('recipients', 'RecipientController', ['only' => ['store']]);