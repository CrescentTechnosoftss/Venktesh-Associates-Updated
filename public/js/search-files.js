// const { defaultsDeep } = require("lodash");

/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!**************************************!*\
  !*** ./resources/js/search-files.js ***!
  \**************************************/
(function () {
  $('#liSearchFiles a').addClass('active');
  $('#btnSearch').on('click', searchFile);
  const dataTable = $('#tblFileSearch').DataTable({
    language: {
      emptyTable: 'No Files Available'
    },
    columns: [{
      data: 'fileNo',
      title: 'File No'
    }, {
      data: 'invoiceNo',
      title: 'Invoice No'
    }, {
      data: 'bank',
      title: 'Bank / Branch'
    }, {
      data: 'customer',
      title: 'Customer Name/ Contact No'
    }, {
      data: 'purchaser',
      title: 'Purchaser'
    }, {
      data: 'address',
      title: 'Address'
    }, {
      data: 'referredBy',
      title: 'Referred By'
    }, {
      data: 'engineer',
      title: 'Engineer'
    },
    {
      data: 'engnum',
      title: 'Engineer Num'
    },{
      title: 'Whatsapp',
      render: () => `<button class="btn btn-primary btn-sm rounded"><i class="fab fa-whatsapp"></i></button>`
    }]
  });

  function searchFile() {
    const data = {
      searchBy: $('#ddlSearchBy').val(),
      search: $('#txtSearch').val()
    };

    if (data.search === '') {
      toastr.info('Enter the Search Value');
    } else {
      dataTable.ajax.url(`${currentUrl}/${data.searchBy}/${data.search}`).load();
    }
  }

  $('#searchFile tbody').on('click', '.btn', function () {
    sendWhatsapp($(this).closest('tr'));
});

function sendWhatsapp(row) {
    const fileNo = row.children('td:eq(0)').text();

    const bankData = row.children('td:eq(2)').text().split('/');

    const bank = bankData[0].trim();
    const branch = bankData[1].trim();

    const custData = row.children('td:eq(3)').text().split('/');
    const custName = custData[0].trim();
    const custNum = custData[1].trim();

    const custAddr = row.children('td:eq(5)').text();

    const custEngineer = row.children('td:eq(7)').text();

    const engNum = row.children('td:eq(8)').text();


    row.children('td:eq(9)').children('.btn').html(`<i class="fa fa-spinner fa-spin"></i>&nbsp;Sending...`).prop('disabled', true);
    axios.post(`${currentUrl}/send-whatsapp`, {
        fileNo,
        bank,
        branch,
        custName,
        custNum,
        custEngineer,
        engNum,
        custAddr
    })
        .then(response => {
            if (response.data.status) {
                toastr.success(response.data.message);
            } else {
                toastr.error(response.data.message);
            }
        }).finally(() => {
            row.children('td:eq(9)').children('.btn').html(`<i class="fab fa-whatsapp"></i>`).prop('disabled', false);
        });
}
})();
/******/ })()
;