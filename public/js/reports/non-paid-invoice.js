/******/ (() => { // webpackBootstrap
/******/ 	"use strict";
var __webpack_exports__ = {};
/*!**************************************************!*\
  !*** ./resources/js/reports/non-paid-invoice.js ***!
  \**************************************************/


$('#liReports').addClass('menu-open').children('a').addClass('active');
$('#liNonPaidInvoice a').addClass('active');
$('#dpFromDate,#dpToDate').prop('readonly', true);
$('#lblTotalAmount').text(formatCurrency(0));
$('#dpFromDate,#dpToDate').datepicker({
  dateFormat: 'dd-mm-yy',
  changeMonth: true,
  changeYear: true,
  maxDate: new Date()
}).datepicker('setDate', new Date());
$('#ddlBank').on('change', getBranches);
$('#btnShow').on('click', showReport);
$('#btnExport').on('click', exportData);
$('#btnMail').on('click', sendBulkMail);
const dataTable = $('#tblNonPaidInvoice').DataTable({
  dom: 'lBfrtip',
  paging: true,
  ajax: {
    url: currentUrl,
    type: 'POST',
    data: () => getElementDatas(),
    dataSrc: 'invoices'
  },
  language: {
    emptyTable: 'No Proforma found'
  },
  "footerCallback": (tfoot, data) => {
    // const total = data.reduce((curr) => prev + curr.billAmount, 0);
    const total = data.reduce((prev, curr) => prev + curr.billAmount, 0);
    console.log(total);
    $(tfoot).children('td:eq(0)').html(`<h5>Total Pending Amount is ${formatCurrency(total)}<h5>`);
},
  columns: [{
    title: 'S.No',
    render: (data, type, row, meta) => meta.row + 1
  }, {
    title: 'Proforma Date',
    data: 'ProformaDate',
    render: formatDateForBrowser
  }, {
    title: 'Proforma No',
    data: 'ProformaNo'
  }, {
    title: 'File No',
    data: 'fileNo'
  }, {
    title: 'Bank / Branch',
    data: 'bank'
  }, {
    title: 'Customer Name / Phone No',
    data: 'customer'
  }, {
    title: 'Purchaser',
    data: 'purchaser'
  }, {
    // title: 'Bill Amount',
    // data: 'billAmount',
    // formatCurrency
    title: 'Bill Amount',
    data: 'billAmount',
    render: (data, type, row) => {
        if (type === 'display') {
            return formatCurrency(data) + ' <i class="fa fa-inr"></i>';
        }
        return data;
    }

  }, {
    title: 'Referred By',
    data: 'referredBy',
    render: (data) => `${data} <button class="btn-whatsapp-referred btn-primary btn-sm rounded"><i class="fab fa-whatsapp"></i></button>`
  }, {
    title: 'Engineer',
    data: 'engineer'
  }, {
    title: 'Send Mail',
    render: () => `<button class="btn btn-primary btn-sm rounded"><i class="fa fa-envelope"></i></button>`
  }
  , {
    title: 'Customer & Bank',
    render: () => `<button class="btn-whatsapp btn-primary btn-sm rounded"><i class="fab fa-whatsapp"></i></button>`
  }],
  buttons: [{
    extend: "print",
    text: "Print - Invoices",
    title: `Non Paid Invoices From ${formatDateForBrowser($('#dpFromDate').datepicker('getDate'))} To ${formatDateForBrowser($('#dpToDate').datepicker('getDate'))}`,
    className: 'btn btn-primary',
    customize: win => {
      $(win.document.body).find('table').css('font-size', '30px');
    },
    exportOptions: {
      columns: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    }
  }],
  drawCallback: settings => {
    $('.buttons-print').prop('disabled', settings.aoData.length === 0);
  }
}).on('xhr', () => {
  checkMailStatus();
});

$('#tblNonPaidInvoice tbody').on('click', '.btn', function () {
  sendMail($(this).closest('tr'));
});

$('#tblNonPaidInvoice tbody').on('click', '.btn-whatsapp', function () {
  sendWhatsapp($(this).closest('tr'));
});

$('#tblNonPaidInvoice tbody').on('click', '.btn-whatsapp-referred', function () {
  sendWhatsappReferr($(this).closest('tr'));
});


function checkMailStatus() {
  axios.get(`${currentUrl}/bank-emails`).then(response => {
    $('#tblNonPaidInvoice tbody tr').each(function () {
      const bank = $(this).children('td:eq(4)').text();
      const isExists = response.data.filter(filter => filter.bank === bank && filter.email !== '').length > 0;

      if (!isExists) {
        $(this).children('td:eq(10)').text('');
      }
    });
  });
}

function getBranches() {
  const bank = $('#ddlBank').val();

  if (bank === 'all') {
    $('#ddlBranch').clearSelect();
  } else {
    axios.get(`${currentUrl}/branches/${bank}`).then(response => {
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
    _token: $('[name="_token"]').val()
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
/**
 * 
 * @param {JQuery<HTMLTableRowElement>} row 
 */


function sendMail(row) {
  // const invoiceNo = row.children('td:eq(2)').text();
  const invoiceNo = row.children('td:eq(2)').text().replace('P', '');
  const bankData = row.children('td:eq(4)').text().split('/');
  const bank = bankData[0].trim();
  const branch = bankData[1].trim();
  row.children('td:eq(10)').children('.btn').html(`<i class="fa fa-spinner fa-spin"></i>&nbsp;Sending...`).prop('disabled', true);
  axios.post(`${currentUrl}/send-mail`, {
    invoiceNo,
    bank,
    branch
  }).then(response => {
    if (response.data.status) {
      toastr.success(response.data.message);
    } else {
      toastr.error(response.data.message);
    }
  }).finally(() => {
    row.children('td:eq(10)').children('.btn').html(`<i class="fa fa-envelope"></i>`).prop('disabled', false);
  });
}

function sendWhatsapp(row) {

  const invoiceDate = row.children('td:eq(1)').text();
  // const invoiceNo = row.children('td:eq(2)').text();
  const invoiceNo = row.children('td:eq(2)').text().replace('P', '');


  const fileNo = row.children('td:eq(3)').text();

  const bankData = row.children('td:eq(4)').text().split('/');

  const bank = bankData[0].trim();
  const branch = bankData[1].trim();

  const custData = row.children('td:eq(5)').text().split('/');
  const custName = custData[0].trim();
  const custNum = custData[1].trim();

  const billAmount = row.children('td:eq(7)').text();

  // row.children('td:eq(8)').children('.btn').html(`<i class="fa fa-spinner fa-spin"></i>&nbsp;Sending...`).prop('disabled', true);
  axios.post(`${currentUrl}/send-whatsapp`, {
      invoiceDate,
      invoiceNo,
      fileNo,
      bank,
      branch,
      custName,
      custNum,
      billAmount
  })
      .then(response => {
          if (response.data.status) {
              toastr.success(response.data.message);
          } else {
              toastr.error(response.data.message);
          }
      }).finally(() => {
          // row.children('td:eq(8)').children('.btn').html(`<i class="fab fa-whatsapp"></i>`).prop('disabled', false);
      });
}

function sendWhatsappReferr(row) {

  const invoiceDate = row.children('td:eq(1)').text();
  // const invoiceNo = row.children('td:eq(2)').text();
  const invoiceNo = row.children('td:eq(2)').text().replace('P', '');


  const fileNo = row.children('td:eq(3)').text();

  const bankData = row.children('td:eq(4)').text().split('/');

  const bank = bankData[0].trim();
  const branch = bankData[1].trim();

  const custData = row.children('td:eq(8)').text().split('/');
  const custNum = custData[1].trim();
  // const custNum = row.children('td:eq(8)').text();

  const billAmount = row.children('td:eq(7)').text();

  // row.children('td:eq(8)').children('.btn').html(`<i class="fa fa-spinner fa-spin"></i>&nbsp;Sending...`).prop('disabled', true);
  axios.post(`${currentUrl}/send-whatsapp-referred`, {
      invoiceDate,
      invoiceNo,
      fileNo,
      bank,
      branch,
      // custName,
      custNum,
      billAmount
  })
      .then(response => {
          if (response.data.status) {
              toastr.success(response.data.message);
          } else {
              toastr.error(response.data.message);
          }
      }).finally(() => {
          // row.children('td:eq(8)').children('.btn').html(`<i class="fab fa-whatsapp"></i>`).prop('disabled', false);
      });
}

function sendBulkMail() {
  const data = getElementDatas();

  if (data.bank === 'all') {
    toastr.warning('Select the Bank Name to Send');
  } else if (data.branch === 'all') {
    toastr.warning('Select the Branch Name to Send');
  } else {
    $('#btnMail').prop('disabled', true).html('<span class="fa fa-spinner fa-spin"></span>&nbsp;Sending');
    axios.post(`${currentUrl}/send-bulk-mail`, data).then(response => {
      if (response.data.status) {
        toastr.success(response.data.message);
      } else {
        toastr.error(response.data.message);
      }
    }).then(() => {
      $('#btnMail').prop('disabled', false).text('Send Mail');
    });
  }
}
/******/ })()
;