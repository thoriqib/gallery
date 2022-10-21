<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kegiatan extends Model
{
    protected $table = 'kegiatan';

    public function gambar()
    {
        return $this->hasMany(Gambar::class);
    }
}
