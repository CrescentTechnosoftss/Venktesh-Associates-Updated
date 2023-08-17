@extends('header')
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-md-3">
            <label for="ddlSearchBy">Search By</label>
            <select id="ddlSearchBy" class="form-control">
                @foreach ($searchFactors as $searchFactor)
                <option value="{{$searchFactor}}">{{$searchFactor}}</option>
                @endforeach
            </select>
        </div>
        <div class="col-md-3">
            <label for="txtSearch">Search Value</label>
            <input type="text" class="form-control" id="txtSearch">
        </div>
        <div class="col mt-auto">
            <button class="btn btn-primary" id="btnSearch">Search</button>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col">
            <div class="table-responsive" id="searchFile">
                <table id="tblFileSearch">

                </table>
            </div>
        </div>
    </div>
</div>
<script>
    const currentUrl = "{{route('searchFiles')}}";
</script>
<script>
    // Add this line to include Font Awesome CSS
$('head').append('<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />');

</script>
<script src="{{mix('js/search-files.js')}}"></script>
@endsection