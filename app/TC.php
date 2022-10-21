<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TC extends Model
{
    protected $table = 'tc';

    public function pelatihan()
    {
        return $this->hasMany(Pelatihan::class);
    }
}
