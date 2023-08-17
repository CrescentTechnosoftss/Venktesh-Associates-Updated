<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChangeInvoicesTableStructure extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('invoices', function (Blueprint $table) {
            $table->dropColumn('bank_name');
            $table->dropColumn('branch_name');
            $table->dropColumn('account_name');
            $table->dropColumn('account_no');
            $table->dropColumn('ifsc_code');

            $table->bigInteger('bank_id')->after('payment_type');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('invoices', function (Blueprint $table) {
            $table->dropColumn('bank_id');
            $table->string('bank_name', 100);
            $table->string('branch_name', 150);
            $table->string('account_name', 150);
            $table->string('account_no', 150);
            $table->string('ifsc_code', 150);
        });
    }
}
