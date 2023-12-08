@extends('admin.layouts.master')
@section('content')
@php
    use Illuminate\Support\Str;
@endphp
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Tambahkan Barang Kamu Disini</h4>
                            <p class="card-description">
                                <a href="{{ route('add.menu') }}"><button type="button"
                                        class="btn btn-info btn-icon-text">Tambah Barang<i
                                            class="mdi mdi-bookmark-plus"></i></button></a>
                            </p>
                            <div class="table-responsive pt-3">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr class="text-center">
                                            <th class="text-center">
                                                <h6>No.</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Nama Barang</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Harga</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Satuan Perpesanan</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Deskripsi</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Stok</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Lokasi Produk</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Action</h6>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($dataMenu as $index => $data)
                                            <tr>
                                                <td class="text-center">{{ $index + $dataMenu->firstItem() }}</td>
                                                <td class="text-center">{{ $data->nama_produk }}</td>
                                                <td class="text-center">{{ $data->harga }}</td>
                                                <td class="text-center">{{ $data->satuan_perpesanan }}</td>
                                                <td class="text-center">{{ ($data->keterangan) }}</td>

                                                <td class="text-center">
                                                    @if ($data->stok == 0)
                                                        <span class="text-danger">Stok Habis</span>
                                                    @else
                                                        {{ $data->stok }}
                                                    @endif
                                                </td>
                                                <td class="text-center">{{ ($data->lokasi) }}</td>
                                                <td class="text-center" style="vertical-align: middle;">
                                                    <a href="{{ url('/edit-menu/' . $data->id) }}"  onclick="return confirm('Apakah Anda yakin ingin mengubah data ini?')">
                                                        <button type="button" class="btn btn-warning btn-icon-text">
                                                            <i class="ti-reload btn-icon-prepend"></i>Ubah
                                                        </button>
                                                    </a>
                                                
                                                    <a href="{{ url('/delete/' . $data->id) }}"
                                                        onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">
                                                        <button type="button" class="btn btn-danger btn-icon-text"
                                                            data-id="{{ $data->id }}"
                                                            data-name="{{ $data->nama_produk }}">
                                                            <i class="mdi mdi-delete"></i>Hapus
                                                        </button>
                                                    </a>
                                                </td>
                                                
                                            

                                                    
                                               
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                {{ $dataMenu->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
        </script>

{{-- <script>
    function confirmDelete(event) {
      event.preventDefault(); // Menghentikan tindakan default saat mengklik tautan
    
      var id = event.target.getAttribute('data-id');
      var name = event.target.getAttribute('data-name');
      var confirmation = confirm("Apakah Anda yakin ingin menghapus data '" + name + "'?");
    
      if (confirmation) {
        // Redirect ke tautan hapus dengan ID yang sesuai
        window.location.href = "{{ url('/delete/') }}" + '/' + id;
      }
    }
    
    var deleteButtons = document.querySelectorAll('.btn-danger');
    
    deleteButtons.forEach(function(button) {
      button.addEventListener('click', confirmDelete);
    });
    </script> --}}
    @endsection
