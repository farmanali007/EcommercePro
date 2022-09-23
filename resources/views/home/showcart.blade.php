<!DOCTYPE html>
<html>
   <head>
      <!-- Basic -->
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <!-- Mobile Metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <!-- Site Metas -->
      <meta name="keywords" content="" />
      <meta name="description" content="" />
      <meta name="author" content="" />
      <link rel="shortcut icon" href="images/favicon.png" type="">
      <title>Famms - Fashion HTML Template</title>
      <!-- bootstrap core css -->
      <link rel="stylesheet" type="text/css" href="home/css/bootstrap.css" />
      <!-- font awesome style -->
      <link href="home/css/font-awesome.min.css" rel="stylesheet" />
      <!-- Custom styles for this template -->
      <link href="home/css/style.css" rel="stylesheet" />
      <!-- responsive style -->
      <link href="home/css/responsive.css" rel="stylesheet" />
      <style>
        .center{
            margin:auto;
            width: 50%;
            text-align:center;
            padding: 30px;
        }

        table,th,td{
            border: 1px solid grey;
        }
        .th_deg{
           font-size: 20px;
           padding: 5px; 
           background-color: green;
        }
        .img_deg{
            height: 100px;
            width: 100px;
          
            margin: auto;
        }
        .total_deg{

            font-size: 20px;
            text-align: center;
            display: inline-block;
            width: 400px;
            margin: auto;

        }
        
      </style>
   </head>
   <body>
      <div class="hero_area">
         <!-- header section strats -->
          @include('home.header')
         <!-- end header section -->

         @if(session()->has('message'))

                 <div class="alert alert-success">
                <button class="close" type="button" aria-hidden="ture" data-dismiss="alert">x</button>
                {{session()->get('message')}}

                </div>
                @endif
    
      
           
      <table class="center">
        <tr class="th_deg">
            <th >Product title</th>
            <th>Product quantity</th>
            <th>Price</th>
            <th>Image</th>
            <th>Action</th>
        </tr>
        <?php $totalPrice = 0; ?>
        @foreach($cart as $cart)
        <tr>
           <td>{{$cart->product_title}}</td>
           <td>{{$cart->quantity}}</td>
           <td>${{$cart->price}}</td>
           <td><img class="img_deg" src="/product/{{$cart->image}}" alt=""></td>
           <td><a class="btn btn-danger" onclick="return confirm('Are You Sure To Remove This Product?')" href="{{url('remove_cart',$cart->id)}}">remove</a></td>
        
        </tr>
        <?php $totalPrice = $totalPrice  + $cart->price; ?>
        @endforeach
      </table>


      <table>
        <div class="total_deg">
            <h1>Total Price : ${{$totalPrice}}</h1>
        </div>

        <div class="total_deg">
         <h1>Proceed to Order</h1>
         <a href="{{url('cash_order')}}" class="btn btn-danger">Cash On Delivery</a>
         <a href="{{url('stripe',$totalPrice)}}" class="btn btn-danger">Pay Using Card</a>
        </div>
      </table>
      <!-- footer start -->
    
      <!-- footer end -->
      <div class="cpy_">
         <p class="mx-auto">© 2021 All Rights Reserved By <a href="https://html.design/">Free Html Templates</a><br>
         
            Distributed By <a href="https://themewagon.com/" target="_blank">ThemeWagon</a>
         
         </p>
      </div>
      <!-- jQery -->
      <script src="home/js/jquery-3.4.1.min.js"></script>
      <!-- popper js -->
      <script src="home/js/popper.min.js"></script>
      <!-- bootstrap js -->
      <script src="home/js/bootstrap.js"></script>
      <!-- custom js -->
      <script src="home/js/custom.js"></script>
   </body>
</html>