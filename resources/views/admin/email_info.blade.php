<!DOCTYPE html>
<html lang="en">
  <head>
    <base href="/public">
    <!-- Required meta tags -->
    @include('admin.css')
    <style>
   span{
    font-size: 20px;
    font-weight: bold;
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

       <h1 style="text-align:center; font-size: 25px; font-weight: bold;">Send Email To : {{$order->email}}</h1>

       <div class="container">
  
  <form action="{{url('send_user_email', $order->id)}}" method="POST" style="width:60%; padding-left:35%; padding-top: 50px;">
      @csrf
    <div class="form-group">
      <label for="usr"><span>Greeting</span></label>
      <input  type="text" class="form-control bg-white" id="usr" name="greeting">
    </div>


    <div class="form-group">
    <label for="usr"><span>First Line</span></label>
      <input  type="text" class="form-control  bg-white" id="usr" name="firstline">
    </div>

    <div class="form-group">
    <label for="usr"><span>Body</span></label>
      <input  type="text" class="form-control  bg-white" id="usr" name="body">
    </div>

    <div class="form-group">
    <label for="usr"><span>Email Button Name</span></label>
      <input  type="text" class="form-control  bg-white" id="usr" name="button">
    </div>

    <div class="form-group">
    <label for="usr"><span>Email URL</span></label>
      <input  type="text" class="form-control  bg-white" id="usr" name="url">
    </div>


    <div class="form-group">
    <label for="usr"><span>Last Line</span></label>
      <input  type="text" class="form-control  bg-white" id="usr" name="lastline">
    </div>

    <div class="form-group">
     
      <input type="submit" class="form-control btn btn-primary" value="Send Email">
    </div>


  </form>
</div>

            </div>
            </div>
       
    <!-- container-scroller -->
    <!-- plugins:js -->
    @include('admin.script')
    <!-- End custom js for this page -->
  </body>
</html>