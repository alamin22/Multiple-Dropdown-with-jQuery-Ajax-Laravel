<?php

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

Route::get('/', function () {
    return view('welcome');
});

route::get('/dropdownPage','MyController@dropdownPage');
route::get('/dropdownPage','MyController@divisionView');
route::get('/districtData','MyController@districtView');
route::get('/thanaData','MyController@thanaView');


