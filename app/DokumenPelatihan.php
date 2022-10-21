<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DokumenPelatihan extends Model
{
    protected $table = 'dokumen_pelatihan';
    protected $primaryKey = 'id';
    protected $guarded = [];

    public function tc()
    {
        return $this->belongsTo(TC::class, 'tc_id');
    }

    public function dokumen()
    {
        return $this->hasOne(Dokumen::class);
    }
}
