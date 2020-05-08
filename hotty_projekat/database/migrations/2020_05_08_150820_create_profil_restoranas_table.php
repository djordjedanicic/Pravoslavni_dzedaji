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
            $table->unsignedBigInteger('restoran_id');
            $table->string('telefon');
            $table->string('lokacija');
            $table->string('tip');
            $table->time('vreme_od');
            $table->time('vreme_do');
            $table->string('slika');
            $table->float('ocena');
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
