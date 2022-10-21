<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePelatihanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pelatihan', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('gambar_id');
            $table->unsignedBigInteger('tc_id');
            $table->char('gelombang', 2);
            $table->timestamps();
            $table->foreign('gambar_id')
                ->references('id')->on('gambar');
            $table->foreign('tc_id')
                ->references('id')->on('tc');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pelatihan');
    }
}
