<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class DropBankIdFromBankDetails extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('bank_details', function (Blueprint $table) {
            $table->dropForeign('customer_bank_forign_key');
            $table->dropColumn('bank_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('bank_details', function (Blueprint $table) {
            $table->bigInteger('bank_id');
            $table->foreign('bank_id', 'customer_bank_forign_key')
                ->on('banks')
                ->references('id')
                ->onUpdate('No Action')
                ->onDelete('Cascade');
        });
    }
}
