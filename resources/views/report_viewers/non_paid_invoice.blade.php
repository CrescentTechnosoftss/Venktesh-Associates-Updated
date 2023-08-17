@extends('header')
@section('content')
<div class="container-fluid p-3">
    <div class="row no-print">
        <div class="col-sm-2">
            <label for="dpFromDate" class="badge">From</label>
            <input type="text" class="form-control" id="dpFromDate">
        </div>
        <div class="col-sm-2">
            <label for="dpToDate" class="badge">To</label>
            <input type="text" class="form-control" id="dpToDate">
        </div>
        <div class="col-sm-2">
            <label for="ddlBank" class="badge">Bank</label>
            <select id="ddlBank" class="form-control">
                <option value="all">All</option>
                @foreach ($banks as $bank)
                <option value="{{$bank}}">{{$bank}}</option>
                @endforeach
            </select>
        </div>
        <div class="col-sm-2">
            <label for="ddlBranch" class="badge">Branch</label>
            <select id="ddlBranch" class="form-control">
                <option value="all">All</option>
            </select>
        </div>
        <div class="col-sm-2">
            <label for="ddlEngineer" class="badge">Engineer</label>
            <select id="ddlEngineer" class="form-control">
                <option value="all">All</option>
                @foreach ($engineers as $engineer)
                <option value="{{$engineer->id}}">{{$engineer->name}}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col mt-auto">
            <button class="btn btn-success" id="btnShow">Show</button>
            <button class="btn btn-primary" id="btnExport">Export (xlsx)</button>
            <button class="btn btn-info" id="btnMail">Send Mail</button>
        </div>
    </div>
    <div class="row text-center d-none" id="divPrintHeader">
        <div class="col">
            <h5 id="printHeader"></h5>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col">
            <table class="row-border" id="tblNonPaidInvoice" style="width: 100%;">
            <tfoot>
                    <tr>
                        <td colspan="12">
                            <!-- <label>Total Amount Collected is <label id="lblTotalAmount"></label></label> -->
                        </td>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
</div>
<form method="POST" action="{{route('exportNonPaidInvoice')}}" id="frmExport" target="_blank">
    @csrf
    <input type="hidden" name="from">
    <input type="hidden" name="to">
    <input type="hidden" name="bank">
    <input type="hidden" name="branch">
    <input type="hidden" name="engineer">
</form>
<script>
    const currentUrl = "{{route('nonPaidInvoiceReport')}}";
</script>
<script src="{{mix('js/reports/non-paid-invoice.js')}}"></script>
@endsection