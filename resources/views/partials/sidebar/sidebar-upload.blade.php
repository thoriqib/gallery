<ul class="sidebar-menu">
    <li class="menu-header">Upload</li>
    <li class="nav-item @if($title == 'Upload Gambar') active @endif"><a class="nav-link" href={{route('upload.image')}}><i class="fas fa-upload mr-1"></i> <span>Dokumentasi Gambar</span></a></li>
    <li class="nav-item @if($title == 'Upload Non Gambar') active @endif"><a class="nav-link" href={{route('upload.doc')}}><i class="fas fa-upload mr-1"></i> <span>Dokumentasi Non Gambar</span></a></li>
</ul>