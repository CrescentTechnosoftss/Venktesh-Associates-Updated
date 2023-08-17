<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInvoicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('invoices', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('file_id', false, true);
            $table->foreign('file_id', 'file_invoice_foreign_key')
                ->on('customer_files')
                ->references('id')
                ->onUpdate('No Action')
                ->onDelete('cascade');

            $table->decimal('paying_amt');
            $table->decimal('due_amt');
            $table->string('bank_name', 100);
            $table->string('branch_name', 150);
            $table->string('account_name', 150);
            $table->string('account_no', 150);
            $table->string('ifsc_code', 150);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // Schema::table('invoices', function (Blueprint $table) {
        //     $table->dropForeign('file_invoice_foreign_key');
        // });
        Schema::dropIfExists('invoices');
    }
}
