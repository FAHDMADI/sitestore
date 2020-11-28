<?php

use Illuminate\Database\Seeder;
use App\Models\Cat;
class CatSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Cat::create([
            'name' => 'Programing'
        ]);
        Cat::create([
            'name' => 'Medical'
        ]);
        Cat::create([
            'name' => 'English'
        ]);
        Cat::create([
            'name' => 'Management'
        ]);

    }
}
