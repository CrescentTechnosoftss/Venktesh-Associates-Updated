/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!*********************************************!*\
  !*** ./resources/js/masters/bank-master.js ***!
  \*********************************************/
(function () {
  $('#liMasters').addClass('menu-open').children('a').addClass('active');
  $('#liBankMaster a').addClass('active');
  $('#btnUpdate').hide();
  $('#frmBankMaster').on('submit', event => {
    event.preventDefault();
  });
  $('#tblBanks tbody').on('click', '.btn-primary', function () {
    $('#btnSave').hide();
    $('#btnUpdate').show();
    const row = $(this).closest('tr');
    $('#hidId').val(row.children('td:eq(0)').text());
    $('#hidIndex').val(row.index());
    $('#txtBankName').val(row.children('td:eq(1)').text());
    $('#txtBranchName').val(row.children('td:eq(2)').text());
    $('#txtContactNo').val(row.children('td:eq(3)').text());
    $('#txtEmailId').val(row.children('td:eq(4)').text());
    $('#txtAddress').val(row.children('td:eq(5)').text());
  });
  $('#tblBanks tbody').on('click', '.btn-danger', function () {
    const id = $(this).closest('tr').children('td:eq(0)').text();
    const index = $(this).closest('tr').index();
    deleteBankDetail(id, index);
  });
  $('#txtBankName').autocomplete({
    source: banks
  });
  $('#btnSave').on('click', saveBankDetail);
  $('#btnUpdate').on('click', updateBankDetail);
  $('#btnClear').on('click', clear);

  function saveBankDetail() {
    const data = {
      bank: $('#txtBankName').val(),
      branch: $('#txtBranchName').val(),
      contact: $('#txtContactNo').val(),
      email: $('#txtEmailId').val(),
      address: $('#txtAddress').val()
    };

    if (data.bank === '') {
      toastr.info('Select the Bank Name');
    } else if (data.branch === '') {
      toastr.info('Select the Branch Name');
    } else {
      axios.post(`${currentUrl}`, data, {
        responseType: 'text'
      }).then(response => {
        if (response.data.status) {
          toastr.success(response.data.message);
          const updateBtn = '<button class="btn btn-primary btn-sm"><i class="fa fa-pencil-alt"></i></button>';
          const deleteBtn = '<button class="btn btn-danger btn-sm"><i class="fa fa-trash-alt"></i></button>';
          const row = `<tr>
                        <td class="d-none">${response.data.id}</td>
                        <td>${data.bank.toUpperCase()}</td>
                        <td>${data.branch.toUpperCase()}</td>
                        <td>${data.contact}</td>
                        <td>${data.email.toLowerCase()}</td>
                        <td>${data.address.toUpperCase()}</td>
                        <td>${updateBtn}&nbsp;${deleteBtn}</td>
                        </tr>`;
          $('#tblBanks tbody').append(row);

          if (banks.includes(data.bank) === false) {
            banks.push(data.bank);
          }

          clear();
        } else {
          toastr.warning(response.data.message);
        }
      });
    }
  }

  function updateBankDetail() {
    const data = {
      bank: $('#txtBankName').val(),
      branch: $('#txtBranchName').val(),
      contact: $('#txtContactNo').val(),
      email: $('#txtEmailId').val(),
      address: $('#txtAddress').val()
    };
    const id = $('#hidId').val();

    if (data.bank === '') {
      toastr.info('Select the Bank Name');
    } else if (data.branch === '') {
      toastr.info('Select the Branch Name');
    } else {
      axios.patch(`${currentUrl}/${id}`, data).then(response => {
        if (response.data.status) {
          const index = $('#hidIndex').val();
          const row = $('#tblBanks tbody').children(`tr:eq(${index})`);
          row.children('td:eq(1)').text(data.bank.toUpperCase());
          row.children('td:eq(2)').text(data.branch.toUpperCase());
          row.children('td:eq(3)').text(data.contact);
          row.children('td:eq(4)').text(data.email.toLowerCase());
          row.children('td:eq(5)').text(data.address.toUpperCase());
          clear();
          toastr.success(response.data.message);
        } else {
          toastr.warning(response.data.message);
        }
      });
    }
  }
  /**
   * 
   * @param {number} id 
   * @param {number} index 
   */


  function deleteBankDetail(id, index) {
    deleteConfirmation('Bank Details').then(swal => {
      if (swal.isConfirmed) {
        axios.delete(`${currentUrl}/${id}`).then(d => {
          clear();
          $('#tblBanks tbody').children(`tr:eq(${index})`).remove();
          toastr.success(d.data);
        });
      }
    });
  }

  function clear() {
    $('#btnSave').show();
    $('#btnUpdate').hide();
    $('.form-control').val('');
    $('#hidId,#hidIndex').val('');
  }
})();
/******/ })()
;