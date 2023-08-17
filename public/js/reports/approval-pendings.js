/******/ (() => { // webpackBootstrap
  var __webpack_exports__ = {};
  /*!***************************************************!*\
    !*** ./resources/js/reports/approval-pendings.js ***!
    \***************************************************/
  (function () {
    $('#liReports').addClass('menu-open').children('a').addClass('active');
    $('#liApprovalPending a').addClass('active');
    $('#approveSelected').on('click', handleApproveSelected);
    $('#approveSelectedFile').on('click', handleApproveCash);
    $('#btnAuthenticate').on('click', authenticate);
    $('.container-fluid').wrap('<div class="blur-all">');
    checkApprovalStatus();
      // $('#engineerName').on('change', function () {
    //   const selectedValue = $(this).val();
    //   console.log(selectedValue);
    // });
    const dataTable = $('#tblInvoiceApproval').DataTable();
    $('.dataTables_length').addClass('bs-select');

    $('#engineerName').on('change', function () {
      const selectedValue = $(this).val();

      if (selectedValue !== 'select') {
        dataTable.column(1).search(selectedValue).draw();
      } else {
        dataTable.search('').columns().search('').draw(); // Reset the filtering
      }
    });

    const dataTables = $('#tblCashApproval').DataTable();
    $('.dataTables_length').addClass('bs-select');

    $('#engineerNames').on('change', function () {
      const selectedValues = $(this).val();

      if (selectedValues !== 'select') {
        dataTables.column(1).search(selectedValues).draw();
      } else {
        dataTables.search('').columns().search('').draw(); // Reset the filtering
      }
    });


    // $('#tblCashApproval tbody').on('click', '.btn', function () {
    //   const fileNo = $(this).closest('tr').children('td:eq(1)').text();
    //   const index = $(this).closest('tr').index();
    //   approvePayment(fileNo, index, 'tblCashApproval', 'file');
    // });


    function authenticate() {
      const user = $('#txtUserName').val();
      const password = $('#txtPassword').val();

      const _token = $('[name="_token"]').val();

      if (user === '') toastr.warning('User Name is Required'); else if (password === '') toastr.warning('Password is Required'); else {
        axios.post(`${currentUrl}/authenticate`, {
          user,
          password,
          _token
        }).then(response => {
          if (response.data.status) {
            // localStorage.setItem('crescentApprovalAuthenticated', 'yes')
            $('.container-fluid').unwrap();
            $('#modalAuthentication').modal('hide'); // const preAuth = JSON.parse(localStorage.getItem('preAuthApproval'));
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

    function handleApproveCash() {
      const selectedFileNumbers = [];

      // Iterate through selected checkboxes
      $('#tblCashApproval tbody .selectInvoiceFile:checked').each(function () {
        const fileNumber = $(this).data('file');
        selectedFileNumbers.push(fileNumber);
      });

      if (selectedFileNumbers.length > 0) {
        approvePaymentCash(selectedFileNumbers, 'tblCashApproval', 'file');
      } else {
        alert('Please select at least one File to approve.');
      }
    }

    function handleApproveSelected() {
      const selectedInvoiceNumbers = [];

      // Iterate through selected checkboxes
      $('#tblInvoiceApproval tbody .selectInvoice:checked').each(function () {
        const invoiceNumber = $(this).data('invoice');
        selectedInvoiceNumbers.push(invoiceNumber);
      });

      if (selectedInvoiceNumbers.length > 0) {
        approvePayment(selectedInvoiceNumbers, 'tblInvoiceApproval', 'invoice');
      } else {
        alert('Please select at least one Invoice to approve.');
      }
    }



    // $('#approveSelected').on('click', function () {
    //   const selectedInvoiceNumbers = [];

    //   // Iterate through selected checkboxes
    //   $('#tblInvoiceApproval tbody .selectInvoice:checked').each(function () {
    //     const invoiceNumber = $(this).data('invoice');
    //     // console.log(invoiceNumber);
    //     selectedInvoiceNumbers.push(invoiceNumber);
    //   });

    //   if (selectedInvoiceNumbers.length > 0) {
    //     approvePayment(selectedInvoiceNumbers, 'tblInvoiceApproval', 'invoice');
    //   } else {
    //     alert('Please select at least one Invoice to approve.');
    //   }
    // });


    function authenticate() {
      const user = $('#txtUserName').val();
      const password = $('#txtPassword').val();

      const _token = $('[name="_token"]').val();

      if (user === '') toastr.warning('User Name is Required'); else if (password === '') toastr.warning('Password is Required'); else {
        axios.post(`${currentUrl}/authenticate`, {
          user,
          password,
          _token
        }).then(response => {
          if (response.data.status) {
            // localStorage.setItem('crescentApprovalAuthenticated', 'yes')
            $('.container-fluid').unwrap();
            $('#modalAuthentication').modal('hide'); // const preAuth = JSON.parse(localStorage.getItem('preAuthApproval'));
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
      axios.get(`${currentUrl}/check-auth-status`).then(response => {
        if (response.data.status) {
          $('.container-fluid').unwrap();
        } else {
          $('#modalAuthentication').modal();
        }
      });
    }




    // function approvePayment(fileNo, index, table, type) {

    //   axios.patch(`${currentUrl}/${fileNo}`, {
    //     type
    //   }).then(response => {
    //     if (response.data.status) {
    //       const tbody = $(`#${table} tbody`);
    //       tbody.children(`tr:eq(${index})`).remove();

    //       if (tbody.children('tr').length === 0) {
    //         tbody.append(`<tr>
    //                 <td colspan="11" class="text-center text-info">
    //                 <h5>No Approvals Pending</h5>
    //                 </td>
    //                 </tr>`);
    //       } // localStorage.removeItem('preAuthApproval');

    //       $('.container-fluid').wrap('<div class="blur-all">');
    //       $('#approved').modal();
    //       $('#success').html('<h3 style="color:green">' + response.data.message + '</h3>' +
    //         '<br>' + '<h4><b>' + fileNo + '</h4>')
    //       $('.container-fluid').unwrap();

    //       $('#btnClose1').on('click', function () {
    //         $('#approved').modal('toggle');
    //       })

    //       toastr.success(response.data.message, 'Success');
    //     } else {
    //       $('.container-fluid').wrap('<div class="blur-all">');
    //       $('#modalAuthentication').modal(); // localStorage.setItem('preAuthApproval', JSON.stringify({ fileNo, index, table, type }));
    //     }
    //   });
    // }
    function approvePaymentCash(selectedFileNumbers, table, type) {
      const promises = [];

      const requestData = {
        ids: selectedFileNumbers, // Array of selected invoice IDs
        type: type // Approval type (invoice or payment)
      };

      selectedFileNumbers.forEach(fileNo => {
        promises.push(
          axios.patch(`${currentUrl}/${fileNo}`, requestData) // Send requestData directly
        );
      });

      Promise.all(promises)
        .then(responses => {
          let allApproved = true;
          responses.forEach(response => {
            if (!response.data.status) {
              allApproved = false;
            }
          });

          if (allApproved) {
            const tbody = $(`#${table} tbody`);
            selectedFileNumbers.forEach(fileNo => {
              const rowIndex = $(`#${table} tbody tr[data-file="${fileNo}"]`).index();
              tbody.children(`tr:eq(${rowIndex})`).remove();
            });

            if (tbody.children('tr').length === 0) {
              tbody.append(`<tr>
                    <td colspan="11" class="text-center text-info">
                    <h5>No Approvals Pending</h5>
                    </td>
                    </tr>`);
            }

            $('.container-fluid').wrap('<div class="blur-all">');
            $('#approved').modal();
            $('#success').html('<h3 style="color:green">Payments Approved</h3>');
            $('.container-fluid').unwrap();

            $('#btnClose1').on('click', function () {
              $('#approved').modal('toggle');
            });

            toastr.success('Payments Approved', 'Success');
          } else {
            $('.container-fluid').wrap('<div class="blur-all">');
            $('#modalAuthentication').modal();
          }
        })
        .catch(error => {
          console.error('Error:', error);
        });
    }

    function approvePayment(selectedInvoiceNumbers, table, type) {
      const promises = [];

      const requestData = {
        ids: selectedInvoiceNumbers, // Array of selected invoice IDs
        type: type // Approval type (invoice or payment)
      };

      selectedInvoiceNumbers.forEach(fileNo => {
        promises.push(
          axios.patch(`${currentUrl}/${fileNo}`, requestData) // Send requestData directly
        );
      });

      Promise.all(promises)
        .then(responses => {
          let allApproved = true;
          responses.forEach(response => {
            if (!response.data.status) {
              allApproved = false;
            }
          });

          if (allApproved) {
            const tbody = $(`#${table} tbody`);
            selectedInvoiceNumbers.forEach(fileNo => {
              const rowIndex = $(`#${table} tbody tr[data-invoice="${fileNo}"]`).index();
              tbody.children(`tr:eq(${rowIndex})`).remove();
            });

            if (tbody.children('tr').length === 0) {
              tbody.append(`<tr>
                    <td colspan="11" class="text-center text-info">
                    <h5>No Approvals Pending</h5>
                    </td>
                    </tr>`);
            }

            $('.container-fluid').wrap('<div class="blur-all">');
            $('#approved').modal();
            $('#success').html('<h3 style="color:green">Payments Approved</h3>');
            $('.container-fluid').unwrap();

            $('#btnClose1').on('click', function () {
              $('#approved').modal('toggle');
            });

            toastr.success('Payments Approved', 'Success');
          } else {
            $('.container-fluid').wrap('<div class="blur-all">');
            $('#modalAuthentication').modal();
          }
        })
        .catch(error => {
          console.error('Error:', error);
        });
    }



  })();
  /******/
})()
  ;