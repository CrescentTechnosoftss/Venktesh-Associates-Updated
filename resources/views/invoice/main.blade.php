@extends('header')
@section('content')
<link rel="stylesheet" href="{{asset('css/invoice.css')}}">
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <!-- Main content -->
            <div class="p-3 mb-3">
                <div class="row">
                    <div class="col-sm-3">
                        <label for="txtInvoiceDate" class="badge">Proforma Date</label>
                        <input id="txtInvoiceDate" class="form-control" name="invoiceDate" readonly />
                    </div>
                    <div class="col-md-4 mt-auto">
                        <label for="chkWithFile" class="badge">Use Existing File</label>
                        <input type="checkbox" id="chkWithFile" checked data-offstyle="danger">
                        <button class="btn btn-primary" id="btnShowCustomer" data-toggle="modal" data-target="#modalCustomerDetail">Customer Detail</button>
                    </div>
                    <div id="divInvoiceNo" class="col-sm-3 invoice-col">
                        <label for="ddlInvoiceNo" class="badge">Proforma No</label>
                        <select class="form-control" id="ddlInvoiceNo">
                            <option value="">Select</option>
                        </select>
                        <input type="hidden" id="hidInvoiceNo">
                    </div>
                </div>
                <!-- info row -->
                <div class="file">
                    <div class="row invoice-info">
                        <div class="col-sm-3 invoice-col">
                            <label for="ddlFileNo" class="badge">File No</label>
                            <div id="divFileNo">
                                <select class="form-control" id="ddlFileNo" name="fileNo">
                                    <option value="">Select</option>
                                    @foreach ($fileIds as $fileId)
                                    <option value="{{$fileId->uuid}}">{{$fileId->id}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <input id="txtFileNo" class="form-control" readonly>
                            <input type="hidden" id="hidFileNo">
                        </div>

                        <div class="col-sm-4 invoice-col">
                            <label for="txtCustomerName" class="badge">Customer Name</label>
                            <input id="txtCustomerName" class="form-control" readonly />
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-4 invoice-col">
                            <label for="txtEngineerName" class="badge">Engineer Name</label>
                            <input id="txtEngineerName" class="form-control" readonly />
                        </div>
                        <!-- /.col -->
                        <!-- /.col -->
                    </div>
                    <!-- Name is contact -->
                    <div class="row invoice-info">
                        <div class=" col-sm-3 invoice-col" style="display: none;">  
                            <label for="txtReferrer" class="badge">Reffered By Contact</label>
                            <input id="txtReferrer" class="form-control" readonly />
                        </div>
                        <div class=" col-sm-3 invoice-col">
                            <label for="txtReferrerMob" class="badge">Reffered By Name</label>
                            <input id="txtReferrerMob" class="form-control" readonly />
                        </div>
                        <div class="col-sm-4 invoice-col">
                            <label for="txtBankName" class="badge">Bank Name</label>
                            <input id="txtBankName" class="form-control" readonly />
                        </div>
                        <div class="col-sm-4 invoice-col">
                            <label for="txtBranchName" class="badge">Branch Name</label>
                            <input id="txtBranchName" class="form-control" readonly />
                        </div>
                        <div class="col-sm-4 invoice-col">
                            <label for="txtGstNum" class="badge">Gst No.</label>
                            <input id="txtGstNum" class="form-control"  />
                        </div>
                        
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-3">
                        <label for="ddlDescription" class="badge">Description</label>
                        <select name="" id="ddlDescription" class="form-control">
                            @foreach ($descriptions as $description)
                            <option value="{{$description}}">{{$description}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-1 mt-auto">
                        <button class="btn btn-primary" id="btnAddDescription">
                            <i class="fa fa-plus"></i>
                        </button>
                    </div>
                    <div class="col-sm-2">
                        <label for="ddlGSTPercentage" class="badge">GST Percentage</label>
                        <select name="" id="ddlGSTPercentage" class="form-control">
                            <option value="0" >0</option>
                            <option value="5">5</option>
                            <option value="12">12</option>
                            <option value="18" selected>18</option>
                            <option value="28">28</option>
                        </select>
                    </div>
                    <div class="row mt-3 text-center">
                        <div class="col-sm-2">
                            <label for="chkIGST">
                        <input type="checkbox" id="chkIGST">
                        IGST</label>
                        </div>
                    </div>
                    <div class="col-sm-4 invoice-col file">
                        <label for="txtPurchaserName" class="badge">Purchaser Name</label>
                        <input id="txtPurchaserName" class="form-control" readonly />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="table-responsive">
                            <table id="tblDescription" class="table table-sm">
                                <thead>
                                    <tr>
                                        <th>Description</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th style="width:50%">Bill Amount:</th>
                                    <td>
                                        <i class="fa fa-rupee-sign"></i>
                                        <input style=" border:none;" type="number" value="0" class="number" id="txtBillAmount" />
                                    </td>
                                </tr>
                                <tr>
                                    <th style="width:50%">GST Amount:</th>
                                    <td>
                                        <i class="fa fa-rupee-sign"></i>
                                        <input style=" border:none;" value="0" inputmode="numeric" class="number" id="txtGSTAmount" readonly />
                                    </td>
                                </tr>
                                <tr>
                                    <th style="width:50%">Total Amount:</th>
                                    <td>
                                        <i class="fa fa-rupee-sign"></i>
                                        <input style=" border:none;" readonly value="0" class="number" id="txtTotalAmount" />
                                    </td>
                                </tr>
                                <tr>
                                    <th style="width:50%">Initial Amt:</th>
                                    <td>
                                        <i class="fa fa-rupee-sign"></i>
                                        <input type="number" inputmode="numeric" style=" border:none;" value="0" id="txtInitialAmount" class="number" />
                                    </td>
                                </tr>
                                <tr>
                                    <th style="width:50%">Paid Amt:</th>
                                    <td>
                                        <i class="fa fa-rupee-sign"></i>
                                        <input style=" border:none;" value="0" id="txtPaidAmount" class="number" readonly />
                                    </td>
                                </tr>
                                <tr>
                                    <th style="width:50%">Balance Amt:</th>
                                    <td>
                                        <i class="fa fa-rupee-sign"></i>
                                        <input style=" border:none;" value="0" id="txtBalanceAmount" class="number" readonly />
                                    </td>
                                </tr>
                                <tr class="d-none">
                                    <th style="width:50%">Payment Type</th>
                                    <td>
                                        <select id="ddlPaymentType" class="form-control">
                                            <option value="CASH">CASH</option>
                                            <option value="CHEQUE">CHEQUE</option>
                                        </select>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <h3 class='bg-success'>
                    <p style='text-align:center'>Account Details</p>
                </h3>
                <div class="row invoice-info">
                    <div class=" col-sm-3 invoice-col">
                        <label for="ddlBankId" class="badge">Bank Name</label>
                        <select class="form-control" id="ddlBankId">
                            <option value="0">Select</option>
                            @foreach ($userBanks as $bank)
                            <option value="{{$bank->id}}">{{$bank->bank_name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-sm-3 invoice-col">
                        <label for="txtUserBranch" class="badge">Branch Name</label>
                        <input class="form-control" id="txtUserBranch" readonly>
                    </div>
                    <div class="col-sm-3 invoice-col">
                        <label for="txtAccountName" class="badge">Account Name</label>
                        <input id="txtAccountName" class="form-control" />
                    </div>
                    <div class="col-sm-3 invoice-col">
                        <label for="txtAccountNo" class="badge">Account No</label>
                        <input id="txtAccountNo" class="form-control" />
                    </div>
                </div>
                <br />
                <div class=" row invoice-col">
                    <div class="col-sm-3 invoice-col">
                        <label for="txtIfscCode" class="badge">IFSC Code</label>
                        <input id="txtIfscCode" class="form-control" />
                    </div>
                </div>
                <br />
                <div class="row text-center">
                    <div class="col-12">
                        <button id="btnSave" class="btn btn-success">Save</button>
                        <button id="btnView" class="btn btn-primary">View</button>
                        <button id="btnPrint" class="btn btn-info">Print</button>
                        <button id="btnDownload" class="btn btn-info">Downlad (docx)</button>
                        <button id="btnUpdate" class="btn btn-warning">Update</button>
                        <!-- <button id="btnDelete" class="btn btn-danger">Delete</button> -->
                        <button id="btnClear" class="btn btn-secondary">Clear</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@include('invoice.customer_details')
<script>
    const currentUrl = "{{route('invoice')}}";
    const printUrl = "{{url('invoice-print')}}";
    const downloadUrl = "{{url('invoice-download')}}";
</script>
<script src="{{mix('js/invoice.js') }}" type="module"></script>
@endsection