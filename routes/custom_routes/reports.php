<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Reports\ApprovalReportController;
use App\Http\Controllers\Reports\NonPaidInvoiceController;
use App\Http\Controllers\Reports\PaidInvoiceController;
use App\Http\Controllers\Reports\SalesReportByFileController;
use App\Http\Controllers\Reports\SalesReportByInvoiceController;
use App\Http\Controllers\Reports\PaidInvoicesController;
use App\Http\Controllers\Reports\GstController;
use App\Http\Controllers\FileSearchController;

Route::group(['prefix' => 'reports', 'middleware' => ['auth', 'preventback']], function () {
    Route::group(['prefix' => 'non-paid-invoice'], function () {
        Route::get('', [NonPaidInvoiceController::class, 'index'])->name('nonPaidInvoiceReport');
        Route::get('bank-emails', [NonPaidInvoiceController::class, 'getBankEmails']);
        Route::get('branches/{bank}', [NonPaidInvoiceController::class, 'getBranches']);
        Route::post('', [NonPaidInvoiceController::class, 'show']);
        Route::post('send-mail', [NonPaidInvoiceController::class, 'sendMail']);
        Route::post('send-bulk-mail', [NonPaidInvoiceController::class, 'sendBulkMail']);
        Route::post('send-whatsapp', [NonPaidInvoiceController::class, 'sendWhatsapp']);
        Route::post('send-whatsapp-referred', [NonPaidInvoiceController::class, 'sendWhatsappReferred']);


    });

    Route::group(['prefix' => 'paid-invoice'], function () {
        Route::get('', [PaidInvoiceController::class, 'index'])->name('paidInvoiceReport');
        Route::get('branches/{bank}', [NonPaidInvoiceController::class, 'getBranches']);
        Route::post('', [PaidInvoiceController::class, 'show']);
    });

    // Route::group(['prefix' => 'paid-invoice'], function () {
        Route::get('', [PaidInvoicesController::class, 'index'])->name('paidInvoiceReports');
        Route::get('branches/{bank}', [NonPaidInvoiceController::class, 'getBranches']);
        Route::post('', [PaidInvoicesController::class, 'show']);
    // });

    Route::group(['prefix' => 'gst-report'], function () {
    Route::get('', [GstController::class, 'index'])->name('GstReport');
    Route::get('branches/{bank}', [NonPaidInvoiceController::class, 'getBranches']);
    Route::post('', [GstController::class, 'show']);
    });

    Route::prefix('sales-report-by-invoice')->group(function () {
        Route::get('', [SalesReportByInvoiceController::class, 'index'])->name('salesReportByInvoice');
        Route::post('', [SalesReportByInvoiceController::class, 'show']);
    });

    Route::prefix('sales-report-by-file')->group(function () {
        Route::get('', [SalesReportByFileController::class, 'index'])->name('salesReportByFile');
        Route::post('', [SalesReportByFileController::class, 'show']);
    });

    Route::prefix('approval-pending-report')->middleware('auth:admin')->group(function () {
        Route::get('', [ApprovalReportController::class, 'index'])->name('approvalPendingReport');
        Route::get('check-auth-status', [ApprovalReportController::class, 'checkApprovalAuthStatus']);
        Route::post('authenticate', [ApprovalReportController::class, 'validateApprovalAuth']);
        Route::post('clear-auth', [ApprovalReportController::class, 'clearApprovalAuth']);
        Route::patch('{fileNo}', [ApprovalReportController::class, 'changeApprovalStatus']);
        Route::get('getBydate', [ApprovalReportController::class, 'getDatasByDate']);
        Route::get('getBydateInvoice', [ApprovalReportController::class, 'getBydateInvoice']);
        Route::post('sendSms/{id}', [ApprovalReportController::class, 'sendSms'])->name('send');
    });


    
});
