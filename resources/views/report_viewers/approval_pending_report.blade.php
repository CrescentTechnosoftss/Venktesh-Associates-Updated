@extends('header')
@section('content')
<style>
    table.dataTable thead .sorting:after,
    table.dataTable thead .sorting:before,
    table.dataTable thead .sorting_asc:after,
    table.dataTable thead .sorting_asc:before,
    table.dataTable thead .sorting_asc_disabled:after,
    table.dataTable thead .sorting_asc_disabled:before,
    table.dataTable thead .sorting_desc:after,
    table.dataTable thead .sorting_desc:before,
    table.dataTable thead .sorting_desc_disabled:after,
    table.dataTable thead .sorting_desc_disabled:before {
        bottom: .5em;
    }

    .blur-all {
        -webkit-filter: blur(10px);
        -moz-filter: blur(10px);
        -o-filter: blur(10px);
        -ms-filter: blur(10px);
        filter: blur(10px);
    }
    
    /* #alignCenter{
        text-align: center;
    } */

        h5{
         text-align: left;   
        }

    .custom-btn {

        display: inline-block;
        font-weight: 400;
        color: #212529;
        text-align: center;
        vertical-align: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        background-color: transparent;
        border: 1px solid transparent;
        padding: .375rem .75rem;
        font-size: 1rem;
        line-height: 1.5;
        border-radius: .25rem;
        transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;

    }
</style>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
<script scr="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.2/js/toastr.min.js"></script>
<link rel="stylesheet" href="{{asset('css/reports/approval.css')}}">
<!-- MDBootstrap Datatables  -->
<link href="http://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">
<script scr="http://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
<div class="container-fluid">
  <div class="row mt-3" >
    <div class="col">
        @if (count($cashApprovals) > 0)
            <h5>Cash Approvals</h5>
            <button id="approveSelectedFile" class="btn btn-primary">Approve Selected</button>
            <span><label for="name">Select Engineer : </label></span>
            <select name="engineer" id="engineerNames">
                <option value="select">Select</option>
                @php
                    $engineerNames = [];
                @endphp
                @foreach ($cashApprovals as $cash)
                    @if (!in_array($cash->engineer->name??'-', $engineerNames))
                        <option value="{{$cash->engineer->id??'-' }}">{{ $cash->engineer->name??'-'}}</option>
                        @php
                            $engineerNames[] = $cash->engineer->name ?? '-';
                        @endphp
                    @endif
                @endforeach
            </select>
        @endif
    </div>
</div>
    <div class="row mt-2" id="cashApprovalSection">
        <div class="col">
            <div class="table-responsive" style="max-height: 500px;" >

                <table class="table table-sm table-bordered table-striped" id="tblCashApproval">
                    <thead>
                            <tr>
                            <th class="th-sm">Select</th>
                            <th style="display:none">Engid</th>
                            <th>Date</th>
                            <th>File No</th>
                            <th>Bank / Branch</th>
                            <th>Customer Name / Phone No.</th>
                            <th>Bill Amount</th>
                            <th>Paid Amount</th>
                            <th>Engineer Name</th>
                            <th>Received By</th>
                            <th>Referred By</th>
                            <th style="display:none">Approve</th>
                            <th>sent SMS</th>

                        </tr>
                    </thead>
                    <tbody>
                        @forelse($cashApprovals as $cash)

                        <tr>
                             <td><input type="checkbox" class="selectInvoiceFile" data-file="{{ $cash->id }}"></td>
                            <td style="display:none">{{$cash->engineer->id ?? '-'}}</td>
                            <td>{{$cash->file_date->format('d-m-Y')}}</td>
                            <td id="id1">{{$cash->id}}</td>
                            <td>{{$cash->bank_name.' / '.$cash->branch_name}}</td>
                            <td>{{$cash->customer_name.' / '.$cash->contact_no}}</td>
                            <td>{{$cash->bill_amount}}</td>
                            <td>{{$cash->cash_paid}}</td>
                            <td>{{$cash->engineer->name??'-'}}</td>
                            <td>{{$cash->deliveryBoy->name ?? '-'}}</td>
                            <td>{{$cash->referred_by}}</td>
                            <td style="display:none"><button class="btn btn-sm btn-primary btn">Approve</button></td>
                            <!-- <td><button id="sendSms1" class="send-btn btn-secondary custom-btn"><span><i class="fa fa-check"></i></span></button></td> -->
                            <td><button id="alertSms" class="send-btn btn-secondary custom-btn"><span><i class="fa fa-check"></i></span></button></td>

                        </tr>
                        @empty
                        <tr id="noVal">

                            <td colspan="11" class="text-center text-info">
                                <h5>No Approvals Pending</h5>
                            </td>
                        </tr>
                        @endforelse

                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <hr>


    <!-- <div class="row mt-3" id="alignCenter">
    <div class="col">
        @if (count($invoiceApprovals) > 0)
            <h5>Invoice Approvals</h5>
            <span><label for="name">Select Engineer : </label></span>
            <select name="engineer" id="engineerName">
                <option value="select">Select</option>
                @php
                    $engineerNames = [];
                @endphp
                @foreach ($invoiceApprovals as $invoice)
                    @if ($invoice->has_file && !in_array($invoice->file->engineer->name ?? '-', $engineerNames))
                        <option value="{{ $invoice->file->engineer->id ?? '-' }}">{{ $invoice->file->engineer->name ?? '-'}}</option>
                        @php
                            $engineerNames[] = $invoice->file->engineer->name ?? '-';
                        @endphp
                    @endif
                @endforeach
            </select>
        @endif
    </div>
</div> -->

<div class="row mt-3" >
    <div class="col">
        @if (count($invoiceApprovals) > 0)
            <h5>Invoice Approvals</h5>
            <button id="approveSelected" class="btn btn-primary">Approve Selected</button>

            <span><label for="name">Select Engineer : </label></span>
            <select name="engineer" id="engineerName">
                <option value="select">Select</option>
                @php
                    $engineerNames = [];
                @endphp
                @foreach ($invoiceApprovals as $invoice)
                    @if ($invoice->has_file && !in_array($invoice->file->engineer->name ?? '-', $engineerNames))
                        <option value="{{ $invoice->file->engineer->id ?? '-' }}">{{ $invoice->file->engineer->name ?? '-'}}</option>
                        @php
                            $engineerNames[] = $invoice->file->engineer->name ?? '-';
                        @endphp
                    @else
                          @php
                            $engineerNamesNofile[] = $invoice->engineer->name ?? '-'
                        @endphp
                        @if (!in_array($invoice->engineer->name ?? '-', $engineerNamesNofile))
                        <option value="{{$invoice->engineer->id ?? '-'}}">{{$invoice->engineer->name ?? '-'}}</option>
                    @endif
                    @endif
                @endforeach
            </select>
        @else
            <p>No invoice approvals available.</p>
        @endif
    </div>
</div>






    <div class="row mt-2" >
        <div class="col">
        
            <div class="table-responsive" style="max-height: 500px;" >
                <table class="table table-sm table-bordered table-striped" id="tblInvoiceApproval">
                    <thead>
                        <tr>
                            <th class="th-sm">Select</th>
                            <th class="th-sm" style="display:none">Engid</th>
                            <th class="th-sm">Date</th>
                            <th class="th-sm">Invoice No</th>
                            <th class="th-sm">File No</th>
                            <th class="th-sm">Bank / Branch</th>
                            <th class="th-sm">Customer Name / Phone No.</th>
                            <th class="th-sm">Bill Amount</th>
                            <th class="th-sm">Paid Amount</th>
                            <th class="th-sm">Engineer Name</th>
                            <th class="th-sm">Received By</th>
                            <th class="th-sm">Referred By</th>
                            <th class="th-sm" style="display:none">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($invoiceApprovals as $invoice)
                        @if($invoice->has_file)
                        <tr>
                            <td><input type="checkbox" class="selectInvoice" data-invoice="{{ $invoice->id }}"></td>
                            <td style="display:none">{{ $invoice->file->engineer->id ?? '-'}}</td>
                            <td>{{$invoice->invoice_date->format('d-m-Y')}}</td>
                            <td>{{$invoice->id}}</td>
                            <td>{{$invoice->file->id}}</td>
                            <td>{{$invoice->file->bank_name.' / '.$invoice->file->branch_name}}</td>
                            <td>{{$invoice->file->customer_name.' / '.$invoice->file->contact_no}}</td>
                            <td>{{$invoice->total_amount}}</td>
                            <td>{{floatval($invoice->initial_amount)+floatval($invoice->payment->amount_paid)}}</td>
                            <td>{{$invoice->file->engineer->name ?? '-'}}</td>
                            <td>{{$invoice->payment->receivedBy->name ?? '-'}}</td>
                            <td>{{$invoice->file->referred_by}}</td>
                            <td style="display:none"><button class="btn btn-primary btn-sm custom-btn">Approve</button></td>

                        </tr>
                        @else
                        <tr>
                            <td><input type="checkbox" class="selectInvoice" data-invoice="{{ $invoice->id }}"></td>
                            <td style="display:none">{{ $invoice->engineer->id ?? '-'}}</td>
                            <td>{{$invoice->invoice_date->format('d-m-Y')}}</td>
                            <td>{{$invoice->id}}</td>
                            <td>{{$invoice->invoice_file_id}}</td>
                            <td>{{$invoice->bank_name.' / '.$invoice->branch_name}}</td>
                            <td>{{$invoice->customer_name.' / '.$invoice->contact_no}}</td>
                            <td>{{$invoice->total_amount}}</td>
                            <td>{{floatval($invoice->initial_amount)+floatval($invoice->payment->amount_paid)}}</td>
                            <td>{{$invoice->engineer->name ?? '-'}}</td>
                            <td>{{$invoice->payment->receivedBy->name ?? '-'}}</td>
                            <td>{{$invoice->referred_by}}</td>
                            <td><button class="btn btn-primary btn-sm">Approve</button></td>

                        </tr>
                        @endif
                        @empty
                        <tr>
                            <td colspan="11" class="text-center text-info">
                                <h5>No Approvals Pending</h5>
                            </td>
                        </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalAuthentication" data-backdrop="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4>Authentication</h4>
            </div>
            <div class="modal-body">
                <div class="alert alert-warning d-none" id="divAuthMessage">Authentication Failed</div>
                <div class="row">
                    <div class="col">
                        <label for="txtUserName">User Name</label>
                        <input type="text" id="txtUserName" class="form-control" autocomplete="off">
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col">
                        <label for="txtPassword">Password</label>
                        <input id="txtPassword" class="form-control disc" autocomplete="off">
                    </div>
                </div>
                @csrf
                <div class="row mt-2 text-center">
                    <div class="col">
                        <button id="btnAuthenticate" class="btn btn-primary">Authenticate</button>
                        <a href="{{route('dashboard')}}" class="btn btn-secondary">Cancel</a>
                    </div>
                </div>
            </div>
            <div class="modal-footer">

            </div>
        </div>
    </div>
</div>
<!-- Sms alert dialog box-->
<div class="modal fade" id="modalAuthenticationnew">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header " style="padding-left: 100px ;background: #318bda;">

                <h4 style="font-weight: 600;">Click Confirm to send SMS</h4>


            </div>
            <div class="modal-body">
                <div class="alert alert-warning d-none" id="divAuthMessage">Authentication Failed</div>
                <div class="row">
                    <div class="col text-center">
                        <label for="txtUserName">File Number</label>
                        <h1 id='no'></h1>
                        <!-- <td id='no' value></td> -->
                    </div>
                </div>

                @csrf
                <div class="row mt-2 text-center">
                    <div class="col">
                        <button id="sendSms1" class="btn btn-primary">Confirm</button>
                        <button id="btnClose" class="btn btn-secondary">Cancel</button>
                    </div>
                </div>
            </div>
            <div class="modal-footer">

            </div>
        </div>
    </div>
</div>
<!-- approval success dialog box -->

<div class="modal fade" id="approved">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header text-center">
                <!-- <h4>Click Confirm to send SMS</h4> -->
            </div>
            <div class="modal-body">
                <div class="alert alert-warning d-none" id="divAuthMessage">Authentication Failed</div>
                <div class="row">
                    <div class="col text-center">
                        <!-- <label for="txtUserName">File Number</label> -->
                        <div id='success'>File Number</div>
                        <!-- <td id='no' value></td> -->
                    </div>
                </div>

                <!-- @csrf-->
                <div class="row mt-2 text-center">
                    <div class="col">
                        <!-- <button id="sendSms1" class="btn btn-primary">Confirm</button> -->
                        <button id="btnClose1" class="btn btn-primary">close</button>
                    </div>
                </div>
            </div>
            <div class="modal-footer">

            </div>
        </div>
    </div>
</div>
<script>
    const currentUrl = '{{route("approvalPendingReport")}}';
    var invoiceNo;
    $('#tblCashApproval tbody').on('click', '#alertSms', function() {
        invoiceNo = $(this).closest('tr').children('td:eq(2)').text();
        console.log(invoiceNo);
        $('#no').text(invoiceNo);
        $('#modalAuthenticationnew').modal();

    });
    $('#btnClose').on('click', function() {
        console.log('clicked')
        $('#modalAuthenticationnew').modal('toggle');
    });

//     const dataTable = $('#tblInvoiceApproval').DataTable();
//     $('.dataTables_length').addClass('bs-select');
    
//     $('#engineerName').on('change', function () {
//       const selectedValue = $(this).val();

//       if (selectedValue !== 'select') {
//           dataTable.column(0).search(selectedValue).draw();
//       } else {
//           dataTable.search('').columns().search('').draw(); // Reset the filtering
//       }
//   });

    $('#sendSms1').on('click', function() {
        sendSmsCash(invoiceNo);
        $('#modalAuthenticationnew').modal('toggle');
    });

    // ...............sending sms Cash

    function sendSmsCash(id1) {
        axios.post(`${currentUrl}/sendSms/${id1}`)
            .then(response => {
                console.log(response);
                if (response.data.status == 'failure') {
                    toastr.warning('failed');
                } else {
                    toastr.success('success');

                }
            });
    }
</script>
<script>
    // table sorter
    $(document).ready(function() {
        $('#tblCashApproval').DataTable();
        $('.dataTables_length').addClass('bs-select');
    });

    $(document).ready(function() {
        $('#tblInvoiceApproval').DataTable();
        $('.dataTables_length').addClass('bs-select');
    });

    $('.datepicker').datepicker().datepicker('setDate', new Date);
    //cash approvals

    
</script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.3/js/jquery.tablesorter.min.js"></script>
<script>
    $("#tblCashApproval").tablesorter();
    $("#sort").change(function() {
        var sorting = [];

        if ($(this).val() == "Asc")

            sorting = [
                [1, 2]
            ];
        else
            sorting = [
                [1, 1]
            ];

        $("#tblCashApproval").trigger("sorton", [sorting]);
    });

    $("#tblInvoiceApproval").tablesorter();
    $("#sort2").change(function() {
        var sorting = [];

        if ($(this).val() == "Asc")

            sorting = [
                [1, 2]
            ];
        else
            sorting = [
                [1, 1]
            ];

        $("#tblInvoiceApproval").trigger("sorton", [sorting]);
    });
</script>
<script type="module" src="{{mix('js/reports/approval-pendings.js')}}"></script>

@endsection