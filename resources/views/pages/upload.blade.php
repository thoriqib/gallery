@extends('layouts.main')
@section('content')

<section class="section">
    <div class="section-header">
        <h1>Upload Gambar</h1>
    </div>
    <div class="section-body">
        <div class="container">
            <div class="row">
             <div class="card w-100">
                 <!-- card header -->
                 <div class="card-header">
                   <!-- card title -->
                   <h4 class="text-success">Upload Dokumentasi Gambar</h4>
                 </div>
                 <!-- card body -->
                 <div class="card-body">
                    @if ($errors->any())
                        @foreach ($errors->all() as $error)
                        <div class="alert alert-danger alert-dismissible show fade">
                            <div class="alert-body">
                              <button class="close" data-dismiss="alert">
                                <span>×</span>
                              </button>
                              {{$error}}
                            </div>
                          </div>
                        @endforeach
                    @endif
                    <form action={{route('save.image')}} method="post" enctype="multipart/form-data">
                        @csrf
                        
                        <select class="custom-select my-2 @error('kegiatan') is-invalid @enderror" name="kegiatan" id="kegiatan" required oninvalid="this.setCustomValidity('Album harus diisi')" oninput="this.setCustomValidity('')">
                            <option value="" selected>--- Pilih Album ---</option>
                            @foreach ($kegiatan as $k)
                                <option value={{$k->id}}>{{$k->nama}}</option>
                            @endforeach
                        </select>

                        <div class="my-3" id="gambar">
                            <label for="">Upload Gambar</label>
                            <input class="form-control @error('gambar') is-invalid @enderror" type="file" id="formFileMultiple" name="gambar[]" multiple required oninvalid="this.setCustomValidity('Harus mengupload gambar')" oninput="this.setCustomValidity('')">
                        </div>
                        <div class="my-3">
                            <label for="">Deskripsi</label>
                            <textarea class="form-control @error('deskripsi') is-invalid @enderror" id="deskripsi" rows="5" placeholder="Tuliskan Deskripsi..." name="deskripsi" oninvalid="this.setCustomValidity('Deskripsi harus diisi')" oninput="this.setCustomValidity('')" value="{{old('deskripsi')}}"></textarea>
                        </div>
                        <button class="btn btn-success float-right" type="submit" id="btnUpload">Upload</button>
                    </form>
                 </div>
               </div>
            </div>
        </div>
    </div>
</section>
@endsection

@push('custom-script')
<script>
    let kegiatan = $('#kegiatan');

    kegiatan.attr('required', true);
    kegiatan.on('change', function (){
        switch (this.value) {
            case '1':
                $('#tc').remove();
                $('#gelombang').remove();
                $('#kecamatan').remove();
                break;
            case '2':
                $('#kegiatan').after(
                    `<select class="custom-select my-2" name="tc" id="tc" required oninvalid="this.setCustomValidity('TC harus diisi')" oninput="this.setCustomValidity('')">
                            <option value="" selected>--- Pilih TC ---</option>
                            @foreach ($tc as $t)
                                <option value={{$t->id}}>{{$t->nama}}</option>
                            @endforeach
                        </select>
                        <select class="custom-select my-2" name="gelombang" id="gelombang" required oninvalid="this.setCustomValidity('Gelombang harus diisi')" oninput="this.setCustomValidity('')">
                            <option value="" selected>--- Pilih Gelombang ---</option>
                            <option value="I">Gelombang I</option>
                            <option value="II">Gelombang II</option>
                            <option value="III">Gelombang III</option>
                            <option value="IV">Gelombang IV</option>
                            <option value="V">Gelombang V</option>
                        </select>
                `)
                $('#kecamatan').remove();
                break;
            case '3':
                $('#kegiatan').after(
                    `<select class="custom-select my-2" name="kecamatan" id="kecamatan" required oninvalid="this.setCustomValidity('Kecamatan harus diisi')" oninput="this.setCustomValidity('')">
                            <option value="" selected>--- Pilih Kecamatan ---</option>
                            @foreach ($kecamatan as $k)
                                <option value={{$k->id}}>{{$k->nama}}</option>
                            @endforeach
                        </select>`
                )
                $('#tc').remove();
                $('#gelombang').remove();
                $('#kecamatan').attr('required', true);
                break;
            case '4':
                $('#tc').remove();
                $('#gelombang').remove();
                $('#kecamatan').remove();
                break;
            default:
                $('#gambar').show();
                break;
        }
    })
</script>
@endpush