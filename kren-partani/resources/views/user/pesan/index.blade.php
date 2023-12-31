@extends('user.layouts.app')
@section('title')
    Pesan Menu
@endsection
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12 mt-2">
                <div class="container-fluid">
                    <nav aria-label="breadcrumb">                        
                    </nav>
                </div>
            </div>
            <div class="col-md-12 mt-3">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <img src="{{ url('productimage') }}/{{ $produk->gambar_produk }}" width="445px" alt="">
                            </div>
                            <div class="col-md-6 mt-4">
                                <h3>{{ $produk->nama_produk }} / {{ $produk->satuan_perpesanan   }} </h3>
                                <table class="table table-borderless">
                                    <form action="{{ url('/pesan-process/' . $produk->id) }}" method="POST">
                                        <tr>
                                            <input type="text" hidden name="nama_produk"
                                                value="{{ $produk->nama_produk }}">
                                            <input  type="file" hidden name="gambar"
                                                value="{{ url('productimage') }}/{{ $produk->gambar }}" id="">
                                            <td>Harga</td>
                                            <td>:</td>
                                            <td>Rp. {{ number_format($produk->harga) }}</td>
                                        </tr>
                                        <tr>
                                            <td>Stok</td>
                                            <td>:</td>
                                            <td>{{ $produk->stok }}</td>
                                        </tr>
                                        <tr>
                                            <td>Keterangan</td>
                                            <td>:</td>
                                            <td>{{ $produk->keterangan }}</td>
                                        </tr>
                                        <tr>
                                            <td>Tanggal Produk di Butuhkan</td>
                                            <td>:</td>
                                            <td>
                                                <input type="date" name="tanggal_produk_diperlukan" id="" class="form-control" required
                                                    value="{{ old('tanggal_produk_diperlukan') }}" min="{{ date('Y-m-d') }}"></input>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Jumlah Pesan</td>
                                            <td>:</td>
                                            <td>
                                                @csrf
                                                <input type="number" name="jumlah_pesan" class="form-control" required
                                                    min="1" value="{{ old('jumlah_pesan') }}">
                                                <button type="submit" class="btn btn-primary mt-2"><i
                                                        class="fas fa-shopping-cart"></i> Tambahkan Ke keranjang </button>

                                            </td>
                                        </tr>
                                    </form>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection
