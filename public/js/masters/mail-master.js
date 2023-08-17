/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!*********************************************!*\
  !*** ./resources/js/masters/mail-master.js ***!
  \*********************************************/
(function () {
  $('#liMasters').addClass('menu-open').children('a').addClass('active');
  $('#liMailMaster a').addClass('active');
  $('#btnSave').on('click', addEmail);
  $('#btnClear').on('click', clear);
  $('#tblEmailAccounts tbody').on('click', '.default', function () {
    const id = $(this).closest('tr').children('td:eq(0)').text();
    const index = $(this).closest('tr').index();
    setDefaultEmail(id, index);
  });
  $('#tblEmailAccounts tbody').on('click', '.btn-danger', function () {
    const id = $(this).closest('tr').children('td:eq(0)').text();
    const index = $(this).closest('tr').index();
    deleteEmailAccount(id, index);
  });

  function getElementDatas() {
    return {
      sender: $('#txtSenderName').val(),
      email: $('#txtEmailID').val(),
      password: $('#txtPassword').val()
    };
  }

  function validate() {
    let isValidated = false;
    const data = getElementDatas();

    if (data.sender === '') {
      toastr.info('Sender Name is required');
    } else if (data.email === '') {
      toastr.info('Email ID is required');
    } else if (data.password === '') {
      toastr.info('Password is required');
    } else {
      isValidated = true;
    }

    return isValidated;
  }

  function addEmail() {
    if (validate()) {
      const data = getElementDatas();
      axios.post(`${currentUrl}`, data).then(response => {
        const defaultBtn = '<button class="btn btn-sm btn-primary default">Default</button>';
        const deleteBtn = '<button class="btn btn-danger btn-sm"><i class="fa fa-trash-alt"></i></button>';
        const row = `<tr>
                    <td class="d-none">${response.data.id}</td>
                    <td>${data.sender}</td>
                    <td>${data.email}</td>
                    <td>${defaultBtn}</td>
                    <td>${deleteBtn}</td>
                    </tr>`;
        $('#tblEmailAccounts tbody').append(row);
        clear();
        toastr.success(response.data.message);
      });
    }
  }
  /**
   * 
   * @param {number} id 
   * @param {number} index
   */


  function setDefaultEmail(id, index) {
    axios.patch(`${currentUrl}/${id}`, {}).then(response => {
      $('#tblEmailAccounts tbody tr').removeClass('text-primary');
      $('#tblEmailAccounts tbody').children(`tr:eq(${index})`).addClass('text-primary');
      toastr.success(response.data);
    });
  }
  /**
   * 
   * @param {number} id 
   * @param {number} index 
   */


  function deleteEmailAccount(id, index) {
    deleteConfirmation('Email Account').then(swalResult => {
      if (swalResult.isConfirmed) {
        axios.delete(`${currentUrl}/${id}`).then(response => {
          $('#tblEmailAccounts tbody').children(`tr:eq(${index})`).remove();
          toastr.success(response.data);
        });
      }
    });
  }

  function clear() {
    $('.form-control').val('');
  }
})();
/******/ })()
;