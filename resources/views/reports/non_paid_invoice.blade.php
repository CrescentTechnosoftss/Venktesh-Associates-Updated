<link rel="stylesheet" href="{{asset('css/reports/non-paid-print.css')}}">
<div class="container-fluid">
    <div class="row mt-3">
        <div class="col">
            <div class="table-responsive" style="max-height: 500px;">
                <table class="table table-sm table-bordered table-striped" id="tblNonPaidInvoice">
                    <thead>
                        <tr>
                            <th>S.No</th>
                            <th>Date</th>
                            <th>Invoice No</th>
                            <th>File No</th>
                            <th>Bank / Branch</th>
                            <th>Customer Name / Phone No.</th>
                            <th>Bill Amount</th>
                            <th>Referred By</th>
                            <th>Engineer Name</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($invoices as $invoice)
                            <tr>
                                <td>{{$loop->index+1}}</td>
                                <td>{{$invoice->invoice_date->format('d-m-Y')}}</td>
                                <td>{{$invoice->id}}</td>
                                <td>{{$invoice->file_id}}</td>
                                <td>{{$invoice->file->bank_name.' / '.$invoice->file->branch_name}}</td>
                                <td>{{$invoice->file->customer_name.' / '.$invoice->file->contact_no}}</td>
                                <td>{{$invoice->bill_amount}}</td>
                                <td>{{$invoice->file->referred_by}}</td>
                                <td>{{$invoice->file->engineer->name ?? '-'}}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>