<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Gloudemans\Shoppingcart\Facades\Cart;
use App\Models\Order;
use App\Models\OrderItem;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon; 

use Illuminate\Support\Facades\Mail;
use App\Mail\OrderMail;

class CashController extends Controller
{
     public function CashOrder(Request $request){

		$carts = Cart::content();
    	$cartQty = Cart::count();
    	$cartTotal = 0;
        
        foreach ($carts as $item) {
            $rentalStartDate = \Carbon\Carbon::parse($item->options->tanggal_peminjaman);
            $rentalEndDate = \Carbon\Carbon::parse($item->options->tanggal_pengembalian);
            $rentalDuration = ($rentalEndDate->diffInDays($rentalStartDate))+1;

            $subtotal = $item->price * $item->qty * $rentalDuration;
            $cartTotal += $subtotal;
        }

    	if (Session::has('coupon')) {
    		$total_amount = $cartTotal;
    	}else{
    		$total_amount = $cartTotal;
    	}
 
	 

	  // dd($charge);

     $order_id = Order::insertGetId([
     	'user_id' => Auth::id(),
     	'division_id' => $request->division_id,
     	'district_id' => $request->district_id,
     	'state_id' => $request->state_id,
     	'name' => $request->name,
     	'email' => $request->email,
     	'phone' => $request->phone,
     	'post_code' => $request->post_code,
     	'address' => $request->address,

     	'payment_type' => 'Cash On Delivery',
     	'payment_method' => 'Cash On Delivery',
     	 
     	'currency' =>  'Rp',
     	'amount' => $total_amount,
     	 
			'order_number' => mt_rand(10000000,99999999),
     	'invoice_no' => 'ESZ'.mt_rand(10000000,99999999),
     	'order_date' => Carbon::now()->format('d F Y'),
     	'order_month' => Carbon::now()->format('F'),
     	'order_year' => Carbon::now()->format('Y'),
     	'status' => 'ditunda',
     	'created_at' => Carbon::now(),	 

     ]);

     


       $carts = Cart::content();
        foreach ($carts as $cart) {
            $tanggal_peminjaman = $cart->options->tanggal_peminjaman;
            $tanggal_pengembalian = $cart->options->tanggal_pengembalian;
            
            // Menghitung durasi antara tanggal peminjaman dan tanggal pengembalian
            $durasi_sewa = Carbon::parse($tanggal_peminjaman)->diffInDays($tanggal_pengembalian);
        
            // Mengalikan harga (price) dengan durasi sewa
            $total_price = $cart->price * ($durasi_sewa+1);
        
            OrderItem::insert([
                'order_id' => $order_id, 
                'product_id' => $cart->id,
                'qty' => $cart->qty,
                'weight' => $cart->weight,
                'price' => $total_price,
                'tanggal_peminjaman' => $tanggal_peminjaman,
                'tanggal_pengembalian' => $tanggal_pengembalian,
                'created_at' => Carbon::now(),
            ]);
        }

		 //  Start Send Email 
     $invoice = Order::findOrFail($order_id);
     	$data = [
     		'invoice_no' => $invoice->invoice_no,
     		'amount' => $total_amount,
     		'name' => $invoice->name,
     	  'email' => $invoice->email,
     	];

     	Mail::to($request->email)->send(new OrderMail($data));

    	//  End Send Email


     if (Session::has('coupon')) {
     	Session::forget('coupon');
     }

     Cart::destroy();

     $notification = array(
			'message' => 'Pesanan Berhasil Dipesan',
			'alert-type' => 'success'
		);

		return redirect()->route('dashboard')->with($notification);
 

    } // end method 





}
 