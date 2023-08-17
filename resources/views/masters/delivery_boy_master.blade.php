@extends('header')
@section('content')
<div class="container">
    <div class="row mt-2 invoice-info justify-content-center">
        <div class="col-sm-2 mt-2">
            <label for="txtDeliveryBoyName" class="badge">Delivery Boy Name <i class="fa fa-asterisk text-danger" style="font-size: 6px;"></i></label>
        </div>
        <div class="col-sm-4 invoice-col">
            <input type="text" id="txtDeliveryBoyName" class="form-control" autocomplete="off">
        </div>
        <div class="col-1"></div>
    </div>
    <div class="row mt-2 invoice-info justify-content-center">
        <div class="col-sm-2 mt-2">
            <label for="txtContactNo" class="badge">Contact No</label>
        </div>
        <div class="col-sm-4 invoice-col">
            <input type="text" id="txtContactNo" class="form-control">
        </div>
        <div class="col-1"></div>
    </div>
    <div class="row mt-2 invoice-info justify-content-center">
        <div class="col-sm-2 mt-2">
            <label for="txtEmailId" class="badge">Email ID</label>
        </div>
        <div class="col-sm-4 invoice-col">
            <input type="email" id="txtEmailId" class="form-control">
        </div>
        <div class="col-1"></div>
    </div>
    <div class="row mt-2 invoice-info justify-content-center">
        <div class="col-sm-2 mt-2">
            <label for="txtAddress" class="badge">Address</label>
        </div>
        <div class="col-sm-4 invoice-col">
            <textarea id="txtAddress" class="form-control"></textarea>
        </div>
        <div class="col-1"></div>
    </div>
    <div class="row mt-2 text-center">
        <div class="col-12">
            <button id="btnSave" class="btn btn-success">Save</button>
            <button id="btnUpdate" class="btn btn-success d-none">Update</button>
            <button id="btnClear" class="btn btn-secondary">Clear</button>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col">
            <div class="table-responsive" style="max-height: 300px;">
                <table class="table table-sm" id="tblDeliveryBoy">
                    <thead>
                        <tr>
                            <th>Delivery Boy Name</th>
                            <th>Contact No</th>
                            <th>Email ID</th>
                            <th>Address</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($deliveryBoys as $deliveryBoy)
                        <tr>
                            <td class="d-none">{{$deliveryBoy->id}}</td>
                            <td>{{$deliveryBoy->name}}</td>
                            <td>{{$deliveryBoy->contact_no}}</td>
                            <td>{{$deliveryBoy->email_id}}</td>
                            <td>{{$deliveryBoy->address}}</td>
                            <td>
                                <button class="btn btn-primary btn-sm">
                                    <i class="fa fa-pencil-alt"></i>
                                </button>
                                <button class="btn btn-danger btn-sm">
                                    <i class="fa fa-trash-alt"></i>
                                </button>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <input type="hidden" id="deliveryBoyId">
    <input type="hidden" id="rowIndex">
</div>
<script>
    const currentUrl = "{{route('deliveryBoyMaster')}}";
</script>
<script type="module" src="{{mix('js/masters/delivery-boy-master.js')}}"></script>
@endsection