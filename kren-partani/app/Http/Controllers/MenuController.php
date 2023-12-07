<?php

namespace App\Http\Controllers;

use App\Models\Kamar;
use App\Models\Produk;
use Illuminate\Http\Request;
use App\Models\PesananDetail;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Redirect;

class MenuController extends Controller
{
    public function index()
    {
        $dataMenu = Produk::paginate(4);
        return view('admin.menu.index', [
            "title" => 'Tambah Tiket'
        ], compact('dataMenu'));
    }

    public function menu()
    {
        return view('admin.menu.add', [
            "title" => "Tambah Data Menu"
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_produk' => 'required',
            'harga' => 'required',
            'keterangan' => 'required',
            'stok' => 'required',
            'gambar_produk' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'satuan_perpesanan' => 'required',
        ]);

        $menu = Produk::create([
            'nama_produk' => $request->nama_produk,
            'harga' => $request->harga,
            'keterangan' => $request->keterangan,
            'stok' => $request->stok,
            'satuan_perpesanan' => $request->satuan_perpesanan,
            'gambar_produk' => $request->gambar_produk,
        ]);

        if ($request->hasFile('gambar_produk')) {
            $request->file('gambar_produk')->move('productimage/', $request->file('gambar_produk')->getClientOriginalName());
            $menu->gambar_produk = $request->file('gambar_produk')->getClientOriginalName();
            $menu->save();
        }

        return redirect()->route('menu')->with('toast_success', 'Sukses, Tiket berhasil ditambahkan');
    }

    public function getUpdate($id)
    {
        $dataMenuUpdate = Produk::find($id);
        return view('admin.menu.edit', [
            "title" => 'Edit Data Menu'
        ], compact('dataMenuUpdate'));
    }


    //update yang lama
    public function update(Request $request, $id)
    {
        $request->validate([
            'nama_produk' => 'required',
            'harga' => 'required',
            'keterangan' => 'required',
            'stok' => 'required',
            'satuan_perpesanan' => 'required',
            
        ]);
        $update = ['nama_produk' => $request->nama_produk, 'harga' => $request->harga, 'keterangan' => $request->keterangan, 'stok' => $request->stok,'satuan_perpesanan' => $request->satuan_perpesanan];
        if ($files = $request->file('nama_produk')) {
            $destinationPath = 'productimage/'; // upload path
            $profileImage = date('YmdHis') . "." . $files->getClientOriginalName();
            $files->move($destinationPath, $profileImage);
            $update['nama_produk'] = "$profileImage";
        }
        $update['nama_produk'] = $request->get('nama_produk');
        $update['harga'] = $request->get('harga');
        $update['keterangan'] = $request->get('keterangan');
        $update['stok'] = $request->get('stok');
        $update['satuan_perpesanan'] = $request->get('satuan_perpesanan');
        Produk::where('id', $id)->update($update);
        return Redirect::to('menu')
            ->with('toast_success', 'Sukses, Tiket berhasil di update');
    }


    //delete yang lama
    // public function delete($id)
    // {
    //     $data = Tiket::find($id);
    //     $data->delete();
    //     return redirect()->route('menu')->with('toast_success', 'Tiket berhasil dihapus');
    // }

    public function delete($id)
{
    $produk = Produk::find($id);

    // Cek apakah tiket sudah digunakan dalam pesanan
    $pesananDetail = PesananDetail::where('produk_id', $id)->first();
    if ($pesananDetail) {
        return redirect()->route('menu')->with('toast_error', 'Tiket tidak dapat dihapus karena sudah digunakan dalam pesanan.');
    }

    $produk->delete();

    return redirect()->route('menu')->with('toast_success', 'Tiket berhasil dihapus');
}

    public function menuUser()
    {
        $dataMenu = Produk::all();
       
        $kamar = Kamar::all();
        
        return view('user.menu', [
            "title" => 'List Menu'
        ], compact('dataMenu','kamar'));
    }

    public function show($id_kamar)
    {
        $kamar = Kamar::find($id_kamar);
        return view('user.detail-kamar', [
            "title" => 'Detail Kamar'
        ], ['kamar' => $kamar]);
        return view('admin.kamar.kamar', [
            "title" => 'Detail Kamar'
        ], ['kamar' => $kamar]);
    }
  
//     $kamar = Kamar::find($id_kamar);
//     return view('user.detail-kamar', [
//         "title" => 'Lihat Kamar',
//     ], compact('kamar'));
// }
}
