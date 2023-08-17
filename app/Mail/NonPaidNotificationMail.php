<?php

namespace App\Mail;

use App\Models\EmailAccount;
use App\Models\Invoice;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class NonPaidNotificationMail extends Mailable
{
    use Queueable, SerializesModels;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(private Invoice $invoice, private EmailAccount $emailAccount)
    {
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $data = view('invoice_print')->with('data', $this->invoice);
        return $this->view('mail_templates.non_paid_invoice')
            ->attachData($data, 'Invoice.pdf', [
                'mime' => 'application/pdf'
            ])
            // ->subject('Invoice Reminder From N.VENKATESH & ASSOCIATES')
            ->from($this->emailAccount->email_address, $this->emailAccount->sender_name);
    }
}
