<?php

use Illuminate\Support\Facades\Route;

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
    return view('index');
});

Route::get('reg_log', array('as' => 'reg_log', function()
{
   return view('reg_log');
}));
Route::get('index', array('as' => 'index', function()
{
   return view('index');
}));
Route::get('registracijaKorisnika', array('as' => 'registracijaKorisnika', function()
{
   return view('registracijaKorisnika');
}));

Route::get('registracijaRestorana', array('as' => 'registracijaRestorana', function()
{
   return view('registracijaRestorana');
}));


Route::post('/korisnikcontroller', "KorisnikController@formSubmit");
Route::post('/restorancontroller', "RestoranController@formSubmit");


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
