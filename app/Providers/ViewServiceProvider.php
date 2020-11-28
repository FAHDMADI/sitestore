<?php

namespace App\Providers;
use App\Models\Cat;

use Illuminate\Support\ServiceProvider;

class ViewServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        view()->composer('front.inc.header', function($view){

          $view->with('cats', Cat::select('id', 'name')->get());  

        });
    }
}
