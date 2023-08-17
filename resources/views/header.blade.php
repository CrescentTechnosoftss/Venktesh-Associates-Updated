<html>

<head>
    <title>Inventory Management</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <link rel="stylesheet" href="{{asset('assets/adminlte/css/adminlte.min.css')}}">
    <link rel="stylesheet" href="{{mix('css/header.css')}}">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('assets/text-security/text-security-disc.css')}}">
    <script>
        const baseUrl = "{{url('')}}";
    </script>
    <script src="{{mix('js/app.js')}}"></script>
    <script src="{{asset('assets/adminlte/js/adminlte.min.js')}}"></script>
    <script>
    </script>
</head>

<body class="  hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">
        <div id=" backgroundoverlay">
            <nav class="main-header navbar navbar-expand navbar-white navbar-primary">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link text-white" data-widget="pushmenu" href="#">
                            <i class="fas fa-bars"></i>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-3">
                    <li class="nav-item">
                        <div class="navbar-search-block">
                            <div class="input-group input-group-sm">
                                <input class="form-control form-control-navbar" type="search" placeholder="Search File" aria-label="Search" id="txtHeaderSearch" autocomplete="off">
                                <div class="input-group-append">
                                    <button class="btn btn-navbar text-light" id="btnHeaderSearch">
                                        <i class="fas fa-search"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>

                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown dropleft">
                        <a class="btn btn-link" href="#" style="color: #fff;" data-toggle="dropdown">
                            <i class="fas fa-user-circle"></i>
                            {{session('userName')}}
                            <i class="fa fa-caret-down"></i>
                        </a>
                        <div class="dropdown-menu">
                            <input id="bgColorPicker" type="text" class="form-control" readonly data-tooltip="tooltip" title="Change Background Color of the Application for Current PC" />
                            <a href="{{route('logout')}}" class="dropdown-item" data-tooltip="tooltip" title="Logout from Current Session">
                                <i class="fa fa-power-off"></i>&nbsp;Logout
                            </a>
                        </div>
                    </li>
                </ul>
            </nav>
            <aside class="main-sidebar sidebar-dark-primary elevation-4">
                <a href="index3.html" class="brand-link  navbar-primary">

                    <span class="brand-text font-weight-light">VENKATESH & ASSOCIATES</span>
                </a>
                <div class="sidebar" id="sub-header">
                    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                        <div class="image">

                        </div>
                        <div class="info">
                            <h5 class=" text-primary">Welcome </h5>
                            <h4> <a href="#" class="d-block">{{session('userName')}}</a></h4>
                        </div>
                    </div>
                    <nav class="mt-2">
                        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                            <li class="nav-item active" id="liDashboard">
                                <a href="{{route('dashboard')}}" class="nav-link">
                                    <i class="nav-icon fas fa-tachometer-alt"></i>
                                    <p>
                                        Dashboard
                                        <i class="right fas"></i>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item" id="liMasters">
                                <a href="#" class="nav-link ">
                                    <i class="nav-icon fa fa-chart-bar"></i>
                                    <p>
                                        Masters
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item" id="liBankMaster">
                                        <a href="{{route('bankMaster')}}" class="nav-link">
                                            <i class="nav-icon fas fa-building"></i>
                                            <p>
                                                Bank Master
                                                <i class="right fas"></i>
                                            </p>
                                        </a>
                                    </li>
                                    <li class="nav-item" id="liEngineerMaster">
                                        <a href="{{route('engineerMaster')}}" class="nav-link">
                                            <i class="nav-icon fas fa-user-tie"></i>
                                            <p>
                                                Engineer Master
                                                <i class="right fas"></i>
                                            </p>
                                        </a>
                                    </li>
                                    <li class="nav-item" id="liDeliveryBoyMaster">
                                        <a href="{{route('deliveryBoyMaster')}}" class="nav-link">
                                            <i class="nav-icon fas fa-biking"></i>
                                            <p>
                                                Delivery Boy Master
                                                <i class="right fas"></i>
                                            </p>
                                        </a>
                                    </li>
                                    <li class="nav-item" id="liMailMaster">
                                        <a href="{{route('mailMaster')}}" class="nav-link">
                                            <i class="nav-icon fas fa-envelope"></i>
                                            <p>
                                                Mail Master
                                                <i class="right fas"></i>
                                            </p>
                                        </a>
                                    </li>
                                    @if (session('userType')==='admin')
                                    <li class="nav-item" id="liUserMaster">
                                        <a href="{{route('userMaster')}}" class="nav-link ">
                                            <i class="nav-icon fas fa-user-lock"></i>
                                            <p>User Master
                                                <i class="right fas"></i>
                                            </p>
                                        </a>
                                    </li>
                                    @endif
                                </ul>
                            </li>
                            <li class="nav-item" id="liCustomerDetails">
                                <a href="{{route('customerDetails')}}" class="nav-link">
                                    <i class="nav-icon fas fa-user"></i>
                                    <p>
                                        Customer Details
                                        <i class="right fas"></i>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item" id="liSearchFiles">
                                <a href="{{route('searchFiles')}}" class="nav-link">
                                    <i class="nav-icon fa fa-search"></i>
                                    <p>
                                        Search Files
                                        <i class="right fas"></i>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item" id="liInvoice">
                                <a href="{{route('invoice')}}" class="nav-link">
                                    <i class="nav-icon fa fa-shopping-bag"></i>
                                    <p>
                                    Proforma Bill
                                        <i class="right fas"></i>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item" id="liPaymentReceiving">
                                <a href="{{route('paymentReceiving')}}" class="nav-link ">
                                    <i class="nav-icon fa fa-rupee-sign"></i>
                                    <p>
                                        Payment Receiving
                                        <i class="right fas"></i>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item" id="liReports">
                                <a href="#" class="nav-link ">
                                    <i class="nav-icon fa fa-chart-bar"></i>
                                    <p>
                                        Reports
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item" id="liNonPaidInvoice">
                                        <a href="{{route('nonPaidInvoiceReport')}}" class="nav-link">
                                            <p>Non Paid Proforma</p>
                                        </a>
                                    </li>
                                    <li class="nav-item" id="liPaidInvoice">
                                        <a href="{{route('paidInvoiceReport')}}" class="nav-link">
                                            <p>Paid Proforma</p>
                                        </a>
                                    </li>
                                    <li class="nav-item" id="liInvoice">
                                        <a href="{{route('paidInvoiceReports')}}" class="nav-link">
                                            <p>Paid Invoice</p>
                                        </a>
                                    </li>
                                    <li class="nav-item" id="liGstReport">
                                        <a href="{{route('GstReport')}}" class="nav-link">
                                            <p>GST Report</p>
                                        </a>
                                    </li>
                                    <li class="nav-item" id="liSalesReportInvoice">
                                        <a href="{{route('salesReportByInvoice')}}" class="nav-link">
                                            <p>Sales Report (Proforma)</p>
                                        </a>
                                    </li>
                                    <li class="nav-item" id="liSalesReportFile">
                                        <a href="{{route('salesReportByFile')}}" class="nav-link">
                                            <p>Sales Report (File)</p>
                                        </a>
                                    </li>
                                    @if(session('userType')==='admin')
                                    <li class="nav-item" id="liApprovalPending">
                                        <a href="{{route('approvalPendingReport')}}" class="nav-link">
                                            <p>Approval Report</p>
                                        </a>
                                    </li>
                                    @endif
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </aside>
            <div>
                <section>
                    <div class="content-wrapper">
                        <div class="content-header">
                            <div class="container-fluid">
                                <div class="row mb-2">
                                    <div class="col-sm-6">
                                        <h3 class="m-0 text-dark">{{$pageName}}</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @yield('content')
                    </div>
                </section>
            </div>
            <footer class="main-footer no-print">
                <strong>Copyright &copy; 2020-2021 <a href="https://crescenttechnosofts.com" target="_blank">Crescent Technosoft</a>.</strong>
                All rights reserved.
                <div class="float-right d-none d-sm-inline-block">

                </div>
            </footer>
            <aside class="control-sidebar control-sidebar-dark">
            </aside>
        </div>
    </div>
    <div class="modal fade no-print" id="modalHeaderSearch">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <div class="col">
                        <h4>Customer Files</h4>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="table-responsive" style="max-height: 300px;">
                        <table class="table table-sm" id="tblHeaderSearchFiles">
                            <thead>
                                <tr>
                                    <th>File No</th>
                                    <th>Invoice No</th>
                                    <th>Customer Name</th>
                                    <th>Contact No</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                </div>
                <div class="modal-footer text-center">
                    <div class="col">
                        <button class="btn btn-primary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</html>