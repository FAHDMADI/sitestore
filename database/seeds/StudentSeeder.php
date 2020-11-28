<?php

use Illuminate\Database\Seeder;
use App\Models\Student;


class StudentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        Student::create([
            'name' => 'Fahd Madi',
            'email' => 'info@course.com',
            'spec' => 'Chemical'
        ]);
        Student::create([
            'name' => 'Fahd Talal',
            'email' => 'info@course.com',
            'spec' => 'teacher'
        ]);
        Student::create([
            'name' => 'Fahd Talal',
            'email' => 'info@course.com',
            'spec' => 'teacher'
        ]);
        Student::create([
            'name' => 'jamel Talal',
            'email' => 'info@course.com',
            'spec' => 'student'
        ]);
        Student::create([
            'name' => 'emad Talal',
            'email' => 'info@course.com',
            'spec' => 'lawer'
        ]);
        Student::create([
            'name' => 'Fahd sameh',
            'email' => 'info@course.com',
            'spec' => 'policeman'
        ]);
        
         
    }
}
