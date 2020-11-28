<?php

use Illuminate\Database\Seeder;
use App\Models\Trainer;

class TrainerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Trainer::create([
            'name' => 'Fahd Madi',
            'spec' => 'Chemical',
            'img'  => '1.jpg'
        ]);
        Trainer::create([
            'name' => 'Ahmad Salem',
            'spec' => 'PE',
            'img'  => '2.jpg'
        ]);
        Trainer::create([
            'name' => 'Ahmad Malek',
            'spec' => 'Doctor',
            'img'  => '3.jpg'
        ]);
        Trainer::create([
            'name' => 'Rashed Jamal',
            'spec' => 'Chemist',
            'img'  => '4.jpg'
        ]);
        Trainer::create([
            'name' => 'Ahmad Malek',
            'spec' => 'Web Developer',
            'img'  => '5.jpg'
        ]);
    }
}
