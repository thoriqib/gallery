<?php

namespace App\Http\Controllers;

use App\Dokumen;
use App\DokumenPelatihan;
use App\DokumenPendataan;
use App\Gambar;
use App\Kecamatan;
use App\Kegiatan;
use App\Pelatihan;
use App\Pendataan;
use App\TC;
use Illuminate\Http\Request;

class UploadController extends Controller
{
    public function uploadGambar()
    {
        return view('pages.upload', [
            'title' => 'Upload Gambar',
            'tc' => TC::all(),
            'kecamatan' => Kecamatan::all(),
            'kegiatan' => Kegiatan::all()
        ]);
    }
    public function uploadDokumen()
    {
        return view('pages.upload-dokumen', [
            'title' => 'Upload Non Gambar',
            'tc' => TC::all(),
            'kecamatan' => Kecamatan::all(),
            'kegiatan' => Kegiatan::all()
        ]);
    }

    public function saveGambar(Request $request)
    {
        $this->validate(
            $request,
            [
                'gambar' => 'required',
                'gambar.*' => 'image|file',
                'deskripsi' => 'required',
                'kegiatan' => 'required|in:1,2,3,4',
            ],
            [
                'required' => 'Kolom :attribute harus diisi',
                'image' => 'File harus berupa gambar',
                'kegiatan.in' => 'Isian album harus valid',
                'file' => 'Isian harus berupa file'
            ]
        );
        $kegiatan = $request->kegiatan;
        $gambar = [];
        if ($kegiatan == "1") {
            foreach ($request->file('gambar') as $g) {
                if ($g->isValid()) {
                    $filename = round(microtime(true) * 1000) . '-' . str_replace(' ', '-', $g->getClientOriginalName());
                    $g->move(public_path('gambar/persiapan'), $filename);
                    $gambar[] = [
                        'nama' => $filename,
                        'kegiatan_id' => $kegiatan,
                        'deskripsi' => $request->deskripsi
                    ];
                }
            }
            Gambar::insert($gambar);
            return redirect()->route('persiapan')->with('success', 'Sukses mengunggah Foto Persiapan');
        } else if ($kegiatan == "2") {
            foreach ($request->file('gambar') as $g) {
                if ($g->isValid()) {
                    $filename = round(microtime(true) * 1000) . '-' . str_replace(' ', '-', $g->getClientOriginalName());
                    $g->move(public_path('gambar/pelatihan'), $filename);
                    $data = Gambar::create([
                        'nama' => $filename,
                        'kegiatan_id' => $kegiatan,
                        'deskripsi' => $request->deskripsi
                    ]);

                    Pelatihan::create([
                        'gambar_id' => $data->id,
                        'tc_id' => $request->tc,
                        'gelombang' => $request->gelombang
                    ]);
                }
            }
            return redirect()->route('pelatihan')->with('success', 'Sukses mengunggah Foto Pelatihan');
        } else if ($kegiatan == "3") {
            foreach ($request->file('gambar') as $g) {
                if ($g->isValid()) {
                    $filename = round(microtime(true) * 1000) . '-' . str_replace(' ', '-', $g->getClientOriginalName());
                    $g->move(public_path('gambar/pendataan'), $filename);
                    $data = Gambar::create([
                        'nama' => $filename,
                        'kegiatan_id' => $kegiatan,
                        'deskripsi' => $request->deskripsi
                    ]);

                    Pendataan::create([
                        'gambar_id' => $data->id,
                        'kecamatan_id' => $request->kecamatan
                    ]);
                }
            }
            return redirect()->route('pendataan')->with('success', 'Sukses mengunggah Foto Pendataan');
        } else {
            foreach ($request->file('gambar') as $g) {
                if ($g->isValid()) {
                    $filename = round(microtime(true) * 1000) . '-' . str_replace(' ', '-', $g->getClientOriginalName());
                    $g->move(public_path('gambar/pengolahan'), $filename);
                    $gambar[] = [
                        'nama' => $filename,
                        'kegiatan_id' => $kegiatan,
                        'deskripsi' => $request->deskripsi
                    ];
                }
            }
            Gambar::insert($gambar);
            return redirect()->route('pengolahan')->with('success', 'Sukses mengunggah Foto Pengolahan');
        }
    }
    public function saveDokumen(Request $request)
    {
        $this->validate(
            $request,
            [
                'dokumen' => 'required',
                'dokumen.*' => 'file|mimes:pdf',
                'judul' => 'required',
                'kegiatan' => 'required|in:1,2,3,4',
            ],
            [
                'required' => 'Kolom :attribute harus diisi',
                'kegiatan.in' => 'Isian kegiatan harus valid',
                'file' => 'Isian harus berupa file',
                'mimes' => 'File harus berupa PDF'
            ]
        );
        $kegiatan = $request->kegiatan;
        $dokumen = [];
        if ($kegiatan == "1") {
            foreach ($request->file('dokumen') as $d) {
                if ($d->isValid()) {
                    $filename = round(microtime(true) * 1000) . '-' . str_replace(' ', '-', $d->getClientOriginalName());
                    $d->move(public_path('dokumen/persiapan'), $filename);
                    $dokumen[] = [
                        'nama' => $filename,
                        'kegiatan_id' => $kegiatan,
                        'judul' => $request->judul
                    ];
                }
            }
            Dokumen::insert($dokumen);
            return redirect()->route('persiapan.dokumen')->with('success', 'Sukses mengunggah Dokumen Persiapan');
        } else if ($kegiatan == "2") {
            foreach ($request->file('dokumen') as $d) {
                if ($d->isValid()) {
                    $filename = round(microtime(true) * 1000) . '-' . str_replace(' ', '-', $d->getClientOriginalName());
                    $d->move(public_path('dokumen/pelatihan'), $filename);
                    $data = Dokumen::create([
                        'nama' => $filename,
                        'kegiatan_id' => $kegiatan,
                        'judul' => $request->judul
                    ]);

                    DokumenPelatihan::create([
                        'dokumen_id' => $data->id,
                        'tc_id' => $request->tc,
                        'gelombang' => $request->gelombang
                    ]);
                }
            }
            return redirect()->route('pelatihan.dokumen')->with('success', 'Sukses mengunggah Dokumen Pelatihan');
        } else if ($kegiatan == "3") {
            foreach ($request->file('dokumen') as $d) {
                if ($d->isValid()) {
                    $filename = round(microtime(true) * 1000) . '-' . str_replace(' ', '-', $d->getClientOriginalName());
                    $d->move(public_path('dokumen/pendataan'), $filename);
                    $data = Dokumen::create([
                        'nama' => $filename,
                        'kegiatan_id' => $kegiatan,
                        'judul' => $request->judul
                    ]);

                    DokumenPendataan::create([
                        'dokumen_id' => $data->id,
                        'kecamatan_id' => $request->kecamatan
                    ]);
                }
            }
            return redirect()->route('pendataan.dokumen')->with('success', 'Sukses mengunggah Dokumen Pendataan');
        } else {
            foreach ($request->file('dokumen') as $d) {
                if ($d->isValid()) {
                    $filename = round(microtime(true) * 1000) . '-' . str_replace(' ', '-', $d->getClientOriginalName());
                    $d->move(public_path('dokumen/pengolahan'), $filename);
                    $dokumen[] = [
                        'nama' => $filename,
                        'kegiatan_id' => $kegiatan,
                        'judul' => $request->judul
                    ];
                }
            }
            Dokumen::insert($dokumen);
            return redirect()->route('pengolahan.dokumen')->with('success', 'Sukses mengunggah Dokumen Pengolahan');
        }
    }
}
