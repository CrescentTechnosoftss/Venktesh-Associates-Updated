<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCustomerFilesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customer_files', function (Blueprint $table) {
            $table->id();
            $table->uuid('uuid')->unique();
            $table->string('bank_name');
            $table->string('branch_name', 150);
            $table->string('customer_name', 200);
            $table->string('contact_no', 50);
            $table->text('address');
            $table->text('remarks');
            $table->string('referred_by', 200);
            $table->string('engineer_name', 200);
            $table->string('apartment_name', 150);
            $table->decimal('total_value', 8, 2, true);
            $table->string('status', 100);
            $table->decimal('bill_amount');
            $table->decimal('cash_paid')->nullable();
            $table->string('cash_approved_status', 30);
            $table->string('delivery_boy', 200);
            $table->date('report_delivered_date');
            $table->string('delivered_to', 200);
            $table->string('payment_status', 100);

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
        Schema::dropIfExists('customer_files');
    }
}
