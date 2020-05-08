<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePorucenoJelosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('poruceno_jelo', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('jelo_id');
            $table->unsignedBigInteger('porudzbina_id');
            $table->integer('kvantitet');
            $table->timestamps();

            $table->index('jelo_id');
            $table->index('porudzbina_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('poruceno_jelo');
    }
}
