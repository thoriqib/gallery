<ul class="sidebar-menu">
    <li class="menu-header">Dokumentasi Pendataan</li>
    <li><a class="nav-item text-dark my-2" href="{{route('pendataan')}}"><i class="fas fa-images"></i> <span>Dokumentasi Gambar</span></a></li>
    <li class="nav-item dropdown my-2">
        <a href="#" class="nav-link has-dropdown text-dark"><i class="fas fa-images"></i> <span>Dokumentasi Gambar per Kecamatan</span></a>
        <ul class="dropdown-menu">
            @foreach ($kecamatan_all as $k)
                <li><a class="nav-link text-success" href="{{route('pendataan.kecamatan', ['kecamatan' => $k->slug])}}"><i class="fas fa-map-marker-alt"></i> <span>{{$k->nama}}</span></a></li>
            @endforeach
        </ul>
    </li>
    <hr class="mx-3">
    <li><a class="nav-item text-dark my-2" href="{{route('pendataan.dokumen')}}"><i class="fas fa-file"></i> <span>Dokumentasi Non Gambar</span></a></li>
    <li class="nav-item dropdown my-2">
        <a href="#" class="nav-link has-dropdown text-dark"><i class="fas fa-file"></i> <span>Dokumentasi Non Gambar per Kecamatan</span></a>
        <ul class="dropdown-menu">
            @foreach ($kecamatan_all as $k)
                <li><a class="nav-link text-success" href="{{route('pendataan.dokumen.kecamatan', ['kecamatan' => $k->slug])}}"><i class="fas fa-map-marker-alt"></i> <span>{{$k->nama}}</span></a></li>
            @endforeach
        </ul>
    </li>
</ul>