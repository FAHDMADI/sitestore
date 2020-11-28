<?php
use view\admin;
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
Route::group(['middleware'=>['web']], function(){
Route::get('/555', function () {
    return view('welcome');
});

Route::get('/', 'Front\HomepageController@index')->name('front.homepage');

Route::get('/cat/{id}', 'Front\CourseController@cat')->name('front.cat');
Route::get('/cat/{id}/course/{c_id}', 'Front\CourseController@show')->name('front.show');

///********************* Admin Area******** */
Route::get('/dashboard', 'Admin\HomeController@index')->name('Admin.home');
Route::get('/dashboard/login', 'Admin\AuthController@login')->name('Admin.login');
Route::post('/dashboard/do-login', 'Admin\AuthController@doLogin')->name('Admin.doLogin');
});






