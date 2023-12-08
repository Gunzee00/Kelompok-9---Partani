<?php

namespace App\Http\Controllers;

use Carbon\Carbon;

use Dompdf\Dompdf;
use App\Models\User;
use App\Models\Produk;
use App\Models\Pesanan;
use PDF;
use Illuminate\Http\Request;
use App\Models\PesananDetail;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;


class ProdukController extends Controller
{
    public function detailproduk($id)
    {
        $produk = Produk::where('id', $id)->first();
        $jumlah = PesananDetail::all();
        return view('user.produk.detail-produk', [
            "title" => 'Detail Produk'
        ], compact('produk', 'jumlah'));
    }   
}

    