<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::post('/auth' , 'Api\AuthController@login');

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::prefix('admin')->middleware('auth:api')->group(function () {
	Route::get('/' , 'Api\AdminController@index');

	Route::post('/tickets' , 'Api\AdminController@addTicket');
	Route::delete('/tickets/{id}' , 'Api\AdminController@deleteTicket');
});

Route::prefix('user')->middleware('auth:api')->group(function () {
	Route::get('/' , 'Api\UserController@index');
	Route::patch('/tickets/{id}' , 'Api\UserController@updateTicket');
});