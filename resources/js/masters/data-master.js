(function () {
    "use strict";
    $('#liMasters').addClass('menu-open').children('a').addClass('active');
    $('#liDataMaster a').addClass('active');
    
    $('#btnAddBank').on('click', addBankName);
    $('#btnRemoveBank').on('click', removeBankName);
    $('#btnAddBranch').on('click', addBranchName);
    $('#btnRemoveBranch').on('click', removeBranchName);
    $('#btnAddDeliveryBoy').on('click', addDeliveryBoy);
    $('#btnRemoveDeliveryBoy').on('click', removeDeliveryBoy);

    //Autocompletes
    $('#txtBankName').autocomplete({ source: bankNames });
    $('#txtBranchName').autocomplete({ source: branchNames });
    $('#txtEngineerName').autocomplete({ source: engineers });
    $('#txtDeliveryBoy').autocomplete({ source: deliveryBoys });

    function addBankName() {
        const bankName = $('#txtBankName').val();
        if (bankName !== '' && bankNames.includes(bankName) === false) {
            axios.post(`${currentUrl}/bank`, { bank: bankName })
                .then(d => {
                    bankNames.push(bankName.toUpperCase());
                    $('#txtBankName').val('');
                    toastr.success(d.data, 'Success');
                });
        }
    }

    function removeBankName() {
        const bankName = $('#txtBankName').val();
        if (bankNames.includes(bankName)) {
            axios.delete(`${currentUrl}/bank/${encodeURIComponent(bankName)}`)
                .then(d => {
                    const index = bankNames.findIndex(f => f === bankName);
                    bankNames.splice(index, 1);
                    $('#txtBankName').val('');
                    toastr.success(d.data, 'Success');
                });
        }
    }

    function addBranchName() {
        const branchName = $('#txtBranchName').val();
        if (branchName !== '' && branchNames.includes(branchName) === false) {
            axios.post(`${currentUrl}/branch`, { branch: branchName })
                .then(d => {
                    branchNames.push(branchName.toUpperCase());
                    $('#txtBranchName').val('');
                    toastr.success(d.data, 'Success');
                });
        }
    }

    function removeBranchName() {
        const branchName = $('#txtBranchName').val();
        if (branchNames.includes(branchName)) {
            axios.delete(`${currentUrl}/branch/${encodeURIComponent(branchName)}`)
                .then(d => {
                    const index = branchNames.findIndex(f => f === branchName);
                    branchNames.splice(index, 1);
                    $('#txtBranchName').val('');
                    toastr.success(d.data, 'Success');
                });
        }
    }

    function addDeliveryBoy() {
        const deliveryBoy = $('#txtDeliveryBoy').val();
        if (deliveryBoy !== '' && deliveryBoys.includes(deliveryBoy) === false) {
            axios.post(`${currentUrl}/delivery-boy`, { deliveryBoy })
                .then(d => {
                    deliveryBoys.push(deliveryBoy.toUpperCase());
                    $('#txtDeliveryBoy').val('');
                    toastr.success(d.data, 'Success');
                });
        }
    }

    function removeDeliveryBoy() {
        const deliveryBoy = $('#txtDeliveryBoy').val();
        if (deliveryBoys.includes(deliveryBoy)) {
            axios.delete(`${currentUrl}/delivery-boy/${encodeURIComponent(deliveryBoy)}`)
                .then(d => {
                    const index = deliveryBoys.findIndex(f => f === deliveryBoy);
                    deliveryBoys.splice(index, 1);
                    $('#txtDeliveryBoy').val('');
                    toastr.success(d.data, 'Success');
                });
        }
    }
}());