<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDokumenPelatihanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dokumen_pelatihan', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('dokumen_id');
            $table->unsignedBigInteger('tc_id');
            $table->char('gelombang', 2);
            $table->timestamps();
            $table->foreign('dokumen_id')
                ->references('id')->on('dokumen');
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
        Schema::dropIfExists('dokumen_pelatihan');
    }
}
