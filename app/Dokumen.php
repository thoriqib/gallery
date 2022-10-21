<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dokumen extends Model
{
    protected $table = 'dokumen';
    protected $primaryKey = 'id';
    protected $guarded = [];

    public function dokumenPelatihan()
    {
        return $this->hasOne(DokumenPelatihan::class);
    }
    public function dokumenPendataan()
    {
        return $this->hasOne(DokumenPendataan::class);
    }
    public function kegiatan()
    {
        return $this->belongsTo(kegiatan::class);
    }
}
