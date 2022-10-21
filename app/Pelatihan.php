<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pelatihan extends Model
{
    protected $table = 'pelatihan';
    protected $primaryKey = 'id';
    protected $guarded = [];

    public function tc()
    {
        return $this->belongsTo(TC::class, 'tc_id');
    }

    public function gambar()
    {
        return $this->hasOne(Gambar::class);
    }
}
