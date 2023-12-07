@extends('admin.layouts.master')
@section('content')
<div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Edit produk </h4>
                        <form action="{{ url('/edit-menu-process/'.$dataMenuUpdate->id) }}" method="POST" enctype="multipart/form-data"
                            class="forms-sample">
                            @csrf
                            <div class="form-group">
                                <input type="text" name="nama_produk" class="form-control" placeholder="Nama Produk" value="{{ $dataMenuUpdate->nama_produk }}">
                                @error('nama_produk')
                                    <div class="text-danger">
                                        Masukkan nama produk 
                                    </div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input type="text" name="satuan_perpesanan" class="form-control" placeholder="Nama Produk" value="{{ $dataMenuUpdate->satuan_perpesanan }}">
                                @error('satuan_perpesanan')
                                    <div class="text-danger">
                                        Masukkan Satuan Perpesanan
                                    </div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input type="number" name="harga" class="form-control" placeholder="Harga Produk" value="{{ $dataMenuUpdate->harga }}">
                                @error('harga')
                                    <div class="text-danger">
                                        Masukkan harga produk 
                                    </div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input type="text" name="keterangan" class="form-control"
                                    placeholder="Keterangan Produk" value="{{ $dataMenuUpdate->keterangan }}">
                                @error('keterangan')
                                    <div class="text-danger">
                                        Masukkan keterangan produk 
                                    </div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input type="number" name="stok" class="form-control"
                                    placeholder="Stok" value="{{ $dataMenuUpdate->stok }}">
                                @error('stok')
                                    <div class="text-danger">
                                        Masukkan stok Produk 
                                    </div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Gambar Produk</label>
                                <input type="file" name="gambar_produk" accept="image/*">
                                @if($dataMenuUpdate->gambar_produk)
                                    <img src="productimage/{{ $dataMenuUpdate->gambar_produk }}" alt="" style="width: 100px; height:100px;" class="d-block">
                                @elseif(old('gambar_produk'))
                                    <img src="productimage/{{ old('gambar_produk') }}" alt="" style="width: 100px; height:100px;" class="d-block">
                                @endif
                                @error('gambar_produk')
                                    <div class="text-danger">
                                        Masukkan gambar produk 
                                    </div>
                                @enderror
                            </div>
                            
                            <a href="{{ route('menu') }}"><button type="button" class="btn btn-dark btn-icon-text" value="Save"><i class="mdi mdi-plus-box"></i> Kembali</button></a>
                            <button type="submit" class="btn btn-primary btn-icon-text" value="Save"><i class="mdi mdi-plus-box"></i> Update</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
</div>
@endsection