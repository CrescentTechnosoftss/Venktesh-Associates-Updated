@extends('header')
@section('content')
<style>
    .blur-all {
        -webkit-filter: blur(10px);
        -moz-filter: blur(10px);
        -o-filter: blur(10px);
        -ms-filter: blur(10px);
        filter: blur(10px);
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
<div class="container-fluid">

    <div class="row">
        <div class="col-sm-2">
            <label for="ddlFilterBy" class="badge">Filter By</label>
            <select id="ddlFilterBy" class="form-control">
                <option value="date">Date</option>
                <!-- <option value="number">Number</option> -->
            </select>
        </div>
        <div class="col-sm-2 by-date">
            <label for="dpFrom" class="badge">From</label>
            <input class="form-control datepicker" id="dpFrom">
        </div>
        <div class="col-sm-2 by-date">
            <label for="dpTo" class="badge">To</label>
            <input class="form-control datepicker" id="dpTo">
        </div>
        <!-- <div class="row mt-2"> -->
        <div class="col-sm-2 mt-auto">
            <button class="btn btn-success" id="btnShow">Show</button>
            <!-- <button class="btn btn-primary" id="btnExport">Export (xlsx)</button> -->
        </div>
        <!-- </div> -->
        <!-- <div class="row mt-2"> -->
        <div class="col-sm-2 mt-auto">
            <label for="dpTo" class="badge">Search By File No</label>

            <input class='form-control' type="text" id="myInput" onkeyup="myCashFunction()" placeholder="Search for File No.." title="Type in a File No">
        </div>
        <!-- </div> -->
    </div>

    <div class="row mt-3">
        <div class="col">
            <div class="table-responsive">
                <table class="table table-sm table-bordered table-striped" id="tblSalesReportByFile" style="width: 100%;">
                    <tfoot>
                        <tr>
                            <td colspan="6"></td>
                            <td colspan="7"></td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row mt-3">
        <div class="col">
            <h5>Cash Approvals</h5>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col">
            <div class="table-responsive" style="max-height: 500px;">
                <div class="col-lg-3">
                    <label for="" class="form-control">sort By</label>
                    <select id="sort" class="form-control">
                        <option>Asc</option>
                        <option>Desc</option>
                    </select>
                </div>
                <table class="table table-sm table-bordered table-striped" id="tblCashApproval">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>File No</th>
                            <th>Bank / Branch</th>
                            <th>Customer Name / Phone No.</th>
                            <th>Bill Amount</th>
                            <th>Paid Amount</th>
                            <th>Engineer Name</th>
                            <th>Received By</th>
                            <th>Referred By</th>
                            <th>Approve</th>
                            <th>sent SMS</th>

                        </tr>
                    </thead>
                    <tbody>
                        @forelse($cashApprovals as $cash)

                        <tr>
                            <td>{{$cash->file_date->format('d-m-Y')}}</td>
                            <td id="id1">{{$cash->id}}</td>
                            <td>{{$cash->bank_name.' / '.$cash->branch_name}}</td>
                            <td>{{$cash->customer_name.' / '.$cash->contact_no}}</td>
                            <td>{{$cash->bill_amount}}</td>
                            <td>{{$cash->cash_paid}}</td>
                            <td>{{$cash->engineer->name??'-'}}</td>
                            <td>{{$cash->deliveryBoy->name ?? '-'}}</td>
                            <td>{{$cash->referred_by}}</td>
                            <td><button class="btn btn-sm btn-primary btn">Approve</button></td>
                           <td><button id="sendSms1" class="send-btn btn-secondary custom-btn"><span><i class="fa fa-check"></i></span></button></td>

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
    <!-- invoice search -->

    <div class="row">
        <div class="col-sm-2">
            <label for="ddlFilterBy" class="badge">Filter By</label>
            <select id="ddlFilterBy" class="form-control">
                <option value="date">Date</option>
            </select>
        </div>
        <div class="col-sm-2 by-date">
            <label for="dpFrom" class="badge">From</label>
            <input class="form-control datepicker" id="inFrom">
        </div>
        <div class="col-sm-2 by-date">
            <label for="dpTo" class="badge">To</label>
            <input class="form-control datepicker" id="inTo">
        </div>
        <div class="col-sm-2 mt-auto">
            <button class="btn btn-success" id="inShow">Show</button>
        </div>
        <div class="col-sm-2 mt-auto">
            <label for="dpTo" class="badge">Search</label>
            <input class='form-control' type="text" id="myinvoiceInput" onkeyup="myFunction()" placeholder="Search for File No.." title="Type in a File No">
        </div>
    </div>

    <div class="row mt-3">
        <div class="col">
            <h5>Invoice Approvals</h5>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col">
            <div class="col-lg-3">
                <label for="" class="form-control">sort By</label>
                <select id="sort2" class="form-control">
                    <option>Asc</option>
                    <option>Desc</option>
                </select>
            </div>
            <div class="table-responsive" style="max-height: 500px;">
                <table class="table table-sm table-bordered table-striped" id="tblInvoiceApproval">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Invoice No</th>
                            <th>File No</th>
                            <th>Bank / Branch</th>
                            <th>Customer Name / Phone No.</th>
                            <th>Bill Amount</th>
                            <th>Paid Amount</th>
                            <th>Engineer Name</th>
                            <th>Received By</th>
                            <th>Referred By</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($invoiceApprovals as $invoice)
                        @if($invoice->has_file)
                        <tr>
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
                            <td><button class="btn btn-primary btn-sm custom-btn">Approve</button></td>
                            
                        </tr>
                        @else
                        <tr>
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

<script>
    const currentUrl = '{{route("approvalPendingReport")}}';

    // ...............sending sms Cash
    $('#tblCashApproval tbody  #sendSms1').on('click', function () {
        const id1 = $(this).closest('tr').children('td:eq(1)').text();
        console.log(id1);
        sendSmsCash(id1);
    });
    function sendSmsCash(id1) {
        axios.post(`${currentUrl}/sendSms/${id1}`)
            .then(response => {
                console.log(response.data.status);
                if (response.data.status == 'failure'){
                    toastr.warning('failed');
                }else{
                    toastr.success('success');
                
                }
            });
    }

</script>
<script>
    $('.datepicker').datepicker().datepicker('setDate', new Date);
    //cash approvals
    $('#btnShow').on('click', function() {
        const data = {
            fromDate: formatDate($('#dpFrom').datepicker('getDate')),
            toDate: formatDate($('#dpTo').datepicker('getDate')),
        }
        console.log(formatDate($('#dpFrom').datepicker('getDate')));
        $.ajax({
            url: `${currentUrl}/getBydate`,
            type: "get",
            data: data,
            success: function(response) { // What to do if we succeed
                $("#tblCashApproval tr").show()
            },
            error: function(response) {
                if (response == 'no_values')
                    console.log('error');
                $("#tblCashApproval tr").hide();
                var html = '<h5 style="text-align:center;color:#17a2b8">No Values</h5>';
                $('#tblCashApproval ').append(html);
            }
        })

    });

    function myCashFunction() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("tblCashApproval");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[1];
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }

    //Invoice approvals
    $('#inShow').on('click', function(event) {

        const data = {
            fromDate: formatDate($('#inFrom').datepicker('getDate')),
            toDate: formatDate($('#inTo').datepicker('getDate')),
        }
        console.log(formatDate($('#inFrom').datepicker('getDate')));
        $.ajax({
            url: `${currentUrl}/getBydateInvoice`,
            type: "get",
            data: data,
            success: function(response) { // What to do if we succeed
                $("#tblInvoiceApproval tr").show()
            },
            error: function(response) {
                // console.log(response.responseJSON);
                if (response.responseJSON.success == "false") {
                    console.log(response);
                    $("#tblInvoiceApproval tr").hide();
                    var html = '<h5 style="text-align:center;color:#17a2b8">No Values</h5>';
                    $('#tblInvoiceApproval ').append(html);
                }
            }
        })

    });

    function myFunction() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("myinvoiceInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("tblInvoiceApproval");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[2];
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
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