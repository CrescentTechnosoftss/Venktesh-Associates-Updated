<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddAdditionalColumnsToUserBanks extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('user_banks', function (Blueprint $table) {
            $table->string('account_name', 150)->after('branch_name');
            $table->string('account_no', 50)->after('account_name');
            $table->string('ifsc_code', 50)->after('account_no');
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
            $table->dropColumn('account_name');
            $table->dropColumn('account_no');
            $table->dropColumn('ifsc_code');
        });
    }
}
