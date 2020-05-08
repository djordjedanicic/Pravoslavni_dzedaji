<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePorudzbinasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('porudzbina', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('korisnik_id');
            $table->float('cena_bez_pop');
            $table->float('cena_sa_pop');
            $table->string('adresa');
            $table->string('nacin_placanja');
            $table->string('brKartice')->nullable();
            $table->string('status');
            $table->timestamps();

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
        Schema::dropIfExists('porudzbina');
    }
}
