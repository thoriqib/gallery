<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Gambar extends Model
{
    protected $table = 'gambar';
    protected $primaryKey = 'id';
    protected $guarded = [];

    public function pelatihan()
    {
        return $this->hasOne(Pelatihan::class);
    }
    public function pendataan()
    {
        return $this->hasOne(Pendataan::class);
    }
    public function kegiatan()
    {
        return $this->belongsTo(kegiatan::class);
    }
}
