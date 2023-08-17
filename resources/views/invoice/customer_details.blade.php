<div class="modal fade" id="modalCustomerDetail">
    <div class="modal-dialog modal-lg">
        <div class="modal-content bg-all">
            <div class="modal-header">
                <h4>Customer Details</h4>
            </div>
            <div class="modal-body">
                <div class="row ">
                    <div class="col-md-4">
                        <label for="txtInvoiceFileNo" class="badge">File No</label>
                        <input type="text" class="form-control" id="txtInvoiceFileNo">
                    </div>
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
                        <label class="badge" for="txtPurchaser">Purchaser Name</label>
                        <input id="txtPurchaser" name="purchaser" autocomplete="off" class="form-control" />
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-4">
                        <label class="badge" for="txtContact">Contact No</label>
                        <input id="txtContact" name="contact" class="form-control" />
                    </div>
                    <div class="col-sm-4">
                    <label for="txtGstNo" class="badge">Gst No.</label>
                            <input id="txtGstNo" class="form-control"  />
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
                        <label class="badge" for="txtInvoiceReferrer">Referred By Contact</label>
                        <input id="txtInvoiceReferrer" name="referrer" class="form-control" />
                    </div>
                    <div class="col-sm-4">
                        <label class="badge" for="txtInvoiceName">Referred By Name</label>
                        <input id="txtInvoiceName" name="referrer" class="form-control" />
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
                        <label for="dpReportDate" class="badge">Report Delivery Date</label>
                        <input id="dpReportDate" name="reportDate" class="form-control" readonly />
                    </div>
                    <div class="col-sm-4">
                        <label for="txtDeliveredTo" class="badge">Delivered To</label>
                        <input class="form-control" id="txtDeliveredTo" name="deliveredTo">
                    </div>
                </div>
            </div>
            <div class="modal-footer d-flex justify-content-center">
                <button class="btn btn-primary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>