<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\facades\DB;
class CourseStudentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('course_student')->insert([
           'course_id' => rand(1,24),
           'student_id' => rand(1,6),
           
        ]);
        DB::table('course_student')->insert([
            'course_id' => rand(1,24),
            'student_id' => rand(1,6),
            
         ]);
         DB::table('course_student')->insert([
            'course_id' => rand(1,24),
            'student_id' => rand(1,6),
            
         ]);
         DB::table('course_student')->insert([
            'course_id' => rand(1,24),
            'student_id' => rand(1,6),
            
         ]);
         DB::table('course_student')->insert([
            'course_id' => rand(1,24),
            'student_id' => rand(1,6),
            
         ]);
         DB::table('course_student')->insert([
            'course_id' => rand(1,24),
            'student_id' => rand(1,6),
            
         ]);
         DB::table('course_student')->insert([
            'course_id' => rand(1,24),
            'student_id' => rand(1,6),
            
         ]);

    }
}
