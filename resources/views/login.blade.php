<html>

<head>
    <title>Inventory</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{mix('css/app.css')}}">
    <link rel="stylesheet" href="{{asset('assets/mdb5-standard-ui-kit-free-3.3.0/css/mdb.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/login.css')}}">
</head>

<body>
    <section>
        <div class="row">
            <div class="col-lg-6 col-sm-6 col-xl-6 col-md-6 " style="background: #00BFFF;">
                <div class=" text-white text-primary ml-5 visible-lg">
                    <span id="Label6" class=" text-right" style="font-family:Times New Roman;font-size:XX-Large;font-weight:bold;">Inventory Management
                        System</span>
                </div>
                <div class=" text-white text-primary  visible-sm visible-md visible-xs">
                    <span id="txthealder" class=" text-right" style="font-family:Times New Roman;font-size:X-Large;font-weight:bold;">Inventory Management
                        System</span>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6 col-xl-6 col-md-6" style="background: #00BFFF;">
                <div class=" text-white text-right visible-lg" style="margin-right: 10%">
                    Developed By <a class="text-white font-weight-bold" href="https://www.crescenttechnosofts.com" target="_blank">Crescent Technosoft</a>
                    <br />
                    <i class="fa fa-mobile-alt" style="font-size: large"></i>
                    <label class="text-left">+91-9944992460</label>&nbsp;
                    <i class="fa fa-phone-square" style="font-size: large"></i>
                    <label class=" text-left">044-43556696</label>
                </div>
                <div class=" text-white   text-right  visible-sm visible-md visible-xs   ">
                    Developed By <a class="text-white font-weight-bold" href="https://www.crescenttechnosofts.com" target="_blank">Crescent Technosoft</a>
                    <br />
                    <i class="fa fa-mobile-alt" style="font-size: large"></i>
                    <label class=" text-left font-medium">+91-9944992460</label>&nbsp;
                    <i class="fa fa-phone-square" style="font-size: large"></i>
                    <label class=" text-left font-medium">+91-9944992460</label>&nbsp;
                </div>
            </div>
        </div>
        <div class="pt-5"></div>
        <div class="pt-5"></div>
        <div class="container">
            <div class="row ">
                <div class="col-md-4 col-12">
                    <!-- <img src='assets/Images/Assets/logo.jpg' alt="Logo" class="img-fluid img-thumbnail" /> -->
                </div>
                <!-- <div class="col-md-6">
                </div> -->
                <div class="col-md-3 col-12">
                    <form method="POST" action="{{route('validate')}}">
                        @csrf
                        <div class="form-outline mb-4">
                            <input id="txtUserName" class="form-control" name="username" value="{{old('username')}}" required/>
                            <label class="form-label" for="txtUserName">User Name</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="password" id="txtPassword" class="form-control" name="password" value="{{old('password')}}" required/>
                            <label class="form-label" for="txtPassword">Password</label>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                    </form>
                    @if(Session::has('message'))
                    <div class="alert alert-danger text-center">
                        {{session('message')}}
                    </div>
                    @endif
                </div>
            </div>
        </div>
    </section>
    <script src="{{asset('assets/mdb5-standard-ui-kit-free-3.3.0/js/mdb.min.js')}}"></script>
</body>

</html>