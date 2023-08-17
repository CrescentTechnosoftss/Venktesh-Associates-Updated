@extends('header')
@section('content')
<div class="container-fluid p-3">
    <div class="row">
        <div class="col-sm-2">
            <label for="ddlFilterBy" class="badge">Filter By</label>
            <select id="ddlFilterBy" class="form-control">
                <option value="date">Date</option>
                <option value="number">Number</option>
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
        <div class="col-sm-2 by-number">
            <label for="txtFromNo" class="badge">From</label>
            <input type="number" inputmode="numeric" class="form-control" id="txtFromNo">
        </div>
        <div class="col-sm-2 by-number">
            <label for="txtToNo" class="badge">To</label>
            <input type="number" inputmode="numeric" class="form-control" id="txtToNo">
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
            <label for="ddlStatus" class="badge">Status</label>
            <select id="ddlStatus" class="form-control">
                <option value="all">All</option>
                @foreach ($statuses as $status)
                <option value="{{$status}}">{{$status}}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col mt-auto">
            <button class="btn btn-success" id="btnShow">Show</button>
            <button class="btn btn-primary" id="btnExport">Export (xlsx)</button>
        </div>
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
<form method="POST" action="{{route('exportSalesByFile')}}" id="frmExport" target="_blank">
    @csrf
    <input type="hidden" name="filterBy">
    <input type="hidden" name="fromDate">
    <input type="hidden" name="toDate">
    <input type="hidden" name="from">
    <input type="hidden" name="to">
    <input type="hidden" name="engineer">
    <input type="hidden" name="status">
</form>
<script>
    const currentUrl = "{{route('salesReportByFile')}}";
</script>
<script type="module" src="{{mix('js/reports/sales-report-by-file.js')}}"></script>
@endsection