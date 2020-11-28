<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('cat_id');
            $table->foreign('cat_id')->references('id')->on('cats');
            $table->unsignedInteger('trainer_id');
            $table->foreign('trainer_id')->references('id')->on('trainers');
            $table->string('name');
            $table->string('small_desc');
            $table->string('desc');
            $table->integer('price');
            $table->string('img');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('courses');
    }
}
