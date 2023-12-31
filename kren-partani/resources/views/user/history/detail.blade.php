@extends('user.layouts.app')
@section('title')
    Detail Pemesanan
@endsection
@section('content')
    <div class="container">
        <div class="row">
            {{-- <div class="col-md-12">
                <a href="{{ url('pesanan') }}" class="btn btn-primary"><i class="fa fa-arrow-left"></i> Kembali</a>
            </div> --}}
            <div class="col-md-12 mt-3">
                <div class="container-fluid">
                    <nav aria-label="breadcrumb">
                        {{-- <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ url('/list-menu') }}">Menu</a></li>
                            <li class="breadcrumb-item"><a href="{{ url('pesanan') }}">Pesanan</a></li>
                            <li class="breadcrumb-item">Detail Pemesanan</li>
                        </ol> --}}
                    </nav>
                </div>
            </div>
            
            <div class="col-md-12">
                @if($pesanan->status == 1)
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center">Checkout pesanan anda berhasil</h3>
                            <h5>Selanjutnya silahkan lakukan pembayaran melalui:</h5>
                            <table class="table">
                                <tr>
                                    <th>No Rekening BRI atas nama RPL 004 BLU BPODT UN</th>
                                    <td><strong><b>0053-01-005665-03-3</b></strong></td>
                                </tr>
                                <tr>
                                    <th>Jumlah Pembayaran</th>
                                    <td><strong>Rp. {{ number_format($pesanan->jumlah_harga) }}</strong></td>
                                </tr>
                                <tr>
                                    <th>Kode pemesanan anda</th>
                                    <td><strong>{{ $pesanan->kode }}</strong></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                @endif
                <div class="card mt-2">
                    <div class="card-header">
                        <h4><i class="fa fa-shopping-cart"></i> Detail Pemesanan</h4>
                        @if (!empty($pesanan))
                            <p class="text-end">Tanggal Pesan : {{ $pesanan->tanggal_pemesanan }}</p>
                            @if($pesanan->status == 1)
                            <p class="text-end text-danger">*setelah melakukan pembayaran, silahkan upload bukti pembayaran dibawah ini</p>
                            @endif
                            @if($pesanan->status == 3)
                            <div class="card text-bold" style=
                            "box-shadow: inset 3px 3px 4px rgba(0,0,0,0.4);
                            border: 1px solid grey;">
                                <h6 class="card-body">Pesanan anda sudah di confirm oleh admin.</h6>
                            </div>
                            @endif
                            @if($pesanan->status == 4)
                            <div class="card text-bold" style="box-shadow: inset 3px 3px 4px rgba(0,0,0,0.4); border: 1px solid grey;">
                                <h6 class="card-body">Lihat Gambar : @foreach ($gambar_penjualan as $item)
                                    <a href="pdf/{{ $item->gambar_penjualan }}" data-sub-html="Demo Description">Tiket Kamu
                                        {{-- <img class="img-responsive thumbnail" src="productimage/{{ $item->gambar_penjualan }}" alt="" style="max-width: 200px; max-height: 200px;"> --}}
                                    </a>
                                @endforeach</h6>
                                <div class="gallery">
                                    
                                </div>
                            </div>                            
                            </div>
                            @endif
                            @if($pesanan->status == 5)
                            <div class="card text-bold" style=
                            "box-shadow: inset 3px 3px 4px rgba(0,0,0,0.4);
                            border: 1px solid grey;">
                                <h6 class="card-header">Detail tracking : </h6>
                                <h6 class="card-body">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Nama Pengirim:</label>
                                        <div class="col-sm-9">
                                          <input type="text" class="form-control" value="{{ $pesanan->nama_pengirim }}" disabled >
                                        </div>
                                      </div>
                                      <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">No. Telepon :</label>
                                        <div class="col-sm-9">
                                          <input type="text" class="form-control" value="{{ $pesanan->tlpn }}" disabled >
                                        </div>
                                      </div>
                                      <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Transportasi :</label>
                                        <div class="col-sm-9">
                                          <input type="text" class="form-control" value="{{ $pesanan->angkutan }}" disabled>
                                        </div>
                                      </div>
                                      @if($pesanan->angkutan == 'Angkutan Umum')
                                      <div class="form-group mb-0 row">
                                        <label class="col-sm-3 col-form-label">Jenis :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" value="{{ $pesanan->jenis }}" disabled>
                                        </div>
                                      </div>
                                      <div class="form-group mb-0 row">
                                        <label class="col-sm-3 col-form-label">Plat :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" value="{{ $pesanan->plat }}" disabled>
                                        </div>
                                      </div>
                                      @endif
                                      @if($pesanan->angkutan == 'Kurir')
                                      <div class="form-group mb-0 row">
                                        <label class="col-sm-3 col-form-label">Kurir :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" value="{{ $pesanan->kurir }}" disabled>
                                        </div>
                                      </div>
                                      <div class="form-group mb-0 row">
                                        <label class="col-sm-3 col-form-label">No. Resi :</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" value="{{ $pesanan->resi }}" disabled>
                                        </div>
                                      </div>
                                      @endif
                                      <a href="productimage/{{ $pesanan->img }}" target="_blank"><p>Lihat tiket anda disini</p></a>
                                      <a href="{{ url('/berikan-ulasan/'.$pesanan->id) }}"><button type="button" class="btn btn-primary">Pesanan Diterima</button></a>
                                </h6>
                            </div>
                            @endif
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-hover" >
                                <tr>
                                    <th>No</th>
                                    <th>Gambar</th>
                                    <th>Nama Produk</th>
                                    <th>Jumlah Pesanan  </th>
                                    <th>Harga</th>
                                    <th>Tanggal Barang di Perlukan </th>
                                    <th style="width: 120px">Total Harga</th>                                  
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
                                     <td>{{ $pesanan_detail->jumlah }} </td>
                                     <td>Rp. {{ number_format($pesanan_detail->produk->harga) }}</td>
                                     <td>{{ $pesanan_detail->pesanan->tanggal_produk_diperlukan }}</td>
                                     <td>Rp. {{ number_format($pesanan_detail->jumlah_harga) }}</td>                                     
                                 </tr>
                             @endforeach                      
                                <tr>
                                    <td colspan="6" class="text-end" colspan="5"><strong>Total Pembayaran :</strong></td>
                                    <td><strong>Rp. {{ number_format($pesanan->jumlah_harga) }}</strong></td>
                                    @if($pesanan->status == 1 )
                                    <td><strong><a href="{{ url('/upload/'.$pesanan->id) }}"><button class="btn btn-secondary">Masukkan Bukti Pembayaran</button></a></strong></td>
                                    @else
                                    
                                    <td><strong><a href="{{ url('productimage') }}/{{ $pesanan->bukti_pembayaran }}"><button class="btn btn-warning" disabled><b>Bukti Telah dikirim </b></button></a></strong></td>
                                    <td><strong><a href="{{ url('/edit-upload/'.$pesanan->id) }}"><button class="btn btn-secondary">Ubah Bukti Pembayaran</button></a></strong></td>

                                    @endif
                                </tr>
                            </table>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
