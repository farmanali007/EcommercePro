<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\adminController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

route::get('/', [HomeController::class, 'index']);
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
route::get('/redirect', [HomeController::class, 'redirect'])->middleware('auth','verified');

route::get('/view_catagory', [adminController::class, 'view_catagory']);

route::post('/add_catagory', [adminController::class, 'add_catagory']);

route::get('/delete_catagory/{id}', [adminController::class, 'delete_catagory']);

route::get('/view_product', [adminController::class, 'view_product']);

route::post('/add_product', [adminController::class, 'add_product']);

route::get('/show_product', [adminController::class,'show_product']);

route::get('/delete_product/{id}',[adminController::class,'delete_product']);

route::get('/update_product/{id}',[adminController::class,'update_product']);

route::post('/update_product_confirm/{id}',[adminController::class,'update_product_confirm']);

route::get('/order',[adminController::class,'order']);

route::get('/delivered/{id}',[adminController::class,'delivered']);

route::get('/print_pdf/{id}',[adminController::class,'print_pdf']);

route::get('/send_email/{id}',[adminController::class,'send_email']);

route::post('/send_user_email/{id}',[adminController::class,'send_user_email']);

route::get('/search',[adminController::class,'searchdata']);



// ===========HomeContrlller=============///////

route::get('/product_details/{id}',[HomeController::class, 'product_details']);

route::post('/add_cart/{id}',[HomeController::class,'add_cart']);

route::get('/show_cart',[HomeController::class,'show_cart']);

route::get('/remove_cart/{id}',[HomeController::class,'remove_cart']);

route::get('/cash_order',[HomeController::class,'cash_order']);

route::get('/stripe/{tprice}',[HomeController::class,'stripe']);

Route::post('stripe/{totalprice}',[HomeController::class, 'stripePost'])->name('stripe.post');

route::get('/show_order',[HomeController::class,'show_order']);

route::get('/cancel_order/{id}',[HomeController::class,'cancel_order']);

route::get('/product_page',[HomeController::class,'product_page']);
