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
           .img_deg{
            height: 70px;
            width: 70px;
          
            margin: auto;
        }
      </style>
   </head>
   <body>
      <div class="hero_area">
         <!-- header section strats -->
          @include('home.header')
         <!-- end header section -->

         <div class="container">
        <div class="row">
            <div class="col-sm-8 mx-auto my-5" >
                <h1 style="text-align:center; font-size:25px;" class="my-3" >All Orders</h1>
                <table class="table table-bordered table-dark  table-hover">
                    <thead class="bg-danger">
                        <tr>
                        <th>Product Title</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Payment Status</th>
                        <th>Delivery Status</th>
                        <th>Image</th>
                        <th>Cancel Order</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($order as $order)
                        <tr>
                            <td>{{$order->product_title}}</td>
                            <td>{{$order->quantity}}</td>
                            <td>${{$order->price}}</td>
                            <td>{{$order->payment_status}}</td>
                            <td>{{$order->delivery_status}}</td>
                            <td>
                                <img class="img_deg"src="/product/{{$order->image}}" alt="">
                            </td>

                            <td>
                                @if($order->delivery_status == "processing")
                                <a  onclick="return confirm('Are You sure to canceled the Order?')" class="btn btn-info" href="{{url('cancel_order',$order->id)}}">Cancel Order</a>
                                @else
                                <a class="disabled btn btn-info dissablled" href="#">Cancel Order</a>
                                @endif
                            </td>
                        </tr>
                        @endforeach
                       
                    </tbody>
                </table>
            </div>
        </div>
    </div>
   
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