<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Product;
use App\Models\Cart;
use App\Models\Order;

use Session;
use Stripe;


class HomeController extends Controller

{

       
    public function redirect(){
      
        $usertype = Auth::User()->usertype;
        if($usertype == '1'){

            $total_products = Product::all()->count();
            $total_orders = Order::all()->count();
          
            $total_Customers = User::where('usertype','=','0')->count();


            $order = Order::all();
            $total_revenue =0;
            foreach($order as $order){
                $total_revenue = $total_revenue + $order->price;
            }

            $order_delivered = Order::where('delivery_status', '=', 'delivered')->count();
            $order_processing = Order::where('delivery_status', '=', 'processing')->count();
            $canceled_orders = Order::where('delivery_status', '=', 'canceled')->count();

            return view('admin.home',compact('total_products','total_orders','total_Customers','total_revenue', 'order_delivered', 'order_processing', 'canceled_orders'));
        }else{
             $product = Product::paginate(9);
             return view('home.userpage',compact('product'));
        }
    }
    public function index(){
        $product = Product::paginate(9);
        return view('home.userpage',compact('product'));
    }

    public function product_details($id){
         $product = Product::find($id);

        return view('home.product_details', compact('product'));
    }

    public function product_page(){
        $product = Product::paginate(9);
        return view('home.product_page',compact('product'));
    }



    public function add_cart(Request $request ,$id){

        if(Auth::id()){
            $user = Auth::user();
            $product = product::find($id);

             $cart = new Cart;
             $cart->name = $user->name;
             $cart->email = $user->email;
             $cart->email = $user->email;
             $cart->phone = $user->phone;
             $cart->address = $user->address;
             $cart->user_id = $user->id;

             $cart->product_title = $product->title;

             if($product->discount_price!=null)
             {

             $cart->price = $product->discount_price *  $request->quantity;

             }else{
                
                $cart->price = $product->price *  $request->quantity;
             }


             $cart->image = $product->image;
             $cart->product_id = $product->id;

             $cart->quantity = $request->quantity;    
             
             
             $cart->save();
             return redirect()->back();




            
        }else
        {
            return redirect('login');
        }
    }


    public function show_cart(){

        if(Auth::id()){

            $id = Auth::user()->id;
        $cart = Cart::where('user_id', '=', $id)->get();
        return view('home.showcart',compact('cart'));

        }else{

            return redirect('login');
        }
    }


    public function remove_cart($id){
        $cart= Cart::find($id);
        $cart->delete();
        return redirect()->back();

    }
    public function cash_order(){
     
        $user = Auth::User();
        $userid = $user->id;

        $data = Cart::where('user_id', '=', $userid)->get();
        
        foreach($data as $data)
        {
            $order = new Order();

            $order->name = $data->name;
            $order->email = $data->email;
            $order->phone = $data->phone;
            $order->address = $data->address;
            $order->user_id = $data->user_id;
            $order->price = $data->price;
            $order->image = $data->image;
            $order->quantity = $data->quantity;
            $order->product_title = $data->product_title;
            $order->product_id = $data->product_id;

            $order->payment_status = 'cash on Dilivery';
            $order->delivery_status = 'processing';

            $order->save();

            $cart_id = $data->id;
            $cart = Cart::find($cart_id);
            $cart->delete();
        }

        return redirect()->back()->with('message', 'we have Recived your Order. We will connect with you soon....');

    }

    public function stripe($totalprice){
        return view('home.stripe',compact('totalprice'));
    }


    public function stripePost(Request $request, $totalprice)

    {
        
        Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));

        Stripe\Charge::create ([

                "amount" => $totalprice * 100,

                "currency" => "usd",

                "source" => $request->stripeToken,

                "description" => "Thanks For Payment!" 

        ]);


        $user = Auth::User();
        $userid = $user->id;

        $data = Cart::where('user_id', '=', $userid)->get();
        
        foreach($data as $data)
        {
            $order = new Order();

            $order->name = $data->name;
            $order->email = $data->email;
            $order->phone = $data->phone;
            $order->address = $data->address;
            $order->user_id = $data->user_id;
            $order->price = $data->price;
            $order->image = $data->image;
            $order->quantity = $data->quantity;
            $order->product_title = $data->product_title;
            $order->product_id = $data->product_id;

            $order->payment_status = 'Paid';
            $order->delivery_status = 'processing';

            $order->save();

            $cart_id = $data->id;
            $cart = Cart::find($cart_id);
            $cart->delete();
        }

      

        Session::flash('success', 'Payment successful!');

              

        return back();

    }


    public function show_order(){
        if(Auth::id()){
           $user = Auth::User();
           $userId = $user->id;

           $order = Order::where('user_id', '=', $userId)->get();

            return view('home.order',compact('order'));
        }else{
            return redirect('login');
        }
    }


    public function cancel_order($id){
        $order = Order::find($id);
        $order->delivery_status='canceled';
        $order->save();
        return redirect()->back();
    }
    

   

    
}
