<?php

use App\Http\Controllers\PelatihanController;
use App\Http\Controllers\PendataanController;
use App\Http\Controllers\PengolahanController;
use App\Http\Controllers\PersiapanController;
use App\Http\Controllers\UploadController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home', ['title' => 'Home']);
})->name('index');

Route::get('/persiapan', [PersiapanController::class, 'index'])->name('persiapan');
Route::get('/persiapan/dokumen', [PersiapanController::class, 'showDokumen'])->name('persiapan.dokumen');

Route::get('/pelatihan', [PelatihanController::class, 'index'])->name('pelatihan');
Route::get('/pelatihan/{hotel}/{gelombang}', [PelatihanController::class, 'showByTC'])->name('pelatihan.tc');

Route::get('/pelatihan/dokumen', [PelatihanController::class, 'showDokumen'])->name('pelatihan.dokumen');
Route::get('/pelatihan/dokumen/{hotel}/{gelombang}', [PelatihanController::class, 'showDokumenByTC'])->name('pelatihan.dokumen.tc');

Route::get('/pendataan', [PendataanController::class, 'index'])->name('pendataan');
Route::get('/pendataan/dokumen', [PendataanController::class, 'showDokumen'])->name('pendataan.dokumen');
Route::get('/pendataan/{kecamatan}', [PendataanController::class, 'showByKecamatan'])->name('pendataan.kecamatan');
Route::get('/pendataan/dokumen/{kecamatan}', [PendataanController::class, 'showDokumenByKecamatan'])->name('pendataan.dokumen.kecamatan');

Route::get('/pengolahan', [PengolahanController::class, 'index'])->name('pengolahan');
Route::get('/pengolahan/dokumen', [PengolahanController::class, 'showDokumen'])->name('pengolahan.dokumen');

Route::get('/upload/gambar', [UploadController::class, 'uploadGambar'])->name('upload.image');
Route::get('/upload/dokumen', [UploadController::class, 'uploadDokumen'])->name('upload.doc');
Route::post('/save/gambar', [UploadController::class, 'saveGambar'])->name('save.image');
Route::post('/save/dokumen', [UploadController::class, 'saveDokumen'])->name('save.doc');

Route::get('dokumen/persiapan/{file}', [PersiapanController::class, 'download']);
Route::get('dokumen/pelatihan/{file}', [PelatihanController::class, 'download']);
Route::get('dokumen/pendataan/{file}', [PendataanController::class, 'download']);
Route::get('dokumen/pengolahan/{file}', [PengolahanController::class, 'download']);
