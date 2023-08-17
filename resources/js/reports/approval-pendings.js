(function () {
    $('#liReports').addClass('menu-open').children('a').addClass('active');
    $('#liApprovalPending a').addClass('active');
    $('#btnAuthenticate').on('click', authenticate);
    $('.container-fluid').wrap('<div class="blur-all">');
    checkApprovalStatus();
    $('#tblCashApproval tbody').on('click', '.btn', function () {
        const fileNo = $(this).closest('tr').children('td:eq(1)').text();
        const index = $(this).closest('tr').index();
        approvePayment(fileNo, index, 'tblCashApproval', 'file');
    });

    $('#tblInvoiceApproval tbody').on('click', '.btn', function () {
        const invoiceNo = $(this).closest('tr').children('td:eq(1)').text();
        const index = $(this).closest('tr').index();
        approvePayment(invoiceNo, index, 'tblInvoiceApproval', 'invoice');
    });

    // $('#tblCashApproval,#tblInvoiceApproval').DataTable();
    

    function authenticate() {
        const user = $('#txtUserName').val();
        const password = $('#txtPassword').val();
        const _token = $('[name="_token"]').val();

        if (user === '')
            toastr.warning('User Name is Required');
        else if (password === '')
            toastr.warning('Password is Required');
        else {

            axios.post(`${currentUrl}/authenticate`, { user, password, _token })
                .then(response => {
                    if (response.data.status) {
                        // localStorage.setItem('crescentApprovalAuthenticated', 'yes')
                        $('.container-fluid').unwrap();
                        $('#modalAuthentication').modal('hide');
                        // const preAuth = JSON.parse(localStorage.getItem('preAuthApproval'));
                        // if (preAuth !== null) {
                        //     localStorage.removeItem('preAuthApproval');
                        //     approvePayment(preAuth.fileNo, preAuth.index, preAuth.table, preAuth.type);
                        // }
                    } else {
                        $('#divAuthMessage').removeClass('d-none');
                    }
                });
        }
    }

    function checkApprovalStatus() {
        axios.get(`${currentUrl}/check-auth-status`)
            .then(response => {
                if (response.data.status) {
                    $('.container-fluid').unwrap();
                } else {
                    $('#modalAuthentication').modal();
                }
            });

    }

    function approvePayment(fileNo, index, table, type) {
        axios.patch(`${currentUrl}/${fileNo}`, { type })
            .then(response => {
                if (response.data.status) {
                    const tbody = $(`#${table} tbody`);
                    tbody.children(`tr:eq(${index})`).remove();

                    if (tbody.children('tr').length === 0) {
                        tbody.append(`<tr>
                    <td colspan="11" class="text-center text-info">
                    <h5>No Approvals Pending</h5>
                    </td>
                    </tr>`  );
                    }
                    // localStorage.removeItem('preAuthApproval');
                    toastr.success(response.data.message, 'Success');
                } else {
                    $('.container-fluid').wrap('<div class="blur-all">');
                    $('#modalAuthentication').modal();
                    // localStorage.setItem('preAuthApproval', JSON.stringify({ fileNo, index, table, type }));
                }
            });
    }
}());