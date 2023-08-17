@extends('header')
@section('content')

<div class="container-fluid">
    <form id="frmCustomerDetails">
        <div class="row">
            <div class="col-12">
                <!-- Main content -->
                <div class="p-3 mb-3">
                    <div class="row" id="divFileNo">
                        <div class="col-sm-3">
                            <label for="ddlFileNo" class="badge">File No</label>
                            <select id="ddlFileNo" class="form-control">
                                <option value="">Select</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-2">
                            <label class="badge" for="dpFileDate">Date</label>
                            <input id="dpFileDate" class="form-control" name="fileDate" readonly />
                        </div>
                    </div>
                    <div class="row ">
                        <div class="col-sm-4">
                            <label class="badge" for="ddlBank">Bank Name</label>
                            <select class="form-control" id="ddlBank" name="bank">
                                <option value="">Select</option>
                                @foreach ($banks as $bank)
                                <option value="{{$bank}}">{{$bank}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-sm-4">
                            <label class="badge" for="ddlBranch">Branch</label>
                            <select class="form-control" id="ddlBranch" name="branch">
                                <option value="">Select</option>
                            </select>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-4">
                            <label class="badge" for="txtCustomer">Customer Name</label>
                            <input id="txtCustomer" name="customer" autocomplete="off" class="form-control" />
                        </div>
                        <div class="col-sm-4">
                            <label class="badge" for="txtPurchaserName">Purchaser Name</label>
                            <input id="txtPurchaserName" name="purchaser" autocomplete="off" class="form-control" />
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-4">
                            <label class="badge" for="txtContact">Contact No</label>
                            <input id="txtContact" name="contact" class="form-control" />
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-4">
                            <label class="badge" for="txtAddress">Address</label>
                            <textarea id="txtAddress" name="address" class="form-control"></textarea>
                        </div>
                        <div class="col-sm-4">
                            <label class="badge" for="txtRemarks">Remarks</label>
                            <textarea id="txtRemarks" name="remarks" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-4">
                            <label class="badge" for="txtReferrer">Referred By Name</label>
                            <input id="txtReferrer" name="referrer" class="form-control" />
                        </div>
                        <div class="col-sm-4">
                            <label class="badge" for="txtReferrer">Referred By Contact</label>
                            <input id="txtRefMob" name="referrerMob" class="form-control" />
                        </div>
                        <div class="col-sm-4">
                            <label for="ddlEngineer" class="badge">Engineer Name</label>
                            <select class="form-control" id="ddlEngineer" name="engineer">
                                <option value="0">Select</option>
                                @foreach ($engineers as $engineer)
                                <option value="{{$engineer->id}}">{{$engineer->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class=" col-sm-4">
                            <label for="engNum" class="badge">Engineer Number</label>
                            <input id="engNum" name="enumber" class="form-control" />
                        </div>
                        <div class=" col-sm-4">
                            <label for="txtApartmentName" class="badge">Apartment Name</label>
                            <input id="txtApartmentName" name="apartment" class="form-control" />
                        </div>
                    </div>
                    <br />
                    <div class="row mt-2">
                        <div class=" col-sm-4">
                            <label for="txtStatus" class="badge">Status</label>
                            <select class="form-control" id="txtStatus" name="status">
                                <option value="">Select</option>
                                @foreach ($statuses as $status)
                                <option value="{{$status}}">{{$status}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-sm-2">
                            <label for="txtTotalValue" class="badge">Total Value</label>
                            <input class="form-control" id="txtTotalValue" name="totalValue" type="number" inputmode="numeric">
                        </div>
                        <div class="col-sm-2">
                            <label for="txtBillAmount" class="badge">Bill Amount</label>
                            <input class="form-control" id="txtBillAmount" name="billAmount" type="number" inputmode="numeric">
                        </div>
                        <div class="col-sm-2">
                            <label for="txtCashPaid" class="badge">Cash Paid</label>
                            <input id="txtCashPaid" name="cashPaid" class="form-control" type="number" inputmode="numeric" />
                        </div>
                        <div class="col-sm-2">
                            <label for="txtApprovalStatus" class="badge">Approval for Cash</label>
                            <input type="text" class="form-control" id="txtApprovalStatus" readonly>
                        </div>
                        <div class="col-sm-2">
                            <label for="txtApprovalStatus" class="badge">Approval for Invoice</label>
                            <input type="text" class="form-control" id="txtInvoiceApproved" readonly>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-4">
                            <label for="ddlDeliveryBoy" class="badge">Delivery Boy</label>
                            <select class="form-control" id="ddlDeliveryBoy" name="deliveryBoy">
                                <option value="0">Select</option>
                                @foreach ($deliveryBoys as $deliveryBoy)
                                <option value="{{$deliveryBoy->id}}">{{$deliveryBoy->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-sm-2">
                            <label for="dpReportDate" class="badge">Report Delivery Date</label>
                            <input id="dpReportDate" name="reportDate" class="form-control" readonly />
                        </div>
                        <div class="col-sm-2">
                            <label for="txtInvoiceNo" class="badge">Invoice No</label>
                            <input id="txtInvoiceNo" class="form-control" readonly />
                        </div>
                        <div class="col-sm-4">
                            <label for="txtDeliveredTo" class="badge">Delivered To</label>
                            <input class="form-control" id="txtDeliveredTo" name="deliveredTo">
                        </div>
                    </div>
                    <div class="row mt-2">

                        <div class="col-sm-4 d-none">
                            <label for="txtPaymentStatus" class="badge">Default Payment Status</label>
                            <input class="form-control" id="txtPaymentStatus" name="paymentStatus" readonly>
                        </div>
                    </div>
                    <div class="row mt-2 text-center">
                        <div class="col-12">
                            <button type="button" id="btnSave" class="btn btn-success">Save</button>
                            <button type="button" id="btnView" class="btn btn-primary">View</button>
                            <button type="button" class="btn btn-info" id="btnPrint">Print Rapper</button>
                            <button type="button" id="btnUpdate" class="btn btn-warning">Update</button>
                            <!-- <button type="button" id="btnDelete" class="btn btn-danger">Delete</button> -->
                            <button type="button" id="btnClear" class="btn btn-secondary">Clear</button>
                        </div>
                    </div>
                </div>
                <!-- /.invoice -->
            </div><!-- /.col -->
        </div>
    </form>
</div>
<script>
    const currentUrl = "{{route('customerDetails')}}";
    const customers = @json($customers);
    const contacts = @json($contacts);
</script>
<script type="module" src="{{mix('js/customer-details.js')}}"></script>
@endsection