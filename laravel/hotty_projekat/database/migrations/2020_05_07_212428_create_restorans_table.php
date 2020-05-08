<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRestoransTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('restoran', function (Blueprint $table) {
            $table->id();
            $table->string('naziv');
            $table->string('telefon');
            $table->string('lokacija');
            $table->string('tip');
            $table->time('vreme_od');
            $table->time('vreme_do');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('sifra');
            $table->string('slika');
            $table->float('ocena');
            $table->text('opis')->nullable();
            $table->rememberToken();
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
        Schema::dropIfExists('restoran');
    }
}