<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKomentarsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('komentar', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('restoran_id');
            $table->unsignedBigInteger('korisnik_id');
            $table->text('tekst');
            $table->timestamps();

            $table->index('restoran_id');
        });

        //Schema::table('komentar', function($table){
        //    $table->foreign('restoran_id')->references('id')->on('restorans')->onDelete('cascade');
        //    $table->foreign('korisnik_id')->references('id')->on('korisnik')->onDelete('cascade');
        //});
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //Schema::dropForeign('restoran_id');
        //Schema::dropForeign('korisnik_id');
        Schema::dropIfExists('komentar');
    }
}
