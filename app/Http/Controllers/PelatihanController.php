<?php

namespace App\Http\Controllers;

use App\Dokumen;
use App\Gambar;
use App\TC;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Collection;

class PelatihanController extends Controller
{
    public function index()
    {
        return view('pages.gallery', [
            'title' => 'Pelatihan',
            'dir' => "/gambar/pelatihan/",
            'gambar' => Gambar::where('kegiatan_id', 2)->paginate(12),
            'tc' => TC::all()
        ]);
    }

    public function showDokumen()
    {
        return view('pages.table', [
            'title' => 'Pelatihan',
            'dir' => "/dokumen/pelatihan/",
            'dokumen' => Dokumen::where('kegiatan_id', 2)->paginate(12),
            'tc' => TC::all()
        ]);
    }

    public function showByTC($hotel, $gelombang)
    {
        $gambar = Gambar::where('kegiatan_id', 2)->get();
        $result = [];

        foreach ($gambar as $g) {
            if ($g->pelatihan->tc->slug == $hotel && $g->pelatihan->gelombang == $gelombang) {
                $result[] = $g;
            }
        };

        $result = $this->paginate($result);
        $result->withPath("/pelatihan/$hotel/$gelombang");

        switch ($hotel) {
            case 'belviu':
                $hotel = 'Hotel Belviu';
                break;
            case 'aquila':
                $hotel = 'Hotel Grand Aquila';
                break;
            case 'asrilia':
                $hotel = 'Hotel Grand Asrilia';
                break;
            case 'savoy':
                $hotel = 'Hotel Savoy Homann';
                break;
            default:
                # code...
                break;
        }

        return view('pages.gallery', [
            'title' => 'Pelatihan',
            'hotel' => $hotel,
            'gelombang' => $gelombang,
            'dir' => "/gambar/pelatihan/",
            'tc' => TC::all(),
            'gambar' => $result
        ]);
    }

    public function showDokumenByTC($hotel, $gelombang)
    {
        $dokumen = Dokumen::where('kegiatan_id', 2)->get();
        $result = [];

        foreach ($dokumen as $d) {
            if ($d->dokumenPelatihan->tc->slug == $hotel && $d->dokumenPelatihan->gelombang == $gelombang) {
                $result[] = $d;
            }
        };

        $result = $this->paginate($result);
        $result->withPath("/pelatihan/dokumen/$hotel/$gelombang");

        switch ($hotel) {
            case 'belviu':
                $hotel = 'Hotel Belviu';
                break;
            case 'aquila':
                $hotel = 'Hotel Grand Aquila';
                break;
            case 'asrilia':
                $hotel = 'Hotel Grand Asrilia';
                break;
            case 'savoy':
                $hotel = 'Hotel Savoy Homann';
                break;
            default:
                # code...
                break;
        }

        return view('pages.table', [
            'title' => 'Pelatihan',
            'hotel' => $hotel,
            'gelombang' => $gelombang,
            'dir' => "/dokumen/pelatihan/",
            'tc' => TC::all(),
            'dokumen' => $result
        ]);
    }

    public function paginate($items, $perPage = 12, $page = null, $options = [])
    {
        $page = $page ?: (Paginator::resolveCurrentPage() ?: 1);
        $items = $items instanceof Collection ? $items : Collection::make($items);
        return new LengthAwarePaginator($items->forPage($page, $perPage), $items->count(), $perPage, $page, $options);
    }

    public function download($file)
    {
        return response()->download(asset("/dokumen/pelatihan/$file"));
    }
}
