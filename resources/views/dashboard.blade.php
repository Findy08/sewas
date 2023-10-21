@extends('frontend.main_master')
@section('content')


@php
$id = Auth::user()->id;
$user = App\Models\User::find($id);
@endphp

<div class="breadcrumb">
    <div class="container">
        <div class="breadcrumb-inner">
            <ul class="list-inline list-unstyled">
                <li><a href="home.html">Beranda</a></li>
                <li class='active'>Akun Saya</li>
            </ul>
        </div><!-- /.breadcrumb-inner -->
    </div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content">
    <div class="container">
        <div class="row">

					@include('frontend.common.user_sidebar')
					
            <div class="col-md-10">
                <h4 class="text-center">
                    <!-- Menampilkan nama yang login -->
                    Selamat Menyewa Barang <strong class="text-danger">{{ Auth::user()->name }}</strong> Di Sewas
                </h4>
                <h4 class="text-center">
                    "SEWA BARANG YA DI SEWAS AJA"
                </h4>
            </div> 

        </div> <!-- // end row -->
    </div>
</div>


@endsection