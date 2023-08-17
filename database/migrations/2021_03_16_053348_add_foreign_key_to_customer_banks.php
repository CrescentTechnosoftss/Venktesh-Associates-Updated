<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeyToCustomerBanks extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('customer_banks', function (Blueprint $table) {
            $table->bigInteger('bank_id')->unsigned();
            $table->foreign('bank_id', 'customer_bank_forign_key')->references('id')->on('banks')->onDelete('cascade')->onUpdate('No Action');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('customer_banks', function (Blueprint $table) {
            $table->dropColumn('bank_id');
        });
    }
}
