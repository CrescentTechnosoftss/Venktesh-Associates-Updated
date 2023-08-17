@extends('header')
@section('content')

<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div style=" margin-top:100px" class="p-3 mb-3">
                <div class="row invoice-info  justify-content-center">
                    <div class="col-sm-4 invoice-col">
                        <div class="input-group mb-3">
                            <input id="txtBankName" class="form-control" placeholder="Bank Name" />
                            <div class="input-group-prepend">
                                <button id="btnAddBank" class="btn btn-success"><i class="fas fa-plus"></i></button>
                                <button id="btnRemoveBank" class="btn btn-danger"><i class=" fas fa-trash"></i></button>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 invoice-col">
                        <div class="input-group mb-3">
                            <input id="txtBranchName" class="form-control" placeholder="Branch Name" />
                            <div class="input-group-prepend">
                                <button id="btnAddBranch" class="btn btn-success"><i class="fas fa-plus"></i></button>
                                <button id="btnRemoveBranch" class="btn btn-danger"><i class="fas fa-trash"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row invoice-info  justify-content-center">
                    <div class="col-sm-4 invoice-col">
                        <div class="input-group mb-3">
                            <input id="txtDeliveryBoy" class="form-control" placeholder="Delivery Boy" />
                            <div class="input-group-prepend">
                                <button id="btnAddDeliveryBoy" class="btn btn-success">
                                    <i class="fas fa-plus"></i>
                                </button>
                                <button id="btnRemoveDeliveryBoy" class="btn btn-danger">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    const bankNames = @json($banks);
    const branchNames = @json($branches);
    const deliveryBoys = @json($deliveryBoys);

    const currentUrl = '{{ route("dataMaster") }}';
</script>
<script src="{{mix('js/masters/data-master.js')}}"></script>
@endsection