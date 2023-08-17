(function () {
    "use strict";
    $('#liReports').addClass('menu-open').children('a').addClass('active');
    $('#liSalesReportInvoice a').addClass('active');
    $('#lblTotalAmount,#lblTotalApproved').text(formatCurrency(0));
    $('.by-number').hide();
    $('.datepicker').datepicker().datepicker('setDate', new Date);

    $('#btnShow').on('click', showReport);
    $('#btnExport').on('click', exportData);
    $('#ddlFilterBy').on('change', () => {
        $('.by-date,.by-number').toggle();
    })

    const dataTable = $('#tblSalesInvoice').DataTable({
        paging: true,
        language: {
            emptyTable: 'No Invoices found'
        },
        ajax: {
            url: currentUrl,
            type: 'POST',
            data: () => getElementDatas()
        },
        footerCallback: (tfoot, data) => {
            const total = data.reduce((prev, curr) => prev + curr.paidAmount, 0);
            const approved = data.filter(f => f.paymentStatus.text === 'Paid & Approved')
                .reduce((prev, curr) => prev + curr.paidAmount, 0);
            $(tfoot).children('td:eq(0)').html(`<h5>Total Amount Collected is ${formatCurrency(total)}<h5>`);
            $(tfoot).children('td:eq(1)').html(`<h5>Total Amount Approved is ${formatCurrency(approved)}<h5>`);
        },
        columns: [
            {
                title: 'S.No',
                render: (data, type, row, meta) => meta.row + 1
            },
            { data: 'date', render: formatDateForBrowser, title: 'Invoice Date' },
            { data: 'invoiceNo', title: 'Invoice No' },
            { data: 'fileNo', title: 'File No' },
            { data: 'bank', title: 'Bank / Branch' },
            { data: 'customer', title: 'Customer Name / Phone No' },
            { data: 'purchaser', title: 'Purchaser' },
            { data: 'billAmount', render: formatCurrency, title: 'Bill Amount' },
            { data: 'paidAmount', render: formatCurrency, title: 'Paid Amount' },
            { data: 'paymentStatus', title: 'Payment Status', render: (data) => `<label style="color:${data.color}">${data.text}</label>` },
            { data: 'engineerName', title: 'Engineer' },
            { data: 'receivedBy', title: 'Received By' },
            { data: 'referredBy', title: 'Referred By' }
        ]
    });

    /**
     * @returns {boolean}
     */
    function validateReport() {
        let isValidated = true;
        const from = Number($('#txtFromNo').val());
        const to = Number($('#txtToNo').val());
        const filterBy = $('#ddlFilterBy').val();


        if (filterBy === 'number') {
            if (from === 0) {
                toastr.info('Enter the From No to Continue');
                isValidated = false;
            }
            else if (to === 0) {
                toastr.info('Enter the To No to Continue');
                isValidated = false;
            }
            else if (Number(from) > Number(to)) {
                toastr.info('From No is greater than To No');
                isValidated = false;
            }
        }


        return isValidated;
    }

    function getElementDatas() {
        return {
            filterBy: $('#ddlFilterBy').val(),
            fromDate: formatDate($('#dpFrom').datepicker('getDate')),
            toDate: formatDate($('#dpTo').datepicker('getDate')),
            from: Number($('#txtFromNo').val()),
            to: Number($('#txtToNo').val()),
            engineer: $('#ddlEngineer').val(),
            receivedBy: $('#ddlReceivedBy').val(),
            _token: $('[name="_token"]').val()
        }
    }

    function showReport() {
        if (validateReport()) {
            dataTable.ajax.reload();
        }
    }

    function exportData() {
        if (validateReport()) {
            const datas = getElementDatas();
            for (let obj in datas) {
                $(`input[name="${obj}"]`).val(datas[obj]);
            }
            $('#frmExport').trigger('submit');
        }
    }

    /**
     * 
     * @param {Number} status 
     * @returns {object}
     */
    function formatPaymentStatus(status) {
        switch (status) {
            case 1:
                return { text: 'Paid', color: '#0000ff' };
            case 2:
                return { text: 'Paid & Approved', color: '#38b50b' };
            default:
                return { text: 'Pending', color: '#cf250e' };
        }
    }
}());