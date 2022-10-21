<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DokumenPendataan extends Model
{
    protected $table = 'dokumen_pendataan';
    protected $primaryKey = 'id';
    protected $guarded = [];

    public function dokumen()
    {
        return $this->hasOne(Dokumen::class);
    }

    public function kecamatan()
    {
        return $this->belongsTo(Kecamatan::class, 'kecamatan_id', 'id');
    }
}
