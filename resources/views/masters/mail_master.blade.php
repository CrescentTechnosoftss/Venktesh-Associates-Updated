@extends('header')
@section('content')
<div class="container">
    <div class="row mt-2 invoice-info justify-content-center">
        <div class="col-sm-2 mt-2">
            <label for="txtSenderName" class="badge">Sender Name
                <i class="fa fa-asterisk text-danger" style="font-size: 6px;"></i>
            </label>
        </div>
        <div class="col-sm-4 invoice-col">
            <input type="text" id="txtSenderName" class="form-control" autocomplete="off">
        </div>
        <div class="col-1"></div>
    </div>
    <div class="row mt-2 invoice-info justify-content-center">
        <div class="col-sm-2 mt-2">
            <label for="txtEmailID" class="badge">Email ID
                <i class="fa fa-asterisk text-danger" style="font-size: 6px;"></i>
            </label>
        </div>
        <div class="col-sm-4 invoice-col">
            <input type="email" id="txtEmailID" class="form-control">
        </div>
        <div class="col-1"></div>
    </div>
    <div class="row mt-2 invoice-info justify-content-center">
        <div class="col-sm-2 mt-2">
            <label for="txtPassword" class="badge">Email Password
                <i class="fa fa-asterisk text-danger" style="font-size: 6px;"></i>
            </label>
        </div>
        <div class="col-sm-4 invoice-col">
            <input id="txtPassword" class="form-control disc">
        </div>
        <div class="col-1"></div>
    </div>
    <div class="row mt-2 text-center">
        <div class="col-12">
            <button id="btnSave" class="btn btn-success">Save</button>
            <button id="btnClear" class="btn btn-secondary">Clear</button>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col">
            <div class="table-responsive" style="max-height: 300px;">
                <table class="table table-sm" id="tblEmailAccounts">
                    <thead>
                        <tr>
                            <th>Sender Name</th>
                            <th>Email ID</th>
                            <th>Default</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($accounts as $account)
                        <tr class="{{$account->is_default?'text-primary':''}}">
                            <td class="d-none">{{$account->id}}</td>
                            <td>{{$account->sender_name}}</td>
                            <td>{{$account->email_address}}</td>
                            <td>
                                <button class="btn btn-sm btn-primary default">Default</button>
                            </td>
                            <td>
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
    <input type="hidden" id="mailId">
    <input type="hidden" id="rowIndex">
</div>
<script>
    const currentUrl = "{{route('mailMaster')}}";
</script>
<script type="module" src="{{mix('js/masters/mail-master.js')}}"></script>
@endsection