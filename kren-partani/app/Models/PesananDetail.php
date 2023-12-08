<?php

namespace App\Models;

use App\Models\Pesanan;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class PesananDetail extends Model
{
      use HasFactory;

     

      public function produk()
      {
            return $this->belongsTo('App\Models\Produk', 'produk_id', 'id');
      }

      public function pesanan()
      {
            return $this->belongsTo(Pesanan::class, 'pesanan_id', 'id');
      }
}
