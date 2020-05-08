<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJelosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jelo', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('restoran_id');
            $table->string('naziv');
            $table->float('cena');
            $table->text('sastojci');
            $table->string('vrsta');
            $table->integer('gramaza');
            $table->string('slika');
            $table->timestamps();

            $table->index('restoran_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jelo');
    }
}
