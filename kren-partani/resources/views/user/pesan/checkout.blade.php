@extends('user.layouts.app')
@section('title')
    Check Out
@endsection
@section('content')
    <div class="container">
        <div class="row">
           
            <div class="col-md-12 mt-3">
                <div class="container-fluid">
                    <nav aria-label="breadcrumb">
                        
                    </nav>
                </div>
            </div>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4><i class="fa fa-shopping-cart">Check Out</i></h4>
                        @if (!empty($pesanan))
                            <p class="text-end">Tanggal Pesan : {{ $pesanan->tanggal_pemesanan }}</p>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <tr>
                                <th>No</th>
                                <th>Gambar</th>
                                <th>Nama Produk</th>
                                <th>Jumlah</th>
                                <th>Harga</th>
                                <th>Tanggal Barang</th>
                                <th>Harga</th>
                                <th>Aksi</th>
                            </tr>
                            <?php
                            $no = 1;
                            ?>
                            @foreach ($pesanan_details as $pesanan_detail)
                                <tr>
                                    <td>{{ $no++ }}</td>
                                    <td>
                                        <img src="{{ url('productimage') }}/{{ $pesanan_detail->produk->gambar_produk }}"
                                            style="width: 100px; height:100px;" class="card-img-top"  alt="product image" />
                                    </td>
                                    <td>{{ $pesanan_detail->produk->nama_produk }}</td>
                                    <td>{{ $pesanan_detail->jumlah }} buah</td>
                                    <td>Rp. {{ number_format($pesanan_detail->produk->harga) }}</td>
                                    <td>{{ $pesanan_detail->pesanan->tanggal_produk_diperlukan }}</td>
                                    <td>Rp. {{ number_format($pesanan_detail->jumlah_harga) }}</td>
                                    <td>
                                        <form action="{{ url('check-out') }}/{{ $pesanan_detail->id }}" method="post">
                                            @csrf
                                            {{ method_field('DELETE') }}
                                            <button type="submit" class="btn btn-danger btn-sm"
                                                onclick="return confirm('Yakin Ingin Menghapus produk?');">
                                                <i class="fa fa-trash"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                            <td class="text-end" colspan="6"><strong>Total Harga :</strong></td>
                            <td><strong>Rp. {{ number_format($pesanan->jumlah_harga) }}</strong></td>
                            @if (count($pesanan_details) > 0)
                                <td>
                                    <a href="{{ url('konfirmasi-check-out') }}" class="btn btn-success"
                                        onclick="return confirm('Yakin Mau CheckOut?');">
                                        <i class="fa fa-shopping-cart"></i>Check Out</a>
                                </td>
                            @endif
                        </table>
                    @else
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <tr>
                                    <th>No</th>
                                    <th>Gambar</th>
                                    <th>Nama tiket</th>
                                    <th>Jumlah</th>
                                    <th>Harga</th>
                                    <th>Alamat</th>
                                    <th>Total Harga</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td colspan="8" class="text-center">No items available</td>
                                </tr>
                            </table>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endsection
