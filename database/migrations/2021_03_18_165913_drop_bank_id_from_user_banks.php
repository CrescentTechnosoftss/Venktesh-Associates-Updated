<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class DropBankIdFromUserBanks extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('user_banks', function (Blueprint $table) {
            $table->dropForeign('user_bank_forign_key');
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
        Schema::table('user_banks', function (Blueprint $table) {
            $table->bigInteger('bank_id');
            $table->foreign('bank_id')->on('banks')->references('id')->onUpdate('No Action')->onDelete('cascade');
        });
    }
}
