<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Details</title>
</head>
<body>
    <h1>Order Detials</h1>

    Customer Name: {{$order->name}}<br>
    Email: {{$order->email}}<br>
    Phone: {{$order->phone}}<br>
    Customer ID: {{$order->user_id}}<br>
    Customer Address: {{$order->address}}<br>
    Procut Name: {{$order->product_title}}<br>
    Product Price: ${{$order->price}}<br>
    Payment status: {{$order->payment_status}}<br>
    Product ID: {{$order->product_id}}<br>

    <img  height="150" width="250" src="product/{{$order->image}}" alt="">
</body>
</html>