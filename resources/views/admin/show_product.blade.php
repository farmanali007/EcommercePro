<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    @include('admin.css')
    <style>
.center{
margin: auto;
width: 70%;
border: 2px solid white;
text-align: center;
margin-top: 40px;
              
}
.font_size{
    /* margin: auto; */
    padding-top: 20px;
    font-size: 40px;
    text-align: center;
}
.img_size{
    width: 75px;
    height: 75px;
}
td{
   padding: 10px;
  
}
th{
    background-color: green;
    padding: 10px;
  
}





    </style>
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:partials/_sidebar.html -->
      @include('admin.sidebar')
      <!-- partial -->
      @include('admin.header')
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
            @if(session()->has('message'))

                 <div class="alert alert-success">

                 <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
                         {{session()->get('message')}}
                </div>

                  @endif
                <h2 class="font_size">All Product</h2>
               <table class="center">
                <tr>
                    <th>Product title</th>
                    <th>Description</th>
                    <th>Quantity</th>
                    <th>Catagory</th>
                    <th>price</th>
                    <th>Discount</th>
                    <th>Product Image</th>
                    <th>Delete</th>
                    <th>Edit</th>
                    @foreach($product as $product)
                </tr>
                <tr>
                <td>{{$product->title}}</td>
                <td>{{$product->description}}</td>
                <td>{{$product->quantity}}</td>
                <td>{{$product->catagory}}</td>
                <td>{{$product->price}}</td>
                <td>{{$product->discount_price}}</td>
                <td>
                    <img class="img_size" src="/product/{{$product->image}}">
                </td>

                <td><a class="btn btn-danger" onclick="return confirm('Are you sure to delete this')" href="{{url('delete_product', $product->id)}}">Delete</a></td>
                <td><a class="btn btn-success" href="{{url('update_product', $product->id)}}">Edit</a></td>
                
                </tr>
             
                @endforeach
               </table>

        </div>
        </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    @include('admin.script')
    <!-- End custom js for this page -->
  </body>
</html>