<!DOCTYPE html>
<html lang="en">
@php

@endphp

<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
  
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <meta name="robots" content="all">

  

    <title>@yield('title') </title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/bootstrap.min.css') }}">

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/main.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/blue.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/owl.carousel.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/owl.transitions.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/animate.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/rateit.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/bootstrap-select.min.css') }}">

    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/font-awesome.css') }}">

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800'
        rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css">

    <script src="https://js.stripe.com/v3/"></script>
</head>

<body class="cnt-home">
    <!-- ============================================== HEADER ============================================== -->
    @include('frontend.body.header')

    <!-- ============================================== HEADER : END ============================================== -->
    @yield('content')
    <!-- /#top-banner-and-menu -->

    <!-- ============================================================= FOOTER ============================================================= -->
    @include('frontend.body.footer')
    <!-- ============================================================= FOOTER : END============================================================= -->


    <script src="{{ asset('frontend/assets/js/jquery-1.11.1.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/bootstrap-hover-dropdown.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/echo.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/jquery.easing-1.3.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/bootstrap-slider.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/jquery.rateit.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('frontend/assets/js/lightbox.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/bootstrap-select.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/wow.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/scripts.js') }}"></script>

    <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

    <script>
        @if(Session::has('message'))
        var type = "{{ Session::get('alert-type','info') }}"
        switch (type) {
            case 'info':
                toastr.info(" {{ Session::get('message') }} ");
                break;

            case 'success':
                toastr.success(" {{ Session::get('message') }} ");
                break;

            case 'warning':
                toastr.warning(" {{ Session::get('message') }} ");
                break;

            case 'error':
                toastr.error(" {{ Session::get('message') }} ");
                break;
        }
        @endif
    </script>



    <!-- Keranjang Product Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><strong><span id="pname"></span> </strong></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" id="closeModel">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">

                    <div class="row">

                        <div class="col-md-4">

                            <div class="card" style="width: 18rem;">

                                <img src=" " class="card-img-top" alt="..." style="height: 200px; width: 200px;"
                                    id="pimage">

                            </div>

                        </div><!-- // end col md -->


                        <div class="col-md-4">

                            <ul class="list-group">
                                <li class="list-group-item">Harga: <strong class="text-danger">Rp<span
                                            id="pprice"></span></strong>
                                    <del id="oldprice">Rp</del>
                                </li>
                                <li class="list-group-item">Kode Produk: <strong id="pcode"></strong></li>
                                <li class="list-group-item">Kategori: <strong id="pcategory"></strong></li>
                                <li class="list-group-item">Berat: <strong id="pweight"></strong> gr</li>
                                <li class="list-group-item">Stok: <span class="badge badge-pill badge-success"
                                        id="aviable" style="background: green; color: white;"></span>
                                    <span class="badge badge-pill badge-danger" id="stockout"
                                        style="background: red; color: white;"></span>

                                </li>
                            </ul>

                        </div><!-- // end col md -->


                        <div class="col-md-4">

                            <div class="form-group">
                                <label for="qty">Atur Jumlah</label>
                                <input type="number" class="form-control" id="qty" value="1" min="1">
                            </div>

                            <input type="hidden" id="product_id">
                            <button type="submit" class="btn btn-primary mb-2" onclick="addToCart()">Keranjang</button>


                        </div>
                    </div> 
                </div>
            </div>
        </div>
    </div>


    <script>
        $(document).ready(function () {
            $('#profileImage').change(function (e) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#showImage').attr('src', e.target.result);
                }
                reader.readAsDataURL(e.target.files['0']);
            });
        });
    </script>


    <script type="text/javascript">
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        })

        function numberformat(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
        }


        function productView(id) {
            // alert(id)
            $.ajax({
                type: 'GET',
                url: '/product/view/modal/' + id,
                dataType: 'json',
                success: function (data) {
                    // console.log(data)
                    $('#pname').text(data.product.product_name);
                    $('#price').text(data.product.product_price);
                    $('#pcode').text(data.product.product_code);
                    $('#pcategory').text(data.product.category.category_name);
                    $('#pbrand').text(data.product.brand.brand_name);
                    $('#pweight').text(data.product.product_weight);
                    $('#pimage').attr('src', '/' + data.product.product_thambnail);

                    $('#product_id').val(id);
                    $('#qty').val(1);

                    // Product Price 
                    if (data.product.product_discount == null) {
                        $('#pprice').text('');
                        $('#oldprice').text('');
                        $('#pprice').text(data.product.product_price);


                    } else {
                        $('#pprice').text(data.product.product_discount);
                        $('#oldprice').text(data.product.product_price);

                    } // end prodcut price 

                    // Start Stock opiton

                    if (data.product.product_qty > 0) {
                        $('#aviable').text('');
                        $('#stockout').text('');
                        $('#aviable').text('tersedia');

                    } else {
                        $('#aviable').text('');
                        $('#stockout').text('');
                        $('#stockout').text('tidak tersedia');
                    } // end Stock Option 

                  


                }

            })


        }


        // Start Keranjang Product 

        function addToCart() {
            var product_name = $('#pname').text();
            var product_weight = $('#pweight').text();
            var id = $('#product_id').val();
            var quantity = $('#qty').val();
            var tanggal_peminjaman = $('input[name="tanggal_peminjaman"]').val(); // Get the value of the borrowing date input field
            var tanggal_pengembalian = $('input[name="tanggal_pengembalian"]').val(); // Get the value of the return date input field

            $.ajax({
                type: "POST",
                dataType: 'json',
                data: {
                    quantity: quantity,
                    product_weight: product_weight,
                    product_name: product_name,
                    tanggal_peminjaman: tanggal_peminjaman, // Add the borrowing date to the data
                    tanggal_pengembalian: tanggal_pengembalian, // Add the return date to the data
                },
                url: "/cart/data/store/" + id,
                success: function (data) {

                    miniCart()
                    $('#closeModel').click();
                    // console.log(data)

                    // Start Message 
                    const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',
                        icon: 'success',
                        showConfirmButton: false,
                        timer: 3000
                    })
                    if ($.isEmptyObject(data.error)) {
                        Toast.fire({
                            type: 'success',
                            title: data.success
                        })

                    } else {
                        Toast.fire({
                            type: 'error',
                            title: data.error
                        })

                    }

                }
            })

        }

        // End Keranjang Product 
    </script>

    <script type="text/javascript">
        function numberformat(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
        }

        function miniCart() {
            $.ajax({
                type: 'GET',
                url: '/product/mini/cart',
                dataType: 'json',
                success: function (response) {

                    $('span[id="cartSubTotal"]').text(response.cartTotal);
                    $('#cartQty').text(response.cartQty);
                    var miniCart = ""

                    $.each(response.carts, function (key, value) {
                        miniCart += `<div class="cart-item product-summary">
          <div class="row">
            <div class="col-xs-4">
              <div class="image"> <a href="#"><img src="/${value.options.image}" alt=""></a> </div>
            </div>
            <div class="col-xs-7">
              <h3 class="name"><a href="#">${value.name}</a></h3>
              <div class="price"> Rp${numberformat(value.price)}</div>
              <a href="#">Dari : </a><br>
              <a href="#">${value.options.tanggal_peminjaman}</a>
              <a href="#">Sampai :</a><br>
              <a href="#">${value.options.tanggal_pengembalian}</a>
            </div>
            <div class="col-xs-1 action"> 
            <button type="submit" id="${value.rowId}" onclick="miniCartRemove(this.id)"><i class="fa fa-trash"></i></button> </div>
          </div>
        </div>
        <!-- /.cart-item -->
        <div class="clearfix"></div>
        <hr>`
                    });

                    $('#miniCart').html(miniCart);
                }
            })

        }
        miniCart();

        /// mini cart remove Start 
        function miniCartRemove(rowId) {
            $.ajax({
                type: 'GET',
                url: '/minicart/product-remove/' + rowId,
                dataType: 'json',
                success: function (data) {
                    miniCart();

                    // Start Message 
                    const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',
                        icon: 'success',
                        showConfirmButton: false,
                        timer: 3000
                    })
                    if ($.isEmptyObject(data.error)) {
                        Toast.fire({
                            type: 'success',
                            title: data.success
                        })

                    } else {
                        Toast.fire({
                            type: 'error',
                            title: data.error
                        })

                    }

                }
            });

        }

    </script>

    <!--  /// Start Add Wishlist Page  //// -->

    <script type="text/javascript">
        
        function addToWishList(product_id) {
            $.ajax({
                type: "POST",
                dataType: 'json',
                url: "/add-to-wishlist/" + product_id,

                success: function (data) {

                    // Start Message 
                    const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',

                        showConfirmButton: false,
                        timer: 3000
                    })
                    if ($.isEmptyObject(data.error)) {
                        Toast.fire({
                            type: 'success',
                            icon: 'success',
                            title: data.success
                        })

                    } else {
                        Toast.fire({
                            type: 'error',
                            icon: 'error',
                            title: data.error
                        })

                    }

                    // End Message 


                }

            })

        }
    </script>

    <!--  /// End Add Wishlist Page  ////   -->

    <!-- /// Load Wishlist Data  -->


    <script type="text/javascript">
        function numberformat(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
        }
        function wishlist() {
            $.ajax({
                type: 'GET',
                url: '/user/get-wishlist-product',
                dataType: 'json',
                success: function (response) {

                    var rows = ""
                    $.each(response, function (key, value) {
                        rows += `<tr>
                    <td class="col-md-2"><img src="/${value.product.product_thambnail} " alt="imga"></td>
                    <td class="col-md-7">
                        <div class="product-name"><a href="#">${value.product.product_name}</a></div>
                        <div class="price">
                            ${value.product.product_discount == null ? 
                                `Rp${numberformat(value.product.product_price)}` :
                                `Rp${numberformat(value.product.product_discount)}
                                    <span>Rp${numberformat(value.product.product_price)}</span>`
                            }
                        </div>
                    </td>
        <td class="col-md-2">
            <button class="btn btn-primary icon" type="button" title="Add Cart" data-toggle="modal" data-target="#exampleModal" id="${value.product_id}" onclick="productView(this.id)"> Keranjang </button>
        </td>
        <td class="col-md-1 close-btn">
            <button type="submit" class="" id="${value.id}" onclick="wishlistRemove(this.id)"><i class="fa fa-times"></i></button>
        </td>
                </tr>`
                    });

                    $('#wishlist').html(rows);
                }
            })

        }
        wishlist();



        ///  Wishlist remove Start 
        function wishlistRemove(id) {
            $.ajax({
                type: 'GET',
                url: '/user/wishlist-remove/' + id,
                dataType: 'json',
                success: function (data) {
                    wishlist();

                    // Start Message 
                    const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',

                        showConfirmButton: false,
                        timer: 3000
                    })
                    if ($.isEmptyObject(data.error)) {
                        Toast.fire({
                            type: 'success',
                            icon: 'success',
                            title: data.success
                        })

                    } else {
                        Toast.fire({
                            type: 'error',
                            icon: 'error',
                            title: data.error
                        })

                    }

                    // End Message 

                }
            });

        }

        // End Wishlist remove   
    </script>


    {{-- Cart Page --}}
    <script type="text/javascript">
        function numberformat(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
        }

        function cart() {
            $.ajax({
                type: 'GET',
                url: '/user/get-cart-product',
                dataType: 'json',
                success: function (response) {

                    var rows = ""
                    $.each(response.carts, function (key, value) {

                        var startDate = new Date(value.options.tanggal_peminjaman);
                        var endDate = new Date(value.options.tanggal_pengembalian);
                        var timeDiff = Math.abs(endDate.getTime() - startDate.getTime());
                        var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24))+1;

                        // Menghitung subtotal
                        var subtotal = value.price * value.qty * diffDays;
 
                        rows +=
                            `<tr>
                    <td class="col-md-2">
                        <img src="/${value.options.image} " alt="imga" style="width:60px; height:60px;">
                    </td>
                    
                    <td class="col-md-2">
                        <div class="product-name">
                            <h6><a href="#">${value.name}</a></h6>
                        </div>
                        
                        <div class="price"><h6>Rp${numberformat(value.price)} / Hari</h6></div>
                    </td>

                    <td class="col-md-3">
                        <!-- jika qty bernilai satu, disable kan -->
                        ${value.qty > 1 ? `<button type="submit" class="btn btn-primary btn-sm" id="${value.rowId}" onclick="cartDecrement(this.id)" >-</button> ` : `<button type="submit" class="btn btn-primary btn-sm" disabled >-</button> `}
                        <input type="text" value="${value.qty}" min="1" max="100" disabled="" style="width:25px;" >  
                        <button type="submit" class="btn btn-primary btn-sm" id="${value.rowId}" onclick="cartIncrement(this.id)" >+</button>    
                    </td>

                    <td class="col-md-2">
                        <strong>Tanggal Peminjaman:</strong> ${value.options.tanggal_peminjaman}<br>
                        <strong>Tanggal Pengembalian:</strong> ${value.options.tanggal_pengembalian}
                    </td>
               

                    <td class="col-md-2">
                        <strong>Rp${numberformat(subtotal)}</strong> 
                    </td>

                 
            
                    <td class="col-md-1 close-btn">
                        <button type="submit" class="" id="${value.rowId}" onclick="cartRemove(this.id)"><i class="fa fa-times"></i></button>
                    </td>
                </tr>`
                    });
                    $('#cartPage').html(rows);
                }
            })
        }

        cart();

        // Remove Cart
        function cartRemove(id) {
            $.ajax({
                type: 'GET',
                url: '/user/cart-remove/' + id,
                dataType: 'json',
                success: function (data) {
                    couponCalculation();
                    cart();
                    miniCart();
                    $('#couponField').show();
                    $('#coupon_name').val('');

                    // Start Message 
                    const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',

                        showConfirmButton: false,
                        timer: 3000
                    })
                    if ($.isEmptyObject(data.error)) {
                        Toast.fire({
                            type: 'success',
                            icon: 'success',
                            title: data.success
                        })

                    } else {
                        Toast.fire({
                            type: 'error',
                            icon: 'error',
                            title: data.error
                        })

                    }

                    // End Message 

                }
            });

        }

        // Cart Increment
        function cartIncrement(rowId) {
            $.ajax({
                type: 'GET',
                url: "/cart-increment/" + rowId,
                dataType: 'json',
                success: function (data) {
                    couponCalculation();
                    cart();
                    miniCart();
                }
            });
        }

        // Cart Decrement
        function cartDecrement(rowId) {
            $.ajax({
                type: 'GET',
                url: "/cart-decrement/" + rowId,
                dataType: 'json',
                success: function (data) {
                    couponCalculation();
                    cart();
                    miniCart();
                }
            });
        }
    </script>

    {{-- Coupon Apply --}}
    <script type="text/javascript">
        function applyCoupon() {
            var coupon_name = $('#coupon_name').val();
            $.ajax({
                type: 'POST',
                dataType: 'json',
                data: {
                    coupon_name: coupon_name
                },
                url: "{{ url('/coupon-apply') }}",
                success: function (data) {
                    couponCalculation();
                    if (data.validity == true) {
                        $('#couponField').hide();
                    }

                    // Start Message 
                    const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',

                        showConfirmButton: false,
                        timer: 3000
                    })


                    if ($.isEmptyObject(data.error)) {
                        Toast.fire({
                            type: 'success',
                            icon: 'success',
                            title: data.success
                        })

                    } else {
                        Toast.fire({
                            type: 'error',
                            icon: 'error',
                            title: data.error
                        })
                    } // End Message 
                }
            })
        }

        function couponCalculation() {
            $.ajax({
                type: 'GET',
                url: "{{ url('/coupon-calculation') }}",
                dataType: 'json',
                success: function (data) {
                    //ERROR , ga ditampilin terlebih dahulu
                    
                    // if (data.total) {
                    //     $('#couponCalField').html(
                    //         `
                    // <div class="cart-sub-total">
                    //     <h5>Subtotal<span class="inner-left-md" style="float: right; font-size: 18px; line-height: 20px;">Rp${numberformat(data.total)}</span></h5>
                    // </div>
                    // <div class="cart-sub-total">
                    //     <h5>Deposit<span class="inner-left-md" style="float: right; font-size: 18px; line-height: 20px;">Rp${numberformat(data.total*20/100)}</span></h5>
                    // </div>
                    // <div class="cart-grand-total">
                    //     <h4>Total Bayar<span class="inner-left-md" style="float: right; font-size: 18px; line-height: 20px;">Rp${numberformat(data.total)}</span></h4>
                    // </div>`
                    //     )

                    // } else {

                    //     $('#couponCalField').html(
                    //         `<div class="cart-grand-total">
                    //     <h5>Subtotal<span class="inner-left-md" style="float: right; font-size: 18px; line-height: 20px;">Rp${numberformat(data.subtotal)}</span></h5>
                    // </div>
                    // <div class="cart-grand-total">
                    //     <h5>Kupon<span class="inner-left-md" style="float: right; font-size: 18px; line-height: 20px;">${data.coupon_name}</span></h5>
                    //     <button type="submit" onclick="couponRemove()"><i class="fa fa-times"></i>  </button>
                    // </div>
                    // <div class="cart-grand-total">
                    //     <h5>Total Diskon<span class="inner-left-md" style="float: right; font-size: 18px; line-height: 20px;">Rp${numberformat(data.discount_amount)}</span></h5>
                    // </div>
                    // <div class="cart-grand-total">
                    //     <h4>Total Bayar<span class="inner-left-md" style="float: right; font-size: 18px; line-height: 20px;">Rp${numberformat(data.total_amount)}</span></h4>
                    // </div>`
                    //     )
                    // }
                }
            });
        }
        couponCalculation();
    </script>

    {{-- Remove Coupon --}}
    <script type="text/javascript">
        function couponRemove() {
            $.ajax({
                type: 'GET',
                url: "{{ url('/coupon-remove') }}",
                dataType: 'json',
                success: function (data) {
                    couponCalculation();
                    $('#couponField').show();
                    $('#coupon_name').val('');

                    // Start Message 
                    const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',

                        showConfirmButton: false,
                        timer: 3000
                    })
                    if ($.isEmptyObject(data.error)) {
                        Toast.fire({
                            type: 'success',
                            icon: 'success',
                            title: data.success
                        })

                    } else {
                        Toast.fire({
                            type: 'error',
                            icon: 'error',
                            title: data.error
                        })

                    } // End Message 
                }
            });
        }
    </script>

</body>

</html>