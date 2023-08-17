(function () {
    $('#liReports').addClass('menu-open').children('a').addClass('active');
    $('#liGstReport a').addClass('active');
    $('#dpFromDate,#dpToDate').prop('readonly', true);
    $('#lblTotalAmount').text(formatCurrency(0));

    $('#ddlBank').on('change', getBranches);
    $('#btnShow').on('click', showReport);
    $('#btnExport').on('click', exportData);

    $('#dpFromDate,#dpToDate').datepicker({
        dateFormat: 'dd-mm-yy',
        changeMonth: true,
        changeYear: true,
        maxDate: new Date()
    }).datepicker('setDate', new Date());
    let dataTable = $('#tblPaidInvoice').DataTable({
        ajax: {
            url: currentUrl,
            type: 'POST',
            data: () => getElementDatas(),
            dataSrc: 'invoices'
        },
        language: {
            emptyTable: 'No Invoices found'
        },
        "footerCallback": (tfoot, data) => {
            const total = data.reduce((prev, curr) => prev + curr.amountPaid, 0);
            $(tfoot).children('td:eq(0)').html(`<h5>Total Paid Amount is ${formatCurrency(total)}<h5>`);
        },
        columns: [
            {
                title: 'S.No',
                render: (data, type, row, meta) => meta.row + 1
            },
            { data: 'date', render: (data) => formatDateForBrowser(data), title: 'Paid Date' },
            { data: 'ProformaNo', title: 'Proforma No' },
            { data: 'fileNo', title: 'File No' },
            { data: 'bank', title: 'Bank / Branch' },
            { data: 'customer', title: 'Customer Name / Phone No' },
            { data: 'purchaser', title: 'Purchaser' },
            { data: 'billAmount', render: formatCurrency, title: 'Bill Amount' },
            { data: 'amountPaid', render: formatCurrency, title: 'Paid Amount' },
            { data: 'receivedBy', title: 'Received By' },
            { data: 'referredBy', title: 'Referred By' },
            { data: 'engineer', title: 'Engineer' }
        ]
    });
    showReport();

    function getBranches() {
        const bank = $('#ddlBank').val();

        if (bank === 'all') {
            $('#ddlBranch').clearSelect();
        } else {
            axios.get(`${currentUrl}/branches/${bank}`)
                .then(response => {
                    const options = [];
                    $.each(response.data.branches, function (index, value) {
                        options.push(`<option value="${value}">${value}</option>`);
                    });
                    $('#ddlBranch').populateSelect(options);
                });
        }
    }

    function getElementDatas() {
        return {
            from: formatDate($('#dpFromDate').datepicker('getDate')),
            to: formatDate($('#dpToDate').datepicker('getDate')),
            bank: $('#ddlBank').val(),
            branch: $('#ddlBranch').val(),
            engineer: $('#ddlEngineer').val(),
            receivedBy: $('#ddlReceivedBy').val(),
            _token: $('input[name="_token"]').val()
        };
    }

    function showReport() {
        dataTable.ajax.reload();
    }

    function exportData() {
        const data = getElementDatas();

        for (let obj in data) {
            $(`input[name="${obj}"]`).val(data[obj]);
        }

        $('#frmExport').trigger('submit');
    }
}());