<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pendataan extends Model
{
    protected $table = 'pendataan';
    protected $primaryKey = 'id';
    protected $guarded = [];

    public function gambar()
    {
        return $this->hasOne(Gambar::class);
    }

    public function kecamatan()
    {
        return $this->belongsTo(Kecamatan::class, 'kecamatan_id', 'id');
    }
}
