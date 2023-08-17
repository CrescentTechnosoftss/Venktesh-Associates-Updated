<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Exports\PaidInvoiceController;
use App\Http\Controllers\Exports\PaidInvoicController;
use App\Http\Controllers\Exports\NonPaidInvoiceController;
use App\Http\Controllers\Exports\SalesByInvoiceController;
use App\Http\Controllers\Exports\SalesByFileController;
use App\Http\Controllers\Exports\GstController;


Route::prefix('export')->middleware(['auth', 'preventback'])->group(function () {
    Route::post('non-paid-invoice', [NonPaidInvoiceController::class, 'index'])->name('exportNonPaidInvoice');
    Route::post('paid-invoice', [PaidInvoiceController::class, 'index'])->name('exportPaidInvoice');
    Route::post('aa', [PaidInvoicController::class, 'index'])->name('exportPaidInvoices');
    Route::post('sales-by-invoice', [SalesByInvoiceController::class, 'index'])->name('exportSalesByInvoice');
    Route::post('sales-by-file', [SalesByFileController::class, 'index'])->name('exportSalesByFile');
    Route::post('', [PaidInvoicController::class, 'index'])->name('exportPaidInvoices');
    Route::post('', [GstController::class, 'index'])->name('exportGst');
    

    
});
