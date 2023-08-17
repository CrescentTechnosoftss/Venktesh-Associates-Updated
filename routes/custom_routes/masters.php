<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
// use App\Http\Controllers\Masters\DataMasterController;
use App\Http\Controllers\Masters\BankMasterController;
use App\Http\Controllers\Masters\EngineerMasterController;
use App\Http\Controllers\Masters\DeliveryBoyMasterController;
use App\Http\Controllers\Masters\MailMasterController;

Route::prefix('masters')->middleware(['auth', 'preventback'])->group(function () {
    // Route::prefix('data-master')->group(function () {
    //     Route::get('', [DataMasterController::class, 'index'])->name('dataMaster');

    //     Route::post('bank', [DataMasterController::class, 'addBankName']);
    //     Route::delete('bank/{bankName}', [DataMasterController::class, 'removeBankName']);

    //     Route::post('branch', [DataMasterController::class, 'addBranchName']);
    //     Route::delete('branch/{branchName}', [DataMasterController::class, 'removeBranchName']);

    //     Route::post('engineer', [DataMasterController::class, 'addEngineer']);
    //     Route::delete('engineer/{name}', [DataMasterController::class, 'removeEngineer']);

    //     Route::post('delivery-boy', [DataMasterController::class, 'addDeliveryBoy']);
    //     Route::delete('delivery-boy/{name}', [DataMasterController::class, 'removeDeliveryBoy']);
    // });

    Route::prefix('bank-master')->group(function () {
        Route::get('', [BankMasterController::class, 'index'])->name('bankMaster');
        Route::post('', [BankMasterController::class, 'store']);
        Route::patch('{id}', [BankMasterController::class, 'update']);
        Route::delete('{id}', [BankMasterController::class, 'destroy']);
    });

    Route::prefix('engineer-master')->group(function () {
        Route::get('', [EngineerMasterController::class, 'index'])->name('engineerMaster');
        Route::post('', [EngineerMasterController::class, 'store']);
        Route::patch('{id}', [EngineerMasterController::class, 'update']);
        Route::delete('{id}', [EngineerMasterController::class, 'destroy']);
    });

    Route::prefix('delivery-boy-master')->group(function () {
        Route::get('', [DeliveryBoyMasterController::class, 'index'])->name('deliveryBoyMaster');
        Route::post('', [DeliveryBoyMasterController::class, 'store']);
        Route::patch('{id}', [DeliveryBoyMasterController::class, 'update']);
        Route::delete('{id}', [DeliveryBoyMasterController::class, 'destroy']);
    });

    Route::prefix('user-master')->middleware('auth:admin')->group(function () {
        Route::get('', [AuthController::class, 'index'])->name('userMaster');
        Route::get('users', [AuthController::class, 'getUsers']);
        Route::post('', [AuthController::class, 'store']);
        Route::get('{id}', [AuthController::class, 'show']);
        Route::patch('{id}', [AuthController::class, 'update']);
        Route::delete('{id}', [AuthController::class, 'destroy']);
    });

    Route::prefix('mail-master')->group(function () {
        Route::get('', [MailMasterController::class, 'index'])->name('mailMaster');
        Route::post('', [MailMasterController::class, 'store']);
        Route::patch('{id}', [MailMasterController::class, 'update']);
        Route::delete('{id}', [MailMasterController::class, 'destroy']);
    });
});
