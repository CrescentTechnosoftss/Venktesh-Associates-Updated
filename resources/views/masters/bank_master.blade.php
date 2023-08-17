@extends('header')
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
                <div class="p-3 mb-3">
                    <div class="row invoice-info justify-content-center">
                        <div class="col-sm-2 mt-2">
                            <label for="txtBankName" class="badge">Bank Name</label>
                        </div>
                        <div class="col-sm-4 invoice-col">
                            <input class="form-control" id="txtBankName" autocomplete="off">
                        </div>
                    </div>
                    <div class="row mt-2 invoice-info justify-content-center">
                        <div class="col-sm-2 mt-2">
                            <label for="txtBranchName" class="badge">Branch Name</label>
                        </div>
                        <div class="col-sm-4 invoice-col">
                            <input class="form-control" id="txtBranchName" autocomplete="off">
                        </div>
                    </div>
                    <div class="row mt-2 invoice-info justify-content-center">
                        <div class="col-sm-2 mt-2">
                            <label for="txtContactNo" class="badge">Contact No</label>
                        </div>
                        <div class="col-sm-4 invoice-col">
                            <input id="txtContactNo" class="form-control" name="contact" autocomplete="off">
                        </div>
                    </div>
                    <div class="row mt-2 invoice-info justify-content-center">
                        <div class="col-sm-2 mt-2">
                            <label for="txtEmailId" class="badge">Email ID</label>
                        </div>
                        <div class="col-sm-4 invoice-col">
                            <input id="txtEmailId" class="form-control" name="email" autocomplete="off">
                        </div>
                    </div>
                    <div class="row mt-2 invoice-info justify-content-center">
                        <div class="col-sm-2 mt-2">
                            <label for="txtAddress" class="badge">Address</label>
                        </div>
                        <div class="col-sm-4 invoice-col">
                            <textarea id="txtAddress" class="form-control" name="address"></textarea>
                        </div>
                    </div>
                    <div class="row mt-2 text-center">
                        <div class="col-12">
                            <button id="btnSave" class="btn btn-success">Save</button>
                            <button class="btn btn-success" id="btnUpdate">Update</button>
                            <button id="btnClear" class="btn btn-secondary">Clear</button>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col">
                            <div class="table-responsive" style="max-height: 300px;">
                                <table class="table table-sm" id="tblBanks">
                                    <thead>
                                        <tr>
                                            <th>Bank Name</th>
                                            <th>Branch Name</th>
                                            <th>Contact No</th>
                                            <th>Email ID</th>
                                            <th>Address</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($banks as $bank)
                                        <tr>
                                            <td class="d-none">{{$bank->id}}</td>
                                            <td>{{$bank->bank_name}}</td>
                                            <td>{{$bank->branch_name}}</td>
                                            <td>{{$bank->contact_no}}</td>
                                            <td>{{$bank->email_id}}</td>
                                            <td>{{$bank->address}}</td>
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
                </div>
        </div>
    </div>
</div>
<input type="hidden" id="hidId">
<input type="hidden" id="hidIndex">
<script>
    const currentUrl = "{{route('bankMaster')}}";
    const banks=@json($banks->pluck('bank_name')->unique()->values());
</script>
<script type="module" src="{{mix('js/masters/bank-master.js')}}"></script>
@endsection