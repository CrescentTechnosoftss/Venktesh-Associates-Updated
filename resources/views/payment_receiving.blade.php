@extends('header')
@section('content')
<div class="container" id="divPaymentReceiving">
    <div class="row invoice-info">
    <div class="col-sm-3">
        <label for="txtInvoiceDate" class="badge">Invoice Date</label>
            <input id="txtInvoiceDate" class="form-control" name="invoiceDate" readonly />
        </div>
        <!-- <div class="col-sm-2 invoice-col">
            <label for="ddlBillNo" class="badge">Bill No</label>
            <select class="form-control" id="ddlBillNo">
                <option value="">Select</option>
                @foreach ($BillNos as $BillNo)
                <option value="{{$BillNo->bill_no}}">{{$BillNo->bill_no}}</option>
                @endforeach
            </select>
            <input type="hidden" id="hidBillNo">
        </div> -->
        <div class="col-sm-2 invoice-col">
            <label for="ddlInvoiceNo" class="badge">Proforma No</label>
            <select class="form-control" id="ddlInvoiceNo">
                <option value="">Select</option>
                @foreach ($invoiceNos as $invoiceNo)
                <option value="{{$invoiceNo->uuid}}">{{$invoiceNo->id}}</option>
                @endforeach
            </select>
            <input type="hidden" id="hidInvoiceNo">
        </div>
        <div class="col-sm-2 invoice-col">
            <label for="ddlFileNo" class="badge">File No</label>
            <select class="form-control" id="ddlFileNo">
                <option value="">Select</option>
                @foreach ($fileNos as $fileNo)
                <option value="{{$fileNo->invoiceUuid}}">{{$fileNo->id}}</option>
                @endforeach
            </select>
            <input type="hidden" id="hidInvoiceNo">
        </div>
        <div class="col-sm-2">
             <label for="txtBillNo" class="badge">Click Here To Generate Bill No</label>
            <!-- <input id="txtBillNo" class="form-control" readonly /> -->
            <button id="billNoInput" class="btn btn-success">Generate Bill Number</button>
        </div>
    </div>
    <div class="row mt-4">
        <div class="col">
            <h5>Customer Details</h5>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">
            <label for="txtFileNo" class="badge">File No</label>
            <input id="txtFileNo" class="form-control" readonly />
        </div>
        <div class="col-sm-2">
            <label for="txtBillNos" class="badge">Bill No</label>
            <input id="txtBillNos" class="form-control" readonly />
        </div>
        <div class="col-sm-3 invoice-col">
            <label for="txtBankName" class="badge">Bank Name</label>
            <input id="txtBankName" class="form-control" readonly />
        </div>
        <div class="col-sm-3 invoice-col">
            <label for="txtBranchName" class="badge">Branch Name</label>
            <input id="txtBranchName" class="form-control" readonly />
        </div>
        <div class="col-sm-3">
            <label for="txtCustomerName" class="badge">Customer Name</label>
            <input id="txtCustomerName" class="form-control" readonly />
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-sm-3">
            <label for="txtPurchaserName" class="badge">Purchaser Name</label>
            <input id="txtPurchaserName" class="form-control" readonly />
        </div>
        <div class="col-sm-2 invoice-col">
            <label for="txtBillAmount" class="badge">Bill Amount</label>
            <input id="txtBillAmount" class="form-control" />
        </div>
        <div class="col-sm-2 invoice-col">
            <label for="txtAdvanceAmount" class="badge">Advance Amount</label>
            <input id="txtAdvanceAmount" class="form-control" readonly />
        </div>
    </div>
    <div class="row mt-2" >
    <div class="col-sm-2 invoice-col">
        <label for="txtAmount" class="badge">Total Amount</label>
        <input id="txtAmount" class="form-control"  />
      </div>

    <div class="col-sm-2 invoice-col">
        <label for="selGstPercentage" class="badge">GST Percentage</label>
        <select id="selGstPercentage" class="form-control">
            <option value="0">0%</option>
            <option value="5">5%</option>
            <option value="12">12%</option>
            <option value="18" selected>18%</option>
            <option value="28">28%</option>
            <!-- Add other GST percentage options here -->
        </select>
    </div>
    <div class="col-sm-2 invoice-col">
        <label for="txtGstAmount" class="badge">GST Amount</label>
        <input id="txtGstAmount" class="form-control" readonly />
    </div>
   </div>
    <hr>
    <div class="row">
        <div class="col">
            <h5>Payment Details</h5>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">
            <label class="badge" for="ddlPaymentReceivedBy">Payment Received By</label>
            <select id="ddlPaymentReceivedBy" class="form-control">
                <option value="0">Select</option>
                @foreach ($deliveryBoys as $deliveryBoy)
                <option value="{{$deliveryBoy->id}}">{{$deliveryBoy->name}}</option>
                @endforeach
            </select>
        </div>
        <div class="col-sm-2">
            <label for="txtAmountPaid" class="badge">Amount Paid</label>
            <input id="txtAmountPaid" class="form-control" type="number" inputmode="numeric" />
        </div>
        <div class="col-sm-2 invoice-col">
            <label for="txtPaidDate" class="badge">Paid Date</label>
            <input id="dpPaidDate" class="form-control" readonly />
        </div>
        <div class="col-sm-3">
            <label for="ddlBank" class="badge">Credited To</label>
            <select id="ddlBank" class="form-control">
                <option value="0">Select</option>
                @foreach ($banks as $bank)
                <option value="{{$bank->id}}">{{$bank->bank_name}}</option>
                @endforeach
            </select>
        </div>
        <div class="col-sm-3">
            <label for="txtRemarks" class="badge">Remarks</label>
            <textarea id="txtRemarks" class="form-control"></textarea>
        </div>
    </div>
    <div class="row mt-3 text-center">
        <div class="col">
            <label for="chkPaid">
                <input type="checkbox" id="chkPaid">
                Balance Paid</label>
        </div>
    </div>
    <div class="row mt-2 text-center">
        <div class="col">
            <button id="btnSave" class="btn btn-success">Save</button>
            <button id="btnPrint" class="btn btn-info">Print</button>
            <button id="btnDownload" class="btn btn-info">Downlad (docx)</button>
            <button id="btnClear" class="btn btn-secondary">Clear</button>
        </div>
    </div>
</div>
<script>
    const currentUrl = "{{route('paymentReceiving')}}";
    const printUrl = "{{url('purchaseInvoice')}}";
    const downloadUrl = "{{url('invoices-download')}}";
</script>
<script type="module" src="{{mix('js/payment-receiving.js')}}"></script>
@endsection