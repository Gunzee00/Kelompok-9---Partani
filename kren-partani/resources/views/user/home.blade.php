@extends('user.layouts.app')
@section('title')
    Home
@endsection
@section('content')
<style>
    #carouselExampleControls {
        max-height: 400px;
        overflow: hidden;
    }

    .carousel-inner {
        max-height: 100%;
    }

    .carousel-item {
        text-align: center;
    }

    .carousel-item img {
        max-height: 100%;
        margin: auto;
    }

    .card {
        border: 1px solid rgb(1, 1, 1);
        margin: 5px;
        width: 100%;
        max-width: 350px; /* Set max-width for responsiveness */
    }

    .card-img-container {
        position: relative;
        width: 100%;
        height: 200px;
    }

    .card-img-container img {
        width: 100%;
        height: 100%;
        object-fit: cover; /* Use cover for maintaining aspect ratio */
    }
</style>
<div class="container">
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="img/sampul.png" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/banalu.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/baner.jpg" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
{{-- </div>

<div class="container"> --}}
    <div class="row">
      @foreach ($dataMenu as $produk)
      <div class="card row-sm-4" style="border: 1px solid rgb(1, 1, 1); margin:5px; width:350px; height:auto;justify-content:center; align-items:center;">
          <div style="position:relative; width:300px; height:200px;">
              <img src="{{ url('productimage') }}/{{ $produk->gambar_produk }}" class="card-img-top" alt="{{ $produk->gambar_produk }}" style=" width:100%; height:100%; object-fit:scale-down;"/>
          </div>
          <div class="card-body">
              <h5 class="card-title">{{ $produk->nama_produk }}</h5>
              <p class="card-text">
                  <strong>Harga :</strong> Rp.{{ number_format($produk->harga) }} <br>
                  <strong>Stok :</strong> {{ $produk->stok }} <br>
                  <hr>
                  <h>Keterangan : {{ substr($produk->keterangan, 0, 100) }}...</h> <br>
              </p>
              @if($produk->stok <= 0)
                  <p class="text-danger">*Maaf, stok sudah habis.</p>
                  <a href="{{ url('pesan') }}/{{ $produk->id }}" class="btn btn-secondaryw disabled"><i class="fas fa-shopping-cart"></i> Pesan</a>
              @else
                  <a href="{{ url('pesan') }}/{{ $produk->id }}" class="btn btn-primary"><i class="fas fa-shopping-cart"></i> Pesan</a>
              @endif
          </div>
      </div>
  @endforeach
  
    </div>
</div>
        <section class="section" id="our-classes">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 offset-lg-2">
                        <div class="section">
                            <img src="assets/images/line-dec.png" alt="">
                        </div>
                    </div>
                </div>
                <section id="gtco-about" data-section="about">             
                </section>
                <!-- jQuery -->
                <script src="aset/js/jquery-2.1.0.min.js"></script>
                <!-- Bootstrap -->
                <script src="aset/js/popper.js"></script>
                <script src="aset/js/bootstrap.min.js"></script>
                <!-- Plugins -->
                <script src="aset/js/scrollreveal.min.js"></script>
                <script src="aset/js/waypoints.min.js"></script>
                <script src="aset/js/jquery.counterup.min.js"></script>
                <script src="aset/js/imgfix.min.js"></script>
                <script src="aset/js/mixitup.js"></script>
                <script src="aset/js/accordions.js"></script>
                <!-- Global Init -->
                <script src="assets/js/custom.js"></script>
                </body>
                </html>
            @endsection
