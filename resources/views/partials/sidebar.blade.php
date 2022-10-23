<div class="main-sidebar">
    <aside id="sidebar-wrapper">
      <div class="sidebar-brand">
        <a href="{{route('index')}}"><img class="w-25 rounded" src="{{asset('/assets/img/logo.png')}}" alt="Logo Regsosek"> Galeri Regsosek</a>
      </div>
      <div class="sidebar-brand sidebar-brand-sm">
        <a href="{{route('index')}}"><img class="w-50 rounded" src="{{asset('/assets/img/logo.png')}}" alt="Logo Regsosek"></a>
      </div>
      @switch($title)
        @case('Persiapan')
          @include('partials.sidebar.sidebar-persiapan')
          @break
        @case('Pelatihan')
          @include('partials.sidebar.sidebar-pelatihan')
          @break
        @case('Pendataan')
          @include('partials.sidebar.sidebar-pendataan')
          @break
        @case('Pengolahan')
          @include('partials.sidebar.sidebar-pengolahan')
          @break
        @case('Upload Gambar')
          @include('partials.sidebar.sidebar-upload')
          @break
        @case('Upload Non Gambar')
          @include('partials.sidebar.sidebar-upload')
          @break
        @default
      @endswitch
    </aside>
  </div>