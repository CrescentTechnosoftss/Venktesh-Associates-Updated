<?php

use App\Http\Controllers\AuthController;

use App\Http\Controllers\CommonController;

use App\Http\Controllers\CustomerFileController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\FileSearchController;
use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\PrintController;
use App\Http\Controllers\InvoiceToWordController;
use App\Http\Controllers\PaymentReceivingController;
use App\Http\Controllers\InvoicesToWordController;
use App\Http\Controllers\InvoiceWordController;
use App\Http\Controllers\GstExportController;


use Illuminate\Support\Facades\Route;

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

//Authentications
Route::get('/', fn () => view('login'));
Route::post('validate-login', [AuthController::class, 'validateLogin'])->name('validate');

Route::get('logout', function () {
    session()->forget(['is_logged_in', 'userName', 'userType', 'userId']);
    return redirect('/');
})->name('logout');

Route::get('search/{search}', [CommonController::class, 'searchFile'])->middleware('auth');

//Dashboard
Route::get('dashboard', [DashboardController::class, 'index'])->middleware(['auth', 'preventback'])->name('dashboard');

require 'custom_routes/masters.php';

Route::group(['prefix' => 'customer-details', 'middleware' => ['auth', 'preventback']], function () {
    Route::get('', [CustomerFileController::class, 'index'])->name('customerDetails');
    Route::post('', [CustomerFileController::class, 'store']);
    Route::get('branches/{bank}', [CustomerFileController::class, 'getBranches']);
    Route::get('file-nos', [CustomerFileController::class, 'getFileNos']);
    Route::get('{uuid}', [CustomerFileController::class, 'show']);
    Route::patch('{uuid}', [CustomerFileController::class, 'update']);
    Route::get('engName/{engName}', [CustomerFileController::class, 'getEngNum']);

    // Route::delete('{uuid}', [CustomerFileController::class, 'destroy']);
});

Route::prefix('search-files')
    ->middleware(['auth', 'preventback'])
    ->group(function () {
        Route::get('', [FileSearchController::class, 'index'])->name('searchFiles');
        Route::get('{searchBy}/{search}', [FileSearchController::class, 'searchFile']);
       Route::post('send-whatsapp', [FileSearchController::class, 'sendWhatsapp']);

    });

Route::group(['prefix' => 'invoice', 'middleware' => ['auth', 'preventback']], function () {
    Route::get('', [InvoiceController::class, 'index'])->name('invoice');
    Route::get('file-nos', [InvoiceController::class, 'getFileNos']);
    Route::get('file-details/{uuid}', [InvoiceController::class, 'getFileDetails']);
    Route::get('bank-details/{id}', [InvoiceController::class, 'getBankDetails']);
    Route::post('bank-update/{id}', [InvoiceController::class, 'updateBankDetails']);
    Route::get('branches/{bank}', [InvoiceController::class, 'getBranches']);
    Route::post('', [InvoiceController::class, 'store']);
    Route::get('invoice-nos', [InvoiceController::class, 'getInvoiceNos']);
    Route::get('{uuid}', [InvoiceController::class, 'show']);
    Route::patch('{uuid}', [InvoiceController::class, 'update']);
    // Route::delete('{uuid}', [InvoiceController::class, 'destroy']);
});

Route::group(['prefix' => 'payment-receiving', 'middleware' => ['auth', 'preventback']], function () {
    Route::get('', [PaymentReceivingController::class, 'index'])->name('paymentReceiving');
    Route::get('invoice-nos', [PaymentReceivingController::class, 'getInvoiceNos']);
    // Route::get('bill-numbers', [PaymentReceivingController::class, 'getBillNos']);
    Route::get('bill-nos', [PaymentReceivingController::class, 'generateBillNumber']);
    Route::get('file-nos', [PaymentReceivingController::class, 'getFileNos']);
    Route::post('', [PaymentReceivingController::class, 'store']);
    Route::get('{uuid}', [PaymentReceivingController::class, 'show']);
    // Route::get('{billNo}', [PaymentReceivingController::class, 'getBillDetails']);

});

require 'custom_routes/reports.php';

require 'custom_routes/exports.php';

Route::get('wrapper-print/{uuid}', [PrintController::class, 'rapper'])
    ->middleware(['auth', 'preventback'])->name('downloadWrapper');

Route::get('invoice-print/{uuid}', [PrintController::class, 'invoice'])
    ->middleware(['auth', 'preventback'])->name('printInvoice');

Route::get('purchaseInvoice/{uuid}', [PrintController::class, 'purchaseInvoice'])
    ->middleware(['auth', 'preventback'])->name('purchaseInvoice');

Route::get('invoice-download/{uuid}', [InvoiceToWordController::class, 'index'])
    ->middleware(['auth', 'preventback'])->name('downloadInvoice');

Route::get('invoices-download/{uuid}', [InvoicesToWordController::class, 'index'])
    ->middleware(['auth', 'preventback'])->name('downloadInvoices');

Route::get('download-invoices/{from}/{to}', [InvoiceWordController::class, 'index'])
    ->middleware(['auth', 'preventback'])->name('downloadMultiple');

Route::get('download-gst/{from}/{to}/{gstType}', [GstExportController::class, 'index'])
    ->middleware(['auth', 'preventback'])->name('ExportGst');

Route::post('non-paid-invoice-print', [PrintController::class, 'nonPaidInvoice'])->name('nonPaidInvoicePrint');
 