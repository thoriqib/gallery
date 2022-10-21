<?php

namespace App\Http\Controllers;

use App\Dokumen;
use App\Gambar;

class PengolahanController extends Controller
{
    public function index()
    {
        return view('pages.gallery', [
            'title' => 'Pengolahan',
            'dir' => "/gambar/pengolahan/",
            'gambar' => Gambar::where('kegiatan_id', 4)->paginate(12)
        ]);
    }

    public function showDokumen()
    {
        return view('pages.table', [
            'title' => 'Pengolahan',
            'dir' => "/dokumen/pengolahan/",
            'dokumen' => Dokumen::where('kegiatan_id', 4)->paginate(12)
        ]);
    }

    public function download($file)
    {
        return response()->download(asset("/dokumen/pengolahan/$file"));
    }
}
