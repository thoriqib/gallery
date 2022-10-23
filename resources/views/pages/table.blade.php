@extends('layouts.main')
@section('content')

<section class="section">
    <div class="section-header">
        <h1>{{$title}}</h1>
    </div>
    
    @isset($hotel)
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{route('pelatihan.dokumen')}}">{{$title}}</a></li>
          <li class="breadcrumb-item">{{$hotel}}</li>
          <li class="breadcrumb-item" aria-current="page">{{$gelombang}}</li>
        </ol>
      </nav>
    @endisset
    @isset($kecamatan)
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{route('pendataan.dokumen')}}">{{$title}}</a></li>
          <li class="breadcrumb-item active" aria-current="page">Kecamatan {{$kecamatan->nama}}</li>
        </ol>
      </nav>
    @endisset
    @if ($message = Session::get('success'))
    <div class="alert alert-success alert-dismissible show fade">
      <div class="alert-body">
        <button class="close" data-dismiss="alert">
          <span>×</span>
        </button>
        {{ $message }}
      </div>
    </div>
    @endif
       <div class="row">
        <div class="container">
            <div class="card w-100">
            <div class="card-header">
              <h4>Dokumentasi Non Gambar</h4>
            </div>
            <div class="card-body">
              @if ($dokumen->firstItem())
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th scope="col">No</th>
                      <th scope="col">Judul</th>
                      @if ($title == 'Pelatihan')
                        <th scope="col">TC</th>
                        <th scope="col">Gelombang</th>
                      @endif
                      @if ($title == 'Pendataan')
                        <th scope="col">Kecamatan</th>
                      @endif
                      <th scope="col">File</th>
                    </tr>
                  </thead>
                  @php $i = $dokumen->firstItem(); @endphp
                  <tbody>
                    @foreach ($dokumen as $d)
                      <tr>
                        <th scope="row">{{$i}}</th>
                          <td>{{$d->judul}}</td>
                        @if ($title == 'Pelatihan')
                          <td>{{$d->dokumenPelatihan->tc->nama}}</td>
                          <td>{{$d->dokumenPelatihan->gelombang}}</td>
                        @endif
                        @if ($title == 'Pendataan')
                          <td>{{$d->dokumenPendataan->kecamatan->nama}}</td>
                        @endif
                        <td>
                          @switch($title)
                            @case('Persiapan')
                              <a href={{asset("/dokumen/persiapan/$d->nama")}}>Unduh</a>
                              @break
                            @case('Pelatihan')
                              <a href={{asset("/dokumen/pelatihan/$d->nama")}}>Unduh</a>
                              @break
                            @case('Pendataan')
                              <a href={{asset("/dokumen/pendataan/$d->nama")}}>Unduh</a>
                              @break
                            @case('Pengolahan')
                              <a href={{asset("/dokumen/pengolahan/$d->nama")}}>Unduh</a>
                              @break
                            @default
                          @endswitch
                        </td>
                      </tr>
                    @php $i++ @endphp
                    @endforeach
                  </tbody>
                </table>
              @else
                <h4 class="text-center">Tidak ada dokumen</h4>
              @endif
            </div>
          </div>
        </div>       
       </div>
       {!! $dokumen->links() !!}
    </div>
</section>
@endsection

