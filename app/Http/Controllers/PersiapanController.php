<?php

namespace App\Http\Controllers;

use App\Dokumen;
use App\Gambar;

class PersiapanController extends Controller
{
    public function index()
    {
        return view('pages.gallery', [
            'title' => 'Persiapan',
            'dir' => "/gambar/persiapan/",
            'gambar' => Gambar::where('kegiatan_id', 1)->paginate(40)
        ]);
    }

    public function showDokumen()
    {
        return view('pages.table', [
            'title' => 'Persiapan',
            'dir' => "/dokumen/persiapan/",
            'dokumen' => Dokumen::where('kegiatan_id', 1)->paginate(10)
        ]);
    }

    public function download($file)
    {
        return response()->download(asset("/dokumen/persiapan/$file"));
    }
}
