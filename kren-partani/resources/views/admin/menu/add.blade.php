@extends('admin.layouts.master')
@section('content')
<div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Tambahkan Produk</h4>
                        <form action="{{ route('add.menu.process') }}" method="post" enctype="multipart/form-data"
                            class="forms-sample">
                            @csrf
                            <div class="form-group">
                                <input type="text" name="nama_produk" class="form-control" placeholder="Nama Produk" value="{{ old('nama_produk') }}">
                                @error('nama_produk')
                                    <div class="text-danger">
                                        Masukkan nama produk
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <input type="text" name="satuan_perpesanan" class="form-control" placeholder=" Satuan Perpesanan" value="{{ old('satuan_perpesanan') }}">
                                @error('satuan_perpesanan')
                                    <div class="text-danger">
                                        Masukkan Satuan Perpesanan
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <input type="number" name="harga" class="form-control" placeholder="Harga Produk" value="{{ old('harga') }}">
                                @error('harga')
                                    <div class="text-danger">
                                        Masukkan harga produk
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <input type="text" name="lokasi" class="form-control" placeholder="Lokasi Produk" value="{{ old('lokasi') }}">
                                @error('lokasi')
                                    <div class="text-danger">
                                        Masukkan Lokasi
                                    </div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input type="text" name="keterangan" class="form-control"
                                    placeholder="Keterangan Produk"  value="{{ old('keterangan') }}" >
                                @error('keterangan')
                                    <div class="text-danger">
                                        Masukkan keterangan produk 
                                    </div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input type="number" name="stok" class="form-control"
                                    placeholder="Stok" value="{{ old('stok') }}">
                                @error('stok')
                                    <div class="text-danger">
                                        Masukkan stok produk 
                                    </div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Gambar Produk</label>
                                <input type="file" name="gambar_produk" accept="image/*" id="gambar_produk" onchange="previewImage(event)">
                                <img id="gambar-preview" src="#" alt="Preview Gambar" style="max-width: 200px; display: none;">
                                @error('gambar_produk')
                                    <div class="text-danger">
                                        Masukkan gambar produk 
                                    </div>
                                @enderror
                            </div>                        
                            <a href="{{ route('menu') }}"><button type="button" class="btn btn-dark btn-icon-text" value="Save"><i class="mdi mdi-plus-box"></i> Kembali</button></a>
                            <button type="submit" class="btn btn-primary btn-icon-text" value="Save"><i class="mdi mdi-plus-box"></i> Tambahkan</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
</div>
<script>
    function previewImage(event) {
        var reader = new FileReader();
        reader.onload = function() {
            var preview = document.getElementById('gambar-preview');
            preview.src = reader.result;
            preview.style.display = 'block';
        }
        reader.readAsDataURL(event.target.files[0]);
    }
</script>
@endsection