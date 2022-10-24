<?php

namespace App\Http\Controllers;

use App\Dokumen;
use App\Gambar;
use App\Kecamatan;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Collection;

class PendataanController extends Controller
{
    public function index()
    {
        return view('pages.gallery', [
            'title' => 'Pendataan',
            'kecamatan_all' => Kecamatan::all(),
            'dir' => "/gambar/pendataan/",
            'gambar' => Gambar::where('kegiatan_id', 3)->paginate(40)
        ]);
    }

    public function showDokumen()
    {
        return view('pages.table', [
            'title' => 'Pendataan',
            'kecamatan_all' => Kecamatan::all(),
            'dir' => "/dokumen/pendataan/",
            'dokumen' => Dokumen::where('kegiatan_id', 3)->paginate(10)
        ]);
    }

    public function showByKecamatan($kecamatan)
    {
        $gambar = Gambar::where('kegiatan_id', 3)->get();
        $result = [];

        foreach ($gambar as $g) {
            if ($g->pendataan->kecamatan->slug == $kecamatan) {
                $result[] = $g;
            }
        };

        $result = $this->paginate($result, 40);
        $result->withPath("/pendataan/$kecamatan");

        return view('pages.gallery', [
            'title' => 'Pendataan',
            'kecamatan_all' => Kecamatan::all(),
            'kecamatan' => Kecamatan::where('slug', $kecamatan)->first(),
            'dir' => "/gambar/pendataan/",
            'gambar' => $result
        ]);
    }

    public function showDokumenByKecamatan($kecamatan)
    {
        $dokumen = Dokumen::where('kegiatan_id', 3)->get();
        $result = [];

        foreach ($dokumen as $d) {
            if ($d->dokumenPendataan->kecamatan->slug == $kecamatan) {
                $result[] = $d;
            }
        };

        $result = $this->paginate($result);
        $result->withPath("/pendataan/dokumen/$kecamatan");

        return view('pages.table', [
            'title' => 'Pendataan',
            'kecamatan_all' => Kecamatan::all(),
            'kecamatan' => Kecamatan::where('slug', $kecamatan)->first(),
            'dir' => "/dokumen/pendataan/",
            'dokumen' => $result
        ]);
    }

    public function paginate($items, $perPage = 10, $page = null, $options = [])
    {
        $page = $page ?: (Paginator::resolveCurrentPage() ?: 1);
        $items = $items instanceof Collection ? $items : Collection::make($items);
        return new LengthAwarePaginator($items->forPage($page, $perPage), $items->count(), $perPage, $page, $options);
    }

    public function download($file)
    {
        return response()->download(asset("/dokumen/pendataan/$file"));
    }
}
