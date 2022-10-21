<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePendataanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pendataan', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('gambar_id');
            $table->unsignedBigInteger('kecamatan_id');
            $table->timestamps();
            $table->foreign('gambar_id')
                ->references('id')->on('gambar');
            $table->foreign('kecamatan_id')
                ->references('id')->on('kecamatan');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pendataan');
    }
}
