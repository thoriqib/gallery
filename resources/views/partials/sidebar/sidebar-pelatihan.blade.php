<ul class="sidebar-menu">
    <li><a class="nav-item text-dark my-2" href="/pelatihan"><i class="fas fa-images"></i> <span>Dokumentasi Gambar</span></a></li>
    <li><a class="nav-item text-dark my-2" href="/pelatihan/dokumen"><i class="fas fa-file"></i> <span>Dokumentasi Non Gambar</span></a></li>
    
    <li class="menu-header"><i class="fas fa-images"></i> Dokumentasi Gambar Per TC</li>
    @foreach ($tc as $t)
      <li class="nav-item dropdown">
          <a href="#" class="nav-link has-dropdown text-dark"><i class="fas fa-hotel"></i> <span>{{$t->nama}}</span></a>
          <ul class="dropdown-menu">
            <li><a class="nav-link text-success" href="/pelatihan/{{$t->slug}}/I">Gelombang I</a></li>
            <li><a class="nav-link text-success" href="/pelatihan/{{$t->slug}}/II">Gelombang II</a></li>
            <li><a class="nav-link text-success" href="/pelatihan/{{$t->slug}}/III">Gelombang III</a></li>
            <li><a class="nav-link text-success" href="/pelatihan/{{$t->slug}}/IV">Gelombang IV</a></li>
            <li><a class="nav-link text-success" href="/pelatihan/{{$t->slug}}/V">Gelombang V</a></li>
          </ul>
      </li>
    @endforeach
    <li class="menu-header"><i class="fas fa-file"></i> Dokumentasi Non Gambar per TC</li>
    @foreach ($tc as $t)
      <li class="nav-item dropdown">
          <a href="#" class="nav-link has-dropdown text-dark"><i class="fas fa-hotel"></i> <span>{{$t->nama}}</span></a>
          <ul class="dropdown-menu">
            <li><a class="nav-link text-success" href="/pelatihan/dokumen/{{$t->slug}}/I">Gelombang I</a></li>
            <li><a class="nav-link text-success" href="/pelatihan/dokumen/{{$t->slug}}/II">Gelombang II</a></li>
            <li><a class="nav-link text-success" href="/pelatihan/dokumen/{{$t->slug}}/III">Gelombang III</a></li>
            <li><a class="nav-link text-success" href="/pelatihan/dokumen/{{$t->slug}}/IV">Gelombang IV</a></li>
            <li><a class="nav-link text-success" href="/pelatihan/dokumen/{{$t->slug}}/V">Gelombang V</a></li>
          </ul>
      </li>
    @endforeach
</ul>