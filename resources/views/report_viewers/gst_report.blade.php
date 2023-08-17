@extends('header')
@section('content')
<div class="container-fluid p-3">
    <div class="row">
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
        <div class="col-sm-2">
            <label for="ddlReceivedBy" class="badge">Received By</label>
            <select id="ddlReceivedBy" class="form-control">
                <option value="all">All</option>
                @foreach ($deliveryBoys as $deliveryBoy)
                <option value="{{$deliveryBoy->id}}">{{$deliveryBoy->name}}</option>
                @endforeach
            </select>
        </div>
        <div class="col-sm-2">
            <label for="GstType" class="badge">Gst Type</label>
            <select id="GstType" class="form-control">
                <option value="all" selected>All</option>
                <option value="1">Paid</option>
                <option value="0">UnPaid</option>
            </select>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col mt-auto">
            <button class="btn btn-success" id="btnShow">Show</button>
            <button class="btn btn-primary" id="btnExport">Export (xlsx)</button>
            <button class="btn btn-primary" id="btnDownload">Export (docx)</button>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col">
            <table class="row-border" id="tblPaidInvoice">
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
<form method="POST" action="{{route('exportGst')}}" id="frmExport" target="_blank">
    @csrf
    <input type="hidden" name="from">
    <input type="hidden" name="to">
    <input type="hidden" name="bank">
    <input type="hidden" name="branch">
    <input type="hidden" name="engineer">
    <input type="hidden" name="receivedBy">
    <input type="hidden" name="GstType">
</form>
<script>
    const currentUrl = "{{route('GstReport')}}";
    const downloadUrl = "{{ route('ExportGst', ['from' => ':from', 'to' => ':to','gstType' => ':gstType' ]) }}";
</script>
<script src="{{ asset('js/reports/gst-report.js') }}"></script>
@endsection