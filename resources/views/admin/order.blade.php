<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    @include('admin.css')
    <style>

.title_deg{
             font-size: 25px;
             font-weight: bold;
             text-align: center;
             padding-bottom: 40px;

    }
.table_deg{

    border: 2px solid white;

    width: 100%;
    margin: auto;
    padding: 50px;
    text-align: center;
}
.img_deg{
            height: 100px;
            width: 100px;
          
            margin: auto;
        }
        .input{
          color: black;
     
        }



    </style>
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:partials/_sidebar.html -->
      @include('admin.sidebar')
      <!-- partial -->
      @include('admin.header')
      <div class="main-panel">
            <div class="content-wrapper">

            <h1 class="title_deg">All Orders</h1>

            <div style="padding-left: 700px; padding-bottom: 30px;">
              <form action="{{url('search')}}" method="GET">
                <input class="input" type="text" name="search" placeholder="Search For something">
                <input type="submit" value="search" class="btn btn-outline-primary">
              </form>
            </div>

            <table class="table_deg">
                <tr style="background-color:green ;">
                    <th>Name</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Phone</th>
                    <th>Product Title</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Payment Status</th>
                    <th>Delivery Status</th>
                    <th>Image</th>
                    <th>Delivered</th>
                    <th>Print PDF</th>
                    <th>Send Email</th>
                </tr>
                  <?php $totalsale=0; ?>
                  @forelse($order as $order)
                <tr>
                    <td>{{$order->name}}</td>
                    <td>{{$order->email}}</td>
                    <td>{{$order->address}}</td>
                    <td>{{$order->phone}}</td>
                    <td>{{$order->product_title}}</td>
                    <td>{{$order->quantity}}</td>
                    <td>${{$order->price}}</td>
                    <td>{{$order->payment_status}}</td>
                    <td>{{$order->delivery_status}}</td>
                    <td>

                    <img class="img_deg" src="/product/{{$order->image}}" alt="">
                    </td>
                    @if($order->delivery_status=='processing')
                    <td>
                    <a class="btn btn-success  " href="{{url('delivered', $order->id)}}">Delivered</a>
                    </td>
                    @elseif($order->delivery_status == 'canceled')
                    <td>
                    <a class="btn btn-success disabled" href="{{url('delivered', $order->id)}}">Delivered</a>
                    </td>
                      
                    
                    @else
                    <td><p style="color: green;">Delivered</p></td>
                    @endif

                    <td>
                        <a class="btn btn-secondary" href="{{url('print_pdf',$order->id)}}">Print PDF</a>
                    </td>

                    <td>
                        <a class="btn btn-info" href="{{url('send_email',$order->id)}}">Send Email</a>
                    </td>
                </tr>

                <?php $totalsale += $order->price; ?>


                @empty

                <tr>
                  <td colspan="16">
                    NO Data Found
                  </td>
                </tr>
                @endforelse
            </table>

            <h1>Today Total sale: ${{$totalsale}}</h1>


      
            </div>
            </div>
        <!-- partial -->

    <!-- container-scroller -->
    <!-- plugins:js -->
    @include('admin.script')
    <!-- End custom js for this page -->
  </body>
</html>