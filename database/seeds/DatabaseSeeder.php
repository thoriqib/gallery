<?php

use App\Kecamatan;
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

        Kecamatan::create([
            'id' => 1,
            'nama' => 'Andir',
            'slug' => 'andir'
        ]);

        Kecamatan::create([
            'id' => 2,
            'nama' => 'Astana Anyar',
            'slug' => 'astana_anyar'
        ]);

        Kecamatan::create([
            'id' => 3,
            'nama' => 'Antapani',
            'slug' => 'antapani'
        ]);

        Kecamatan::create([
            'id' => 4,
            'nama' => 'Arcamanik',
            'slug' => 'arcamanik'
        ]);

        Kecamatan::create([
            'id' => 5,
            'nama' => 'Babakan Ciparay',
            'slug' => 'babakan_ciparay'
        ]);

        Kecamatan::create([
            'id' => 6,
            'nama' => 'Bandung Kidul',
            'slug' => 'bandung_kidul'
        ]);

        Kecamatan::create([
            'id' => 7,
            'nama' => 'Bandung Kulon',
            'slug' => 'bandung_kulon'
        ]);

        Kecamatan::create([
            'id' => 8,
            'nama' => 'Bandung Wetan',
            'slug' => 'bandung_wetan'
        ]);

        Kecamatan::create([
            'id' => 9,
            'nama' => 'Batununggal',
            'slug' => 'batununggal'
        ]);

        Kecamatan::create([
            'id' => 10,
            'nama' => 'Bojongloa Kaler',
            'slug' => 'bojongloa_kaler'
        ]);

        Kecamatan::create([
            'id' => 11,
            'nama' => 'Bojongloa Kidul',
            'slug' => 'bojongloa_kidul'
        ]);

        Kecamatan::create([
            'id' => 12,
            'nama' => 'Buahbatu',
            'slug' => 'buahbatu'
        ]);

        Kecamatan::create([
            'id' => 13,
            'nama' => 'Cibeunying Kaler',
            'slug' => 'cibeunying_kaler'
        ]);

        Kecamatan::create([
            'id' => 14,
            'nama' => 'Cibeunying Kidul',
            'slug' => 'cibeunying_kidul'
        ]);

        Kecamatan::create([
            'id' => 15,
            'nama' => 'Cibiru',
            'slug' => 'cibiru'
        ]);

        Kecamatan::create([
            'id' => 16,
            'nama' => 'Cicendo',
            'slug' => 'cicendo'
        ]);

        Kecamatan::create([
            'id' => 17,
            'nama' => 'Cidadap',
            'slug' => 'cidadap'
        ]);

        Kecamatan::create([
            'id' => 18,
            'nama' => 'Cinambo',
            'slug' => 'cinambo'
        ]);

        Kecamatan::create([
            'id' => 19,
            'nama' => 'Coblong',
            'slug' => 'coblong'
        ]);

        Kecamatan::create([
            'id' => 20,
            'nama' => 'Gedebage',
            'slug' => 'gedebage'
        ]);

        Kecamatan::create([
            'id' => 21,
            'nama' => 'Kiaracondong',
            'slug' => 'kiaracondong'
        ]);

        Kecamatan::create([
            'id' => 22,
            'nama' => 'Lengkong',
            'slug' => 'lengkong'
        ]);

        Kecamatan::create([
            'id' => 23,
            'nama' => 'Mandalajati',
            'slug' => 'mandalajati'
        ]);

        Kecamatan::create([
            'id' => 24,
            'nama' => 'Panyileukan',
            'slug' => 'panyileukan'
        ]);

        Kecamatan::create([
            'id' => 25,
            'nama' => 'Rancasari',
            'slug' => 'rancasari'
        ]);

        Kecamatan::create([
            'id' => 26,
            'nama' => 'Regol',
            'slug' => 'regol'
        ]);

        Kecamatan::create([
            'id' => 27,
            'nama' => 'Sukajadi',
            'slug' => 'sukajadi'
        ]);

        Kecamatan::create([
            'id' => 28,
            'nama' => 'Sukasari',
            'slug' => 'sukasari'
        ]);

        Kecamatan::create([
            'id' => 29,
            'nama' => 'Sumur Bandung',
            'slug' => 'sumur_bandung'
        ]);

        Kecamatan::create([
            'id' => 30,
            'nama' => 'Ujung Berung',
            'slug' => 'ujung_berung'
        ]);
    }
}
