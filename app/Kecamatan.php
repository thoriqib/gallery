<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kecamatan extends Model
{
    protected $table = 'kecamatan';

    public function pendataan()
    {
        return $this->hasMany(Pendataan::class);
    }
}
