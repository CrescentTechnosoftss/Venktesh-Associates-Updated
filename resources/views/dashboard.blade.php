@extends('header')
@section('content')
<div class="container-fluid">
    <!-- Small boxes (Stat box) -->
    <div class="row">
        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">@csrf
                <div class="inner">
                    <h3>{{$files}}</h3>
                    <p>Customers</p>
                </div>
                <div class="icon">
                    <i class="fas  fa-money-bill-alt"></i>
                </div>
                <a href="{{route('customerDetails')}}" class="small-box-footer">Add Customer <i class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
                <div class="inner">
                    <h3>{{$invoices}}</h3>

                    <p>Invoice</p>
                </div>
                <div class="icon">
                    <i class="fas  fa-money-bill-alt"></i>
                </div>
                <a href="{{route('invoice')}}" class="small-box-footer">Go to Invoice <i class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
    </div>
</div>
<script>
    $('#liDashboard a').addClass('active');
</script>
@endsection