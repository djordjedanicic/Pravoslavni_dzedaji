<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOcenasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ocena', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('restoran_id');
            $table->unsignedBigInteger('korisnik_id');
            $table->integer('vrednost');
            $table->timestamps();

            $table->index('restoran_id');
            $table->index('korisnik_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ocena');
    }
}
