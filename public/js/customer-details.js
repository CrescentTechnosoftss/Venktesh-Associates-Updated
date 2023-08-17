/******/ (() => { // webpackBootstrap
/******/ 	"use strict";
var __webpack_exports__ = {};
/*!******************************************!*\
  !*** ./resources/js/customer-details.js ***!
  \******************************************/


(function () {
  let isViewing = false;
  const fileNos = [];
  $('#liCustomerDetails a').addClass('active');
  $('#dpFileDate,#dpReportDate').datepicker();
  clearPage();
  $('#frmCustomerDetails').on('submit', event => {
    event.preventDefault();
  });
  $('#txtCustomer').autocomplete({
    source: customers,
    minLength: 3
  });
  $('#txtContact').autocomplete({
    source: contacts,
    minLength: 3
  }); // $('#ddlFileNo').editableSelect().on('select.editable-select', function (event, li) {
  //     getFileDetails(li.attr('value'));
  // });

  $('#ddlFileNo').select2().on('select2:select', event => {
    getFileDetails(event.params.data.id);
  });
  $('#ddlBank').on('change', getBranches);
  $('#ddlEngineer').on('change', getEngineerNum);
  // $('#txtApprovalStatus').on('change', changeColor);
  $('#btnSave').on('click', saveFileDetails);
  $('#btnView').on('click', view);
  $('#btnUpdate').on('click', updateFileDetails); // $('#btnDelete').on('click', deleteFileDetails);

  $('#btnPrint').on('click', printWrapper);
  $('#btnClear').on('click', clearPage);
  $('#txtBillAmount,#txtCashPaid').on('focus', function () {
    const amount = parseFloat($(this).val());

    if ($(this).prop('readonly') === false && (isNaN(amount) || amount === 0)) {
      $(this).val(null);
    }
  });

  function getBranches() {
    const bank = $('#ddlBank').val();

    if (bank !== '') {
      axios.get(`${currentUrl}/branches/${bank}`).then(response => {
        const options = [];
        $.each(response.data.branches, (index, value) => {
          options.push(`<option value="${value}">${value}</option>`);
        });
        $('#ddlBranch').populateSelect(options);
      });
    } else {
      $('#ddlBranch').clearSelect();
    }
  }

//   function changeColor() {
//     const status = $('#txtApprovalStatus').val();
//     if (status === 'Approved') {
//         $('#txtBillAmount, #txtCashPaid').css('color', 'green');
//     } else {
//         $('#txtBillAmount, #txtCashPaid').css('color', '');
//     }
// }

  function isValidated() {
    let isValidated = false;

    if ($('#ddlBank').val() === '') {
      toastr.info('Select the Bank Name');
    } else if ($('#ddlBranch').val() === '') {
      toastr.info('Select the Branch Name');
    } else if ($('#txtCustomer').val() === '') {
      toastr.info('Enter the Customer Name');
    } else if ($('#txtReferrer').val() === '') {
      toastr.info('Enter the Referrer Name');
    } else if ($('#txtRefMob').val() === '') {
      toastr.info('Enter the Referrer Number');
    }
    else {
      isValidated = true;
    }

    return isValidated;
  }

  function saveFileDetails() {
    if (isValidated()) {
      const data = $('#frmCustomerDetails').serialize();

      _processing('btnSave', 'Saving');

      axios.post(currentUrl, data).then(response => {
        clearPage();
        Swal.fire('Success', `${response.data.message}. File No is ${response.data.id}`, 'success');
      }).finally(() => {
        _processed('btnSave', 'Save');
      });
    }
  }

  function view() {
    isViewing = true;
    axios.get(`${currentUrl}/file-nos`).then(response => {
      $('#divFileNo').show();
      $('#btnSave').prop('disabled', true);
      $('#btnUpdate,#btnDelete,#btnPrint').prop('disabled', false);
      const options = [];
      $.each(response.data, (index, value) => {
        options.push(`<option value="${value.uuid}">${value.id}</option>`);
      });
      $('#ddlFileNo').populateSelect(options); // $('#ddlFileNo').select2({
      //     data: response.data.map(m => ({ id: m.uuid, text: m.id }))
      // });
    });
  }
  /**
   * 
   * @param {string} uuid 
   */


  function getFileDetails(uuid) {
    if (uuid !== '') {
      axios.get(`${currentUrl}/${uuid}`).then(response => {
        var _response$data$invoic;

        if ($(`#ddlBranch option[value="${response.data.branch}"]`).length === 0) {
          $('#ddlBranch').append(`<option value="${response.data.branch}">${response.data.branch}</option>`);
        }

        $('input[name="fileNo"]').val(uuid);
        $('#dpFileDate').datepicker('setDate', moment(response.data.fileDate).toDate());
        $('#ddlBank').val(response.data.bank);
        $('#ddlBranch').val(response.data.branch);
        $('#txtCustomer').val(response.data.customer);
        $('#txtPurchaserName').val(response.data.purchaser);
        $('#txtContact').val(response.data.contact);
        $('#txtAddress').val(response.data.address);
        $('#txtRemarks').val(response.data.remarks);
        $('#txtReferrer').val(response.data.referrer);
        $('#txtRefMob').val(response.data.referrerMob);
        $('#ddlEngineer').val(response.data.engineer);
        $('#txtApartmentName').val(response.data.apartment);
        $('#txtStatus').val(response.data.status);
        $('#txtTotalValue').val(response.data.totalValue);
        $('#txtBillAmount').val(response.data.billAmount).css('color', response.data.isApproved ? 'green' : '');
        $('#txtCashPaid').val(response.data.cashPaid).css('color', response.data.isApproved ? 'green' : '');
        $('#txtApprovalStatus').val(response.data.isApproved ? 'Approved' : 'Pending');
        $('#ddlDeliveryBoy').val(response.data.deliveryBoy);
        $('#dpReportDate').datepicker('setDate', response.data.reportDate === null ? null : moment(response.data.reportDate).toDate());
        $('#txtInvoiceNo').val((_response$data$invoic = response.data.invoiceNo) !== null && _response$data$invoic !== void 0 ? _response$data$invoic : 0);
        $('#txtDeliveredTo').val(response.data.deliveredTo);
        $('#txtCashPaid').prop('disabled', response.data.isApproved && response.data.isAdmin === false);
        let paymentStatus = '';

        if (Number(response.data.cashPaid) > 0) {
          paymentStatus = 'Paid';
          if (response.data.approval === 'Approved') paymentStatus += ' & Approved';
        }
        if(response.data.invoiceApproved == 'approved'){
          $('#txtInvoiceApproved').val(response.data.invoiceApproved);
        }else{
          $('#txtInvoiceApproved').val('--/--');
        }
        $('#txtPaymentStatus').val(paymentStatus);
      });
    }
  }

  function updateFileDetails() {
    if (isViewing) {
      const uuid = $('#ddlFileNo').val();
      if (uuid === '') toastr.info('Select the File No to Update');else if (isValidated()) {
        const data = $('#frmCustomerDetails').serialize();

        _processing('btnUpdate', 'Updating');

        axios.patch(`${currentUrl}/${uuid}`, data, {
          responseType: 'text'
        }).then(response => {
          clearPage();
          Swal.fire('Success', response.data, 'success');
        }).catch(err => {
          console.log(err);
          toastr.error('An error occured while Updating. Check all the fields');
        }).finally(() => {
          _processed('btnUpdate', 'Update');
        });
      }
    }
  } // function deleteFileDetails() {
  //     if (isViewing === false)
  //         return;
  //     const uuid = $('#ddlFileNo').val();
  //     if (uuid === '')
  //         toastr.info('Select the File No to Delete');
  //     else {
  //         deleteConfirmation('')
  //             .then(swal => {
  //                 if (swal.isConfirmed) {
  //                     _processing('btnDelete', 'Deleting');
  //                     axios.delete(`${currentUrl}/${uuid}`, {
  //                         responseType: 'text'
  //                     })
  //                         .then(response => {
  //                             clearPage();
  //                             Swal.fire('Success', response.data, 'success');
  //                         }).finally(() => { _processed('btnDelete', 'Delete') });
  //                 }
  //             });
  //     }
  // }


  function printWrapper() {
    console.log('clicked');

    const uuid = $('#ddlFileNo').val();
    if (uuid === '') toastr.info('Select the File No to Print');else {
      axios({
        url: `${baseUrl}/wrapper-print/${uuid}`,
        method: 'GET',
        responseType: 'blob', // important
      }).then((response) => {
        const url = window.URL.createObjectURL(new Blob([response.data]));
        const link = document.createElement('a');
        link.href = url;
        link.setAttribute('download', 'file.docx');
        document.body.appendChild(link);
        link.click();
      });
    //   axios.get(`${baseUrl}/wrapper-print/${uuid}`).then(response =>{
    //     console.log(response);
    //     var fileURL = window.URL.createObjectURL(new Blob([response.data]));

    //  var fileLink = document.createElement('a');
    //  fileLink.href = fileURL;
    //  fileLink.setAttribute('download', 'file.docx');
    // //  document.body.appendChild(fileLink);
    //  fileLink.click();
    //   })
    }
  }

function getEngineerNum() {
  const engName = $('#ddlEngineer').val();
  if (engName !== '0') {
      axios.get(`${currentUrl}/engName/${engName}`)
          .then(response => {
              $('#engNum').val(response.data);
          });
  } else {
      $('#engNum').val('');
  }
}

  function clearPage() {
    $('#frmCustomerDetails .form-control').val('');
    $('#ddlEngineer,#ddlDeliveryBoy').val('0');
    $('#ddlApproval').val('PENDING');
    $('#divFileNo').hide();
    $('#btnSave,#txtCashPaid').prop('disabled', false);
    $('#btnUpdate,#btnDelete,#btnPrint').prop('disabled', true);
    $('#dpFileDate').datepicker('setDate', new Date());
    $('#dpReportDate').datepicker('setDate', null);
    $('#ddlFileNo,#ddlBranch').clearSelect();
  }
  /**
   * @param {string} elemName 
   * @param {string} value 
   * @returns {void}
   */


  function _processing(elemName, value) {
    $(`#${elemName}`).prop('disabled', true).html(`<i class="fa fa-spinner fa-spin"></i>&nbsp;${value}`);
  }
  /**
   * @param {string} elemName 
   * @param {string} value 
   * @returns {void}
   */


  function _processed(elemName, value) {
    $(`#${elemName}`).prop('disabled', false).text(value);
  }
})();
/******/ })()
;