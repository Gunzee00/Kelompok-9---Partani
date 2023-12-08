<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PenjualanProduk extends Model
{
    use HasFactory;
    protected $table = 'penjualan_produk';

    protected $fillable = [
        'bukti_pengiriman',
        'pesanan_id',
    ];

    public function pesanan2()
    {
        return $this->belongsTo(Pesanan::class, 'pesanan_id', 'id');
    }
}
