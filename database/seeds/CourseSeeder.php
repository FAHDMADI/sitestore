<?php

use Illuminate\Database\Seeder;
use App\Models\Course;
class CourseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=1; $i <= 4; $i++ ){
            for($j=1; $j <= 6; $j++ ){
             Course::create([
            'cat_id' => $i,
            'trainer_id' => rand(1, 5),
            'name' => "course num $j$i",
            'small_desc' =>"this small description of courses.",
            'desc' => "this big data or description of courses this big data or description of courses this big data or description of courses .",
            'price' => rand(1000, 5000),
            'img' => "$i$j.png"
             ]);
             }
        }         
    }

}
