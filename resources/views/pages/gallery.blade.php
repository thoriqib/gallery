@extends('layouts.main')
@section('content')

@push('custom-style')
  <style>
    .gambar {
      opacity: 1;
      display: block;
      width: 100%;
      height: 150px;
      transition: .5s ease;
      backface-visibility: hidden;
      object-fit: cover;
    }

    .gambar:hover {
      opacity: 0.4;
      cursor: pointer;
    }
  </style>
@endpush

<section class="section">
    <div class="section-header">
        <h1>{{$title}}</h1>
    </div>
    
    @isset($hotel)
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{route('pelatihan')}}">{{$title}}</a></li>
          <li class="breadcrumb-item">{{$hotel}}</li>
          <li class="breadcrumb-item" aria-current="page">{{$gelombang}}</li>
        </ol>
      </nav>
    @endisset
    @isset($kecamatan)
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{route('pendataan')}}">{{$title}}</a></li>
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
          @if ($gambar->firstItem())
            @foreach ($gambar as $g)
              <div class="col-lg-3 col-md-4 col-sm-6 my-2">
                <img class="w-100 rounded gambar" src="{{asset($dir.$g->nama)}}" id="{{$g->id}}"/>
              </div>
            @endforeach
          </div>
  
          <div class="d-flex justify-content-center">
            {!! $gambar->links() !!}
          </div>
         @else
          <div class="container">
            <h4 class="text-center">Tidak ada gambar</h4>
          </div>
         @endif
    </div>
</section>
@endsection

@push('custom-script')
<script>
  let title = '';
    @foreach ($gambar as $g)
      @switch($title)
        @case('Persiapan')
          title = 'Persiapan';
          @break
        @case('Pelatihan')
          title = "{{$g->pelatihan->tc->nama??null}} (Gelombang {{$g->pelatihan->gelombang??null}})";
          @break
        @case('Pendataan')
          title = "Kecamatan {{$g->pendataan->kecamatan->nama}}";
          @break
        @case('Pengolahan')
          title = 'Pengolahan';
          @break
        @default
      @endswitch
      $('#{{$g->id}}').fireModal({
        title: title,
        body: `
        <img class='w-100' src='{{asset($dir.$g->nama)}}'/>
          <div class="card rounded">
            <div class="card-body">
              <p class="card-text">{{$g->deskripsi}}</p>
            </div>
          </div>`,
        buttons: [
          {
            text: 'Close',
            class: 'btn btn-secondary',
            handler: function(current_modal) {
            $.destroyModal(current_modal);
            }
          }
        ],
        center: true,
        size: 'modal-xl'
      });
    @endforeach
</script>
@endpush