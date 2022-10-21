<?php

use App\Kegiatan;
use App\TC;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        TC::create([
            'nama' => 'Hotel Belviu',
            'slug' => 'belviu'
        ]);
        TC::create([
            'nama' => 'Hotel Grand Asrilia',
            'slug' => 'asrilia'
        ]);
        TC::create([
            'nama' => 'Hotel Grand Aquila',
            'slug' => 'aquila'
        ]);
        TC::create([
            'nama' => 'Hotel Savoy Homann',
            'slug' => 'savoy'
        ]);

        Kegiatan::create([
            'nama' => 'Persiapan',
            'slug' => 'persiapan'
        ]);
        Kegiatan::create([
            'nama' => 'Pelatihan',
            'slug' => 'pelatihan'
        ]);
        Kegiatan::create([
            'nama' => 'Pendataan Lapangan',
            'slug' => 'pendataan'
        ]);
        Kegiatan::create([
            'nama' => 'Pengolahan',
            'slug' => 'pengolahan'
        ]);
    }
}
