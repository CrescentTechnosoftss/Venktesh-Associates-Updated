/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!*******************************************!*\
  !*** ./resources/js/payment-receiving.js ***!
  \*******************************************/
(function () {
  $('#liPaymentReceiving a').addClass('active');
  $('#dpPaidDate').datepicker().datepicker('setDate', new Date());
  // $('#txtInvoiceDate,#dpReportDate').datepicker().datepicker('setDate', new Date())

  const currentDate = new Date();
  const fiveDaysAgo = new Date();
  fiveDaysAgo.setDate(currentDate.getDate() - 5);

  $('#txtInvoiceDate, #dpReportDate').datepicker({
    maxDate: currentDate,
    startDate: fiveDaysAgo,
  }).datepicker('setDate', fiveDaysAgo);
  
  $('#ddlFileNo,#ddlInvoiceNo').select2();
  $('#btnPrint').on('click', printInvoice);
  $('#btnDownload').on('click', dowloadInvoice);
  $('#ddlFileNo').on('change', setInvoiceNo);
  // $('#ddlInvoiceNo,#ddlBillNo').on('change', getPaymentDetails);
  $('#ddlInvoiceNo').on('change', getPaymentDetails);
  // $('#ddlBillNo').on('change', getBillDetails);
  $('#selGstPercentage').on('change', function() {
    calculateGstAmount();
});

$('#txtAmount').on('input', function() {
    calculateGstAmount();
});

  $('#btnSave').on('click', savePaymentStatus);
  $('#billNoInput').on('click', generateBillNo);
  $('#btnClear').on('click', clearPage);
  $('#txtAmountPaid').on('focus', function () {
    const amount = parseFloat($(this).val());

    if ($(this).prop('readonly') === false && (isNaN(amount) || amount === 0)) {
      $(this).val(null);
    }
  });

  function setInvoiceNo() {
    $('#ddlInvoiceNo').val($('#ddlFileNo').val()).trigger('change'); // getPaymentDetails();
  }

  function dowloadInvoice(defaultValue = '') {
    const invoiceNo = typeof defaultValue === 'string' ? defaultValue : $('#ddlInvoiceNo').val();

    if (invoiceNo === '') {
      toastr.info('Select the Proforma No to Download');
    } else {
      window.open(`${downloadUrl}/${invoiceNo}`);
    }
  }

  function calculateGstAmount() {
    const totalAmount = parseFloat($('#txtAmount').val());
    const gstPercentage = parseFloat($('#selGstPercentage').val());

    if (!isNaN(totalAmount) && !isNaN(gstPercentage)) {
        const gstAmount = (totalAmount * gstPercentage) / 100;
        const Total = totalAmount - gstAmount ;
        $('#txtGstAmount').val(gstAmount.toFixed(2));
        $('#txtAmountPaid').val(Total.toFixed(2));
    } else {
        $('#txtGstAmount').val('');
        $('#txtAmountPaid').val('');

    }
}

  function printInvoice(defaultValue = '') {
    const invoiceNo = typeof defaultValue === 'string' ? defaultValue : $('#ddlInvoiceNo').val();

    if (invoiceNo === '') {
        toastr.info('Select the Invoice No to Print');
    }
    else {
        printJS(`${printUrl}/${invoiceNo}`);
    }
}

  function getPaymentDetails() {
    const uuid = $('#ddlInvoiceNo').val();

    const currentDates = new Date();
    const fiveDaysAgos = new Date();
    fiveDaysAgos.setDate(currentDates.getDate() - 5);
    
    if (uuid !== '') {
      axios.get(`${currentUrl}/${uuid}`).then(response => {
        $('#hidInvoiceNo').val(response.data.invoiceNo);
        $('#txtFileNo').val(response.data.fileNo);
        $('#txtCustomerName').val(response.data.customerName);
        $('#txtPurchaserName').val(response.data.purchaserName);
        $('#txtBankName').val(response.data.bankName);
        $('#txtBranchName').val(response.data.branchName);
        $('#txtBillAmount').val(response.data.billAmount);
        $("#txtBillNos").val(response.data.billNo);
        $("#txtAdvanceAmount").val(response.data.advance);
        $('#txtAmountPaid').val(response.data.amountPaid);
        $('#ddlPaymentReceivedBy').val(response.data.receivedBy);
        $('#dpPaidDate').datepicker('setDate', moment(response.data.paidDate).format('DD-MM-yyyy'));
        $('#ddlBank').val(response.data.paidBank);
        $('#txtInvoiceDate').datepicker('setDate', moment(response.data.InvoiceDate).format('DD-MM-yyyy') );
        $('#txtRemarks').val(response.data.remarks);
        $('#chkPaid').prop('checked', response.data.isPaid);
        $('#chkPaid').prop('disabled', response.data.isApproved);
        $('#txtAmountPaid').prop('disabled', response.data.isApproved && response.data.isAdmin === false);

        
            if (response.data.billNo) {
              // If billNo is not null, disable the button
              $('#billNoInput').prop('disabled', true);
          } else {
              // If billNo is null, enable the button
              $('#billNoInput').prop('disabled', false);
          }
      });
    }
  }

  // function getBillDetails() {
  //   const billNo = $('#ddlBillNo').val();

  //   if (billNo !== '') {
  //     axios.get(`${currentUrl}/${billNo}`).then(response => {
  //       $('#hidBillNo').val(response.data.billNo);
  //       $('#txtFileNo').val(response.data.fileNo);
  //       $('#txtCustomerName').val(response.data.customerName);
  //       $('#txtPurchaserName').val(response.data.purchaserName);
  //       $('#txtBankName').val(response.data.bankName);
  //       $('#txtBranchName').val(response.data.branchName);
  //       $('#txtBillAmount').val(response.data.billAmount);
  //       $("#txtBillNos").val(response.data.billNo);
  //       $("#txtAdvanceAmount").val(response.data.advance);
  //       $('#txtAmountPaid').val(response.data.amountPaid);
  //       $('#ddlPaymentReceivedBy').val(response.data.receivedBy);
  //       $('#dpPaidDate').datepicker('setDate', moment(response.data.paidDate).format('DD-MM-yyyy'));
  //       $('#ddlBank').val(response.data.paidBank);
  //       $('#txtInvoiceDate').datepicker('setDate', moment(response.data.InvoiceDate).format('DD-MM-yyyy'));
  //       $('#txtRemarks').val(response.data.remarks);
  //       $('#chkPaid').prop('checked', response.data.isPaid);
  //       $('#chkPaid').prop('disabled', response.data.isApproved);
  //       $('#txtAmountPaid').prop('disabled', response.data.isApproved && response.data.isAdmin === false);

        
  //           if (response.data.billNo) {
  //             // If billNo is not null, disable the button
  //             $('#billNoInput').prop('disabled', true);
  //         } else {
  //             // If billNo is null, enable the button
  //             $('#billNoInput').prop('disabled', false);
  //         }
  //     });
  //   }
  // }

  function savePaymentStatus() {
    const uuid = $('#ddlInvoiceNo').val();
    if (uuid === '') toastr.warning('Select the Invoice No to Save');else {
      $('#btnSave').prop('disabled', true).html(`<i class="fa fa-spinner fa-spin"></i>&nbsp; Saving`);
      const data = {
        invoiceNo: $('#hidInvoiceNo').val(),
        fileNo: $('#txtFileNo').val(),
        amountPaid: $('#txtAmountPaid').val(),
        paidDate: formatDate($('#dpPaidDate').datepicker('getDate')),
        receivedBy: $('#ddlPaymentReceivedBy').val(),
        bank: $('#ddlBank').val(),
        billNo: $('#txtBillNos').val(),
        InvoiceDate: $('#txtInvoiceDate').val(),
        remarks: $('#txtRemarks').val(),
        isPaid: $('#chkPaid').prop('checked')
      };
      axios.post(currentUrl, data, {
        responseType: 'text'
      }).then(response => {
        Swal.fire('Success', response.data, 'success');
      }).then(() => {
        $('#btnSave').prop('disabled', false).text('Save');
      });
    }
  }

  function clearPage() {
    $('#divPaymentReceiving .form-control').val('');
    $('#divPaymentReceiving input[type="checkbox"]').prop('checked', false);
    $('#txtAmountPaid,#ddlBank').val(0);
    $('#ddlReceivedBy').val('0');
    $('#dpPaidDate').datepicker('setDate', new Date());
    $('#ddlFileNo,#ddlInvoiceNo').trigger('change');
    $('#txtAmountPaid,#chkPaid').prop('disabled', false);
    // getInvoiceNos();
    getFileNos();
    // getBillNos();
  }

  // function getInvoiceNos() {
  //   axios.get(`${currentUrl}/invoice-nos`).then(response => {
  //     const options = [];
  //     $.each(response.data, (index, value) => {
  //       options.push(`<option value="${value.uuid}">${value.id}</option>`);
  //     });
  //     $('#ddlInvoiceNo').populateSelect(options);
  //   });
  // }

  // function getBillNos() {
  //   axios.get(`${currentUrl}/bill-numbers`).then(response => {
  //     const options = [];
  //     $.each(response.data, (index, value) => {
  //       options.push(`<option value="${value.bill_no}">${value.id}</option>`);
  //     });
  //     $('#ddlBillNo').populateSelect(options);
  //   });
  // }

  function generateBillNo() {
    // Make an AJAX request to the route or URL responsible for generating the bill number
    axios.get(`${currentUrl}/bill-nos`) // Replace with the appropriate route or URL
        .then(function(response) {
            // Display the generated bill number in the desired element on your page
            document.getElementById('txtBillNos').value = response.data.billNo; // Replace 'billNoInput' with the appropriate id for the input field
        })
        .catch(function(error) {
            // Handle the error if the bill number generation fails
            console.log(error);
        });
 }

  // function getFileNos() {
  //   axios.get(`${currentUrl}/file-nos`).then(response => {
  //     const options = [];
  //     $.each(response.data, (index, value) => {
  //       options.push(`<option value="${value.uuid}">${value.id}</option>`);
  //     });
  //     $('#ddlFileNos').populateSelect(options);

  //   });
  // }
})();
/******/ })()
;