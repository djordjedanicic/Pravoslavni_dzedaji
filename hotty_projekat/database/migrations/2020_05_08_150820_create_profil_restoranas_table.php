<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProfilRestoranasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('profil_restoranas', function (Blueprint $table) {
            $table->id();
            $table->string('naziv');
            $table->unsignedBigInteger('restoran_id');
            $table->string('telefon')->nullable();
            $table->string('lokacija')->nullable();
            $table->string('opstina')->nullable();
            $table->string('tip')->nullable();
            $table->time('vreme_od')->nullable();
            $table->time('vreme_do')->nullable();
            $table->string('slika')->nullable();
            $table->float('ocena')->nullable();
            $table->text('opis')->nullable();
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
        Schema::dropIfExists('profil_restoranas');
    }
}
