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

Auth::routes();

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/restoran/login', 'Auth\RestoranLoginController@showLoginForm')->name('restoran.login');
Route::post('/restoran/login', 'Auth\RestoranLoginController@login')->name('restoran.login.submit');

Route::get('/restoran/register', 'Auth\RestoranRegisterController@showRegisterForm')->name('restoran.register');
Route::post('/restoran/register', 'Auth\RestoranRegisterController@register')->name('restoran.register.submit');

//Route::get('/restoran', 'RestoranController@index')->name('restoran.dashboard');

//Route::resource('/restoran/{restoran}','KomentarController@store')->name('komentar.store');
Route::post('/restoran/komentar','KomentarController@store')->name('komentar.store');;
//Route::post('/restoran/{restoran}', 'KomentarController@store')->name('komentar.store');

Route::get('/jelo/create', 'JeloController@create');
Route::post('/jelo', 'JeloController@store');

Route::get('/restoran/{restoran}/edit', 'ProfilRestoranaController@edit')->name('restoran.edit');
Route::get('/restoran/{restoran}', 'ProfilRestoranaController@index')->name('restoran.show');
Route::patch('/restoran/{restoran}', 'ProfilRestoranaController@update')->name('restoran.update');






