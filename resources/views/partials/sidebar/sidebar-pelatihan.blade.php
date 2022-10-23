<ul class="sidebar-menu">
    <li><a class="nav-item text-dark my-2" href="{{route('pelatihan')}}"><i class="fas fa-images"></i> <span>Dokumentasi Gambar</span></a></li>
    <li><a class="nav-item text-dark my-2" href="{{route('pelatihan.dokumen')}}"><i class="fas fa-file"></i> <span>Dokumentasi Non Gambar</span></a></li>
    
    <li class="menu-header"><i class="fas fa-images"></i> Dokumentasi Gambar Per TC</li>
    @foreach ($tc as $t)
      <li class="nav-item dropdown">
          <a href="#" class="nav-link has-dropdown text-dark"><i class="fas fa-hotel"></i> <span>{{$t->nama}}</span></a>
          <ul class="dropdown-menu">
            <li><a class="nav-link text-success" href="{{route('pelatihan.tc', ['hotel' => $t->slug, 'gelombang' => 'I'])}}">Gelombang I</a></li>
            <li><a class="nav-link text-success" href="{{route('pelatihan.tc', ['hotel' => $t->slug, 'gelombang' => 'II'])}}">Gelombang II</a></li>
            <li><a class="nav-link text-success" href="{{route('pelatihan.tc', ['hotel' => $t->slug, 'gelombang' => 'III'])}}">Gelombang III</a></li>
            <li><a class="nav-link text-success" href="{{route('pelatihan.tc', ['hotel' => $t->slug, 'gelombang' => 'IV'])}}">Gelombang IV</a></li>
            <li><a class="nav-link text-success" href="{{route('pelatihan.tc', ['hotel' => $t->slug, 'gelombang' => 'V'])}}">Gelombang V</a></li>
          </ul>
      </li>
    @endforeach
    <li class="menu-header"><i class="fas fa-file"></i> Dokumentasi Non Gambar per TC</li>
    @foreach ($tc as $t)
      <li class="nav-item dropdown">
          <a href="#" class="nav-link has-dropdown text-dark"><i class="fas fa-hotel"></i> <span>{{$t->nama}}</span></a>
          <ul class="dropdown-menu">
            <li><a class="nav-link text-success" href="{{route('pelatihan.dokumen.tc', ['hotel' => $t->slug, 'gelombang' => 'I'])}}">Gelombang I</a></li>
            <li><a class="nav-link text-success" href="{{route('pelatihan.dokumen.tc', ['hotel' => $t->slug, 'gelombang' => 'II'])}}">Gelombang II</a></li>
            <li><a class="nav-link text-success" href="{{route('pelatihan.dokumen.tc', ['hotel' => $t->slug, 'gelombang' => 'III'])}}">Gelombang III</a></li>
            <li><a class="nav-link text-success" href="{{route('pelatihan.dokumen.tc', ['hotel' => $t->slug, 'gelombang' => 'IV'])}}">Gelombang IV</a></li>
            <li><a class="nav-link text-success" href="{{route('pelatihan.dokumen.tc', ['hotel' => $t->slug, 'gelombang' => 'V'])}}">Gelombang V</a></li>
          </ul>
      </li>
    @endforeach
</ul>