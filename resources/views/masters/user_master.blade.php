@extends('header')
@section('content')
<link rel="stylesheet" href="{{asset('css/user-master.css')}}">
<div class="container mt-2">
    <div class="row">
        <div class="offset-md-3 col-sm-8">
            <div class="pb-2 pl-2 pr-2">
                <div id="tabs">
                    <ul>
                        <li><a href="#tabsAddUser">Add User</a></li>
                        <li><a href="#tabsUpdateUser">Update User</a></li>
                        <li><a href="#tabsDeleteUser">Delete User</a></li>
                    </ul>
                    <div id="tabsAddUser" class="col-md-8 offset-md-2">
                        <div class="row mt-2">
                            <div class="col-lg-8 background-All">
                                <label class="badge" for="ddlAddUserType">User Type</label>
                                <select id="ddlAddUserType" class="form-control">
                                    <option value="user">User</option>
                                    <option value="admin">Admin</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8 background-All">
                                <label class="badge" for="txtAddUserName">User Name</label>
                                <input class="form-control" id="txtAddUserName" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8 background-All">
                                <label class="badge" for="txtAddPassword">Password</label>
                                <input class="form-control disc" id="txtAddPassword" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8 background-All text-center pt-3">
                                <button class="btn btn-success" id="btnAddUser">Add User</button>
                                <button class="btn btn-warning btnClear">Clear</button>
                            </div>
                        </div>
                    </div>
                    <div id="tabsUpdateUser" class="col-md-8 offset-md-2">
                        <div class="row mt-2">
                            <div class="col-lg-8 background-All">
                                <label class="badge">
                                    User Name</label>
                                <select class="form-control" id="ddlUpdateUser">
                                    <option value="">Select</option>
                                    @foreach ($users as $user)
                                    <option value="{{$user->id}}">{{$user->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8 background-All">
                                <label class="badge" for="ddlUpdateUserType">User Type</label>
                                <select id="ddlUpdateUserType" class="form-control">
                                    <option value="user">User</option>
                                    <option value="admin">Admin</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8 background-All">
                                <label class="badge">New Name</label>
                                <input class="form-control" id="txtUpdateUserName" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8 background-All">
                                <label class="badge">New Password</label>
                                <input class="form-control disc" id="txtUpdatePassword" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8 text-center background-All pt-5">
                                <button class="btn btn-success btn-sm" id="btnUpdateUser">Update</button>
                                <button class="btn btn-warning btn-sm btnClear">Clear</button>
                            </div>
                        </div>
                        <div class="row text-center">
                            <div class="col-lg-8">
                                <label class="text-info">
                                    Leave the password blank if you dont wan't to Change the Pasword
                                </label>
                            </div>
                        </div>
                    </div>
                    <div id="tabsDeleteUser" class="col-md-8 offset-md-2">
                        <div class="row mt-5">
                            <div class="col-lg-8 background-All">
                                <label class="badge">
                                    User Name</label>
                                <select class="form-control" id="ddlDeleteUser">
                                    <option value="">Select</option>
                                    @foreach ($users as $user)
                                    <option value="{{$user->id}}">{{$user->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8 text-center background-All pt-5">
                                <button class="btn btn-success btn-sm" id="btnDeleteUser">Delete User</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    const currentUrl = "{{route('userMaster')}}";
</script>
<script src="{{mix('js/masters/user-master.js')}}"></script>
@endsection