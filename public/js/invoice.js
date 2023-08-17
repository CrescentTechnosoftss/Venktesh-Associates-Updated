/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./node_modules/bootstrap4-toggle/js/bootstrap4-toggle.min.js":
/*!********************************************************************!*\
  !*** ./node_modules/bootstrap4-toggle/js/bootstrap4-toggle.min.js ***!
  \********************************************************************/
/***/ (() => {

/*\
|*| ========================================================================
|*| Bootstrap Toggle: bootstrap4-toggle.js v3.6.1
|*| https://gitbrent.github.io/bootstrap4-toggle/
|*| ========================================================================
|*| Copyright 2018-2019 Brent Ely
|*| Licensed under MIT
|*| ========================================================================
\*/
!function(a){"use strict";function l(t,e){this.$element=a(t),this.options=a.extend({},this.defaults(),e),this.render()}l.VERSION="3.6.0",l.DEFAULTS={on:"On",off:"Off",onstyle:"primary",offstyle:"light",size:"normal",style:"",width:null,height:null},l.prototype.defaults=function(){return{on:this.$element.attr("data-on")||l.DEFAULTS.on,off:this.$element.attr("data-off")||l.DEFAULTS.off,onstyle:this.$element.attr("data-onstyle")||l.DEFAULTS.onstyle,offstyle:this.$element.attr("data-offstyle")||l.DEFAULTS.offstyle,size:this.$element.attr("data-size")||l.DEFAULTS.size,style:this.$element.attr("data-style")||l.DEFAULTS.style,width:this.$element.attr("data-width")||l.DEFAULTS.width,height:this.$element.attr("data-height")||l.DEFAULTS.height}},l.prototype.render=function(){this._onstyle="btn-"+this.options.onstyle,this._offstyle="btn-"+this.options.offstyle;var t="large"===this.options.size||"lg"===this.options.size?"btn-lg":"small"===this.options.size||"sm"===this.options.size?"btn-sm":"mini"===this.options.size||"xs"===this.options.size?"btn-xs":"",e=a('<label for="'+this.$element.prop("id")+'" class="btn">').html(this.options.on).addClass(this._onstyle+" "+t),s=a('<label for="'+this.$element.prop("id")+'" class="btn">').html(this.options.off).addClass(this._offstyle+" "+t),o=a('<span class="toggle-handle btn btn-light">').addClass(t),i=a('<div class="toggle-group">').append(e,s,o),l=a('<div class="toggle btn" data-toggle="toggle" role="button">').addClass(this.$element.prop("checked")?this._onstyle:this._offstyle+" off").addClass(t).addClass(this.options.style);this.$element.wrap(l),a.extend(this,{$toggle:this.$element.parent(),$toggleOn:e,$toggleOff:s,$toggleGroup:i}),this.$toggle.append(i);var n=this.options.width||Math.max(e.outerWidth(),s.outerWidth())+o.outerWidth()/2,h=this.options.height||Math.max(e.outerHeight(),s.outerHeight());e.addClass("toggle-on"),s.addClass("toggle-off"),this.$toggle.css({width:n,height:h}),this.options.height&&(e.css("line-height",e.height()+"px"),s.css("line-height",s.height()+"px")),this.update(!0),this.trigger(!0)},l.prototype.toggle=function(){this.$element.prop("checked")?this.off():this.on()},l.prototype.on=function(t){if(this.$element.prop("disabled"))return!1;this.$toggle.removeClass(this._offstyle+" off").addClass(this._onstyle),this.$element.prop("checked",!0),t||this.trigger()},l.prototype.off=function(t){if(this.$element.prop("disabled"))return!1;this.$toggle.removeClass(this._onstyle).addClass(this._offstyle+" off"),this.$element.prop("checked",!1),t||this.trigger()},l.prototype.enable=function(){this.$toggle.removeClass("disabled"),this.$toggle.removeAttr("disabled"),this.$element.prop("disabled",!1)},l.prototype.disable=function(){this.$toggle.addClass("disabled"),this.$toggle.attr("disabled","disabled"),this.$element.prop("disabled",!0)},l.prototype.update=function(t){this.$element.prop("disabled")?this.disable():this.enable(),this.$element.prop("checked")?this.on(t):this.off(t)},l.prototype.trigger=function(t){this.$element.off("change.bs.toggle"),t||this.$element.change(),this.$element.on("change.bs.toggle",a.proxy(function(){this.update()},this))},l.prototype.destroy=function(){this.$element.off("change.bs.toggle"),this.$toggleGroup.remove(),this.$element.removeData("bs.toggle"),this.$element.unwrap()};var t=a.fn.bootstrapToggle;a.fn.bootstrapToggle=function(o){var i=Array.prototype.slice.call(arguments,1)[0];return this.each(function(){var t=a(this),e=t.data("bs.toggle"),s="object"==typeof o&&o;e||t.data("bs.toggle",e=new l(this,s)),"string"==typeof o&&e[o]&&"boolean"==typeof i?e[o](i):"string"==typeof o&&e[o]&&e[o]()})},a.fn.bootstrapToggle.Constructor=l,a.fn.toggle.noConflict=function(){return a.fn.bootstrapToggle=t,this},a(function(){a("input[type=checkbox][data-toggle^=toggle]").bootstrapToggle()}),a(document).on("click.bs.toggle","div[data-toggle^=toggle]",function(t){a(this).find("input[type=checkbox]").bootstrapToggle("toggle"),t.preventDefault()})}(jQuery);
//# sourceMappingURL=bootstrap4-toggle.min.js.map


/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/compat get default export */
/******/ 	(() => {
/******/ 		// getDefaultExport function for compatibility with non-harmony modules
/******/ 		__webpack_require__.n = (module) => {
/******/ 			var getter = module && module.__esModule ?
/******/ 				() => (module['default']) :
/******/ 				() => (module);
/******/ 			__webpack_require__.d(getter, { a: getter });
/******/ 			return getter;
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/define property getters */
/******/ 	(() => {
/******/ 		// define getter functions for harmony exports
/******/ 		__webpack_require__.d = (exports, definition) => {
/******/ 			for(var key in definition) {
/******/ 				if(__webpack_require__.o(definition, key) && !__webpack_require__.o(exports, key)) {
/******/ 					Object.defineProperty(exports, key, { enumerable: true, get: definition[key] });
/******/ 				}
/******/ 			}
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/hasOwnProperty shorthand */
/******/ 	(() => {
/******/ 		__webpack_require__.o = (obj, prop) => (Object.prototype.hasOwnProperty.call(obj, prop))
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	(() => {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = (exports) => {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	})();
/******/ 	
/************************************************************************/
var __webpack_exports__ = {};
// This entry need to be wrapped in an IIFE because it need to be in strict mode.
(() => {
"use strict";
/*!*********************************!*\
  !*** ./resources/js/invoice.js ***!
  \*********************************/
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var bootstrap4_toggle__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! bootstrap4-toggle */ "./node_modules/bootstrap4-toggle/js/bootstrap4-toggle.min.js");
/* harmony import */ var bootstrap4_toggle__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(bootstrap4_toggle__WEBPACK_IMPORTED_MODULE_0__);


(function () {
  "use strict";

  $(function () {
    $('#liInvoice a').addClass('active');
    $('#txtInvoiceDate,#dpReportDate').datepicker();
    $('#txtInvoiceDate').datepicker('setDate', new Date());
    $('#btnUpdate,#btnDelete,#btnPrint,#btnDownload').prop('disabled', true);
    $('#divInvoiceNo,#txtFileNo,#btnShowCustomer').hide();
    $('#chkWithFile').bootstrapToggle({
      on: 'Yes',
      off: 'No'
    });
    $('#ddlFileNo,#ddlInvoiceNo').select2();
    $('#ddlBank').on('change', () => {
      getBranches();
    });
    $('#ddlFileNo').on('change', getFileDetails);
    // Add an event listener to the checkbox
    $('#chkIGST').on('change', function() {
      if (this.checked) {
      calculateGST();
   } else {
    // If the checkbox is unchecked, reset the GST amount and total amount
    // $('#txtGSTAmount').val(0);
    // $('#txtTotalAmount, #txtBalanceAmount').val($('#txtBillAmount').val());
  }
});
    $('#ddlBankId').on('change', getBankDetails);
    $('#ddlInvoiceNo').on('change', getInvoiceDetails);
    $('#btnAddDescription').on('click', addDescription);
    $('#btnSave').on('click', saveInvoice);
    $('#btnView').on('click', view);
    $('#btnPrint').on('click', printInvoice);
    $('#btnDownload').on('click', dowloadInvoice);
    $('#btnUpdate').on('click', updateInvoiceDetails); // $('#btnDelete').on('click', deleteInvoiceDetails);

    $('#btnClear').on('click', clear);
    $('#txtBillAmount').on('input', changeTotalAmount);
    $('#ddlGSTPercentage').on('change', changeTotalAmount);
    $('#txtInitialAmount').on('input', changePayingAmt);
    
  
    $('#txtGstNum').on('input change', function() {
      var gstNum = $(this).val();
      if (gstNum === '') {
          $('#chkIGST').prop('checked', false);
      } else if (!gstNum.startsWith('29')) {
          $('#chkIGST').prop('checked', true);
      } else {
          $('#chkIGST').prop('checked', false);
      }
  });

  $('#txtGstNo').on('input change', function() {
    var gstNums = $(this).val();
    if (gstNums === '') {
        $('#chkIGST').prop('checked', false);
    } else if (!gstNums.startsWith('29')) {
        $('#chkIGST').prop('checked', true);
    } else {
        $('#chkIGST').prop('checked', false);
    }
});
  

  //   $('#txtGstNo').on('input', function() {
  //     var gstNums = $(this).val();
  //     if (gstNums.startsWith('30')) {
  //         $('#chkIGST').prop('checked', true);
  //     } else {
  //         $('#chkIGST').prop('checked', false);
  //     }
  // });


    $('input[type="number"]').on('focus', function () {
      const amount = parseFloat($(this).val());
      console.log($(this).prop('disabled'));

      if ($(this).prop('readonly') === false && (isNaN(amount) || amount === 0)) {
        $(this).val(null);
      }
    });
    $('#chkWithFile').on('change', function () {
      if ($(this).prop('checked')) {
        $('#btnShowCustomer').hide();
        $('.file').show();
      } else {
        $('#btnShowCustomer').show();
        $('.file').hide();
      }
    });
    $('#tblDescription tbody').on('click', '.btn', function () {
      $(this).closest('tr').remove();
    });
  });
  /**
   * 
   * @param {string} currentBranch 
   */

  function getBranches(currentBranch = null) {
    const bank = $('#ddlBank').val();

    if (bank !== '') {
      axios.get(`${currentUrl}/branches/${bank}`).then(response => {
        const options = [];
        $.each(response.data.branches, (index, value) => {
          options.push(`<option value="${value}">${value}</option>`);
        });
        $('#ddlBranch').populateSelect(options);

        if (currentBranch !== null) {
          $('#ddlBranch').val(currentBranch);
        }
      });
    } else {
      $('#ddlBranch').clearSelect();
    }
  }

  function getFileDetails() {
    const uuid = $('#ddlFileNo').val();

    if (uuid !== '') {
      axios.get(`${currentUrl}/file-details/${uuid}`).then(d => {
        $('#hidFileNo').val(d.data.fileNo);
        $('#txtCustomerName').val(d.data.customer);
        $('#txtPurchaserName').val(d.data.purchaser);
        $('#txtEngineerName').val(d.data.engineer);
        $('#txtReferrer').val(d.data.referrer);
        $('#txtReferrerMob').val(d.data.referrerMob);
        $('#txtBankName').val(d.data.bank);
        $('#txtBranchName').val(d.data.branch);
        $('#txtBillAmount').val(d.data.billAmount);
        $('#txtInitialAmount,#txtPaidAmount').val('0');
        const billAmount = parseFloat(d.data.billAmount);
        const gstPercentage = parseInt($('#ddlGSTPercentage').val());
        const gstAmount = billAmount / 100 * gstPercentage;
        $('#txtGSTAmount').val(gstAmount);
        $('#txtTotalAmount,#txtBalanceAmount').val(billAmount + gstAmount);
      });
    }
  }

  function getBankDetails() {
    const bankId = $('#ddlBankId').val();

    if (bankId !== '0') {
      axios.get(`${currentUrl}/bank-details/${bankId}`).then(d => {
        $('#txtUserBranch').val(d.data.branch);
        $('#txtAccountName').val(d.data.accountName);
        $('#txtAccountNo').val(d.data.accountNo);
        $('#txtIfscCode').val(d.data.ifscCode);
      });
    } else {
      $('#txtUserBranch,#txtAccountName,#txtAccountNo,#txtIfscCode').val('');
    }
  }

  function addDescription() {
    const description = $('#ddlDescription').val();
    if (description === '') toastr.info('Select the Description to Add');else {
      let isExists = false;
      $('#tblDescription tbody tr').each(function () {
        if ($(this).children('td:eq(0)').text() === description) {
          isExists = true;
          return false;
        }
      });
      if (isExists) toastr.info(description + ' is already Added');else {
        addItemToDescription([description]);
      }
    }
  }
  /**
   * 
   * @param {Array<string>} items 
   */


  function addItemToDescription(items) {
    const btn = `<button class="btn btn-danger"><i class="fa fa-trash-alt"></i></button>`;
    const descriptions = [];
    $.each(items, (index, value) => {
      descriptions.push(`<tr><td>${value}</td><td>${btn}</td></tr>`);
    });
    $('#tblDescription tbody').append(descriptions.join(''));
  }

  function changeTotalAmount() {
    const billAmount = Number($('#txtBillAmount').val());
    const gstPercentage = parseInt($('#ddlGSTPercentage').val());
    const gstAmount = billAmount / 100 * gstPercentage;
    // const gstAmount = Math.round(billAmount / 100 * gstPercentage, 2);

    $('#txtGSTAmount').val(gstAmount);
    $('#txtTotalAmount,#txtBalanceAmount').val(billAmount + gstAmount);
  }

  function calculateGST() {
    const billAmount = Number($('#txtBillAmount').val());
    const gstPercentage = 18; // 18% GST
    
    const gstAmount = billAmount / 100 * gstPercentage;
    // $('#txtGSTAmount').val(gstAmount);
    // $('#txtTotalAmount, #txtBalanceAmount').val(billAmount + gstAmount);
  }

  function changePayingAmt() {
    const billAmount = Number($('#txtBillAmount').val());
    const gstAmount = Number($('#txtGSTAmount').val());
    const totalAmount = billAmount + gstAmount;
    const initialAmount = Number($('#txtInitialAmount').val());
    $('#txtPaidAmount').val(initialAmount);
    $('#txtBalanceAmount').val(totalAmount - initialAmount);
  }

  function getCustomerDetailsFromModal() {
    return {
      fileNo: $('#txtInvoiceFileNo').val(),
      bank: $('#ddlBank').val(),
      branch: $('#ddlBranch').val(),
      customer: $('#txtCustomer').val(),
      purchaser: $('#txtPurchaser').val(),
      contact: $('#txtContact').val(),
      address: $('#txtAddress').val(),
      GstNo: $('#txtGstNo').val(),
      remarks: $('#txtRemarks').val(),
      referrer: $('#txtInvoiceReferrer').val(),
      referrerName: $('#txtInvoiceName').val(),
      engineer: $('#ddlEngineer').val(),
      apartment: $('#txtApartmentName').val(),
      status: $('#txtStatus').val(),
      totalValue: $('#txtTotalValue').val(),
      deliveredTo: $('#txtDeliveredTo').val(),
      reportDate: $('#dpReportDate').datepicker('getDate') !== null ? formatDate($('#dpReportDate').datepicker('getDate')) : null
    };
  }

  function saveInvoice() {
    const descriptions = [];
    $('#tblDescription tbody tr').each(function () {
      descriptions.push($(this).children('td:eq(0)').text());
    });
    const data = {
      fileNo: $('#hidFileNo').val(),
      invoiceDate: formatDate($('#txtInvoiceDate').datepicker('getDate')),
      descriptions,
      billAmount: Number($('#txtBillAmount').val()),
      gstPercentage: parseInt($('#ddlGSTPercentage').val()),
      gstAmount: Number($('#txtGSTAmount').val()),
      totalAmount: Number($('#txtTotalAmount').val()),
      initialAmount: Number($('#txtInitialAmount').val()),
      paymentType: $('#ddlPaymentType').val(),
      IGST: $('#chkIGST').prop('checked'),
      GstNo: $('#txtGstNum').val(),
      referrerMob: $('#txtReferrerMob').val(),
      bank: $('#ddlBankId').val(),
      hasFile: $('#chkWithFile').prop('checked'),
      customerDetails: getCustomerDetailsFromModal()
    }; //Validation for Invoice without file

    if (data.hasFile === false) {
      if (data.customerDetails.bank === '') {
        toastr.warning('Select the Bank Name in Customer Details');
        return;
      }

      if (data.customerDetails.branch === '') {
        toastr.warning('Select the Branch Name in Customer Details');
        return;
      }

      if (data.customerDetails.customer === '') {
        toastr.warning('Enter the Customer Name');
        return;
      }
    } //Validation for Invoice with file
    else if ($('#ddlFileNo').val() === '') {
        toastr.warning('Select the File No to Save');
        return;
      }

    if (data.initialAmount > data.totalAmount) {
      toastr.warning('Paying Amount is greater than Bill Amount');
    } else if (descriptions.length === 0) {
      toastr.warning('No Descriptions were Added');
    } else {
      _processing('btnSave', 'Saving');

      axios.post(`${currentUrl}`, data).then(response => {
        clear();
        Swal.fire({
          icon: 'success',
          title: `${response.data.message}. Invoice No is ${response.data.invoiceNo}`,
          text: 'Do you want to Print Invoice ?',
          showConfirmButton: true,
          showDenyButton: true,
          confirmButtonText: 'Yes'
        }).then(swalResult => {
          if (swalResult.isConfirmed) {
            printInvoice(response.data.uuid);
          }
        });
      }).finally(() => {
        _processed('btnSave', 'Save');
      });
    }
  }

  function view() {
    $('#btnSave').prop('disabled', true);
    $('#btnUpdate,#btnDelete,#btnPrint,#btnDownload').prop('disabled', false);
    $('#txtInitialAmount').prop('readonly', true);
    $('#divInvoiceNo,#txtFileNo').show();
    $('#divFileNo').hide();
    getInvoiceNos();
    $('#chkWithFile').bootstrapToggle('disable');
  }

  function getInvoiceDetails() {
    const invoiceNo = $('#ddlInvoiceNo').val();

    if (invoiceNo !== '') {
      $('#hidInvoiceNo').val(invoiceNo);
      axios.get(`${currentUrl}/${invoiceNo}`).then(response => {
        var _response$data$branch, _response$data$accoun, _response$data$accoun2, _response$data$ifscCo;

        const branch = response.data.customerDetails.branch;

        if (branch !== null && $(`#ddlBranch option[value="${branch}"]`).length === 0) {}

        $('#txtFileNo').val(response.data.fileNo);
        $('#txtInvoiceDate').datepicker('setDate', moment(response.data.invoiceDate).toDate());
        $('#txtCustomerName').val(response.data.customerName);
        $('#txtPurchaserName').val(response.data.purchaserName);
        $('#txtEngineerName').val(response.data.engineerName);
        $('#txtReferrer').val(response.data.referrer);
        $('#txtReferrerMob').val(response.data.referrerMob);
        $('#txtBankName').val(response.data.customerBank);
        $('#txtBranchName').val(response.data.customerBranch);
        $('#txtBillAmount').val(response.data.billAmount);
        $('#ddlGSTPercentage').val(response.data.gstPercentage);
        $('#txtGSTAmount').val(response.data.gstAmount);
        $('#txtTotalAmount').val(response.data.totalAmount);
        $('#txtInitialAmount').val(response.data.initialAmount);
        $('#txtPaidAmount').val(response.data.paidAmount);
        $('#txtBalanceAmount').val(response.data.dueAmount);
        $('#ddlPaymentType').val(response.data.paymentType);
        $('#txtGstNum').val(response.data.GstNo);
        $('#chkIGST').prop('checked', response.data.IGST);
        $('#ddlBankId').val(response.data.bank);
        $('#txtUserBranch').val((_response$data$branch = response.data.branch) !== null && _response$data$branch !== void 0 ? _response$data$branch : '');
        $('#txtAccountName').val((_response$data$accoun = response.data.accountName) !== null && _response$data$accoun !== void 0 ? _response$data$accoun : '');
        $('#txtAccountNo').val((_response$data$accoun2 = response.data.accountNo) !== null && _response$data$accoun2 !== void 0 ? _response$data$accoun2 : '');
        $('#txtIfscCode').val((_response$data$ifscCo = response.data.ifscCode) !== null && _response$data$ifscCo !== void 0 ? _response$data$ifscCo : '');
        $('#txtInvoiceFileNo').val(response.data.customerDetails.fileNo);
        $('#ddlBank').val(response.data.customerDetails.bank);
        $('#txtCustomer').val(response.data.customerDetails.customer);
        $('#txtPurchaser').val(response.data.customerDetails.purchaser);
        $('#txtContact').val(response.data.customerDetails.contact);
        $('#txtAddress').val(response.data.customerDetails.address);
        $('#txtRemarks').val(response.data.customerDetails.remarks);
        $('#txtInvoiceReferrer').val(response.data.customerDetails.referrer);
        $('#ddlEngineer').val(response.data.customerDetails.engineer);
        $('#txtApartmentName').val(response.data.customerDetails.apartment);
        $('#txtStatus').val(response.data.customerDetails.status);
        $('#txtTotalValue').val(response.data.customerDetails.totalValue);
        $('#txtDeliveredTo').val(response.data.customerDetails.deliveredTo);
        const reportDate = response.data.customerDetails.reportDate === null ? null : moment(response.data.customerDetails.reportDate).toDate();
        $('#dpReportDate').datepicker('setDate', reportDate);
        $('#chkWithFile').bootstrapToggle('enable');

        if (response.data.hasFile) {
          $('#chkWithFile').bootstrapToggle('on');
        } else {
          $('#chkWithFile').bootstrapToggle('off');
          getBranches(response.data.customerDetails.branch);
        }

        $('#chkWithFile').bootstrapToggle('disable');
        $('#tblDescription tbody').empty();
        addItemToDescription(response.data.descriptions);
      });
    }
  }

  function printInvoice(defaultValue = '') {
    const invoiceNo = typeof defaultValue === 'string' ? defaultValue : $('#ddlInvoiceNo').val();

    if (invoiceNo === '') {
      toastr.info('Select the Invoice No to Print');
    } else {
      printJS(`${printUrl}/${invoiceNo}`);
    }
  }

  function dowloadInvoice(defaultValue = '') {
    const invoiceNo = typeof defaultValue === 'string' ? defaultValue : $('#ddlInvoiceNo').val();

    if (invoiceNo === '') {
      toastr.info('Select the Invoice No to Download');
    } else {
      window.open(`${downloadUrl}/${invoiceNo}`);
    }
  }

  function updateInvoiceDetails() {
    const descriptions = [];
    $('#tblDescription tbody tr').each(function () {
      descriptions.push($(this).children('td:eq(0)').text());
    });
    const data = {
      invoiceNo: $('#ddlInvoiceNo').val(),
      invoiceDate: formatDate($('#txtInvoiceDate').datepicker('getDate')),
      descriptions,
      billAmount: Number($('#txtBillAmount').val()),
      gstPercentage: parseInt($('#ddlGSTPercentage').val()),
      gstAmount: Number($('#txtGSTAmount').val()),
      totalAmount: Number($('#txtTotalAmount').val()),
      initialAmount: Number($('#txtInitialAmount').val()),
      paymentType: $('#ddlPaymentType').val(),
      GstNo: $('#txtGstNum').val(),
      IGST: $('#chkIGST').prop('checked'),
      bank: $('#ddlBankId').val(),
      accountName: $('#txtAccountName').val(),
      accountNo: $('#txtAccountNo').val(),
      hasFile: $('#chkWithFile').prop('checked'),
      customerDetails: getCustomerDetailsFromModal()
    };

    const bankId = $('#ddlBankId').val();

    const bankData = {
      bankId: bankId,
      accountName: $('#txtAccountName').val(),
      accountNo: $('#txtAccountNo').val(),
      branch: $('#txtUserBranch').val(),
      ifscCode: $('#txtIfscCode').val()
    };

    axios.post(`${currentUrl}/bank-update/${bankId}`, bankData);    

    if (data.invoiceNo === '') {
      toastr.info('Select the Invoice No to Update');
      return;
    }

    if (descriptions.length === 0) {
      toastr.warning('No Descriptions were Added');
      return;
    }

    if (data.hasFile === false) {
      if (data.customerDetails.bank === '') {
        toastr.warning('Select the Bank Name in Customer Details');
        return;
      }

      if (data.customerDetails.branch === '') {
        toastr.warning('Select the Branch Name in Customer Details');
        return;
      }

      if (data.customerDetails.customer === '') {
        toastr.warning('Enter the Customer Name');
        return;
      }
    }

    _processing('btnUpdate', 'Updating');

    axios.patch(`${currentUrl}/${data.invoiceNo}`, data).then(response => {
      Swal.fire('Success', response.data, 'success');
    }).catch(err => {
      console.log(err);
      Swal.fire('Error', 'An Error Occured while Updating the Data', 'error');
    }).finally(() => {
      _processed('btnUpdate', 'Update');
    });
  } 
  // function deleteInvoiceDetails() {
  //     const invoiceNo = $('#ddlInvoiceNo').val();
  //     if (invoiceNo === '') {
  //         toastr.info('Select the Invoice No to Delete');
  //     }
  //     else {
  //         deleteConfirmation('Invoice Details')
  //             .then(swal => {
  //                 if (swal.isConfirmed) {
  //                     _processing('btnDelete', 'Deleting');
  //                     axios.delete(`${currentUrl}/${invoiceNo}`)
  //                         .then(response => {
  //                             clear();
  //                             Swal.fire('Success', response.data, 'success');
  //                         })
  //                         .then(() => { _processed('btnDelete', 'Delete'); });
  //                 }
  //             });
  //     }
  // }


  function clear() {
    $('.form-control').val('');
    $('#ddlPaymentType').val('CASH');
    $('#txtInvoiceDate').datepicker('setDate', new Date());
    $('#btnSave').prop('disabled', false);
    $('#btnUpdate,#btnDelete,#btnPrint,#btnDownload').prop('disabled', true);
    $('#txtInitialAmount').prop('readonly', false);
    $('#divInvoiceNo,#txtFileNo').hide();
    $('#divFileNo').show();
    $('.number').val(0);
    $('#ddlBankId,#ddlEngineer').val('0');
    $('#ddlGSTPercentage').val('18');
    $('#tblDescription tbody').empty();
    $('#ddlDescription').prop('selectedIndex', 0);
    $('#ddlBranch').clearSelect();
    $('#chkWithFile').bootstrapToggle('enable').bootstrapToggle('on');
    getFileNos();
  }

  function getFileNos() {
    axios.get(`${currentUrl}/file-nos`).then(d => {
      const options = [];
      $.each(d.data, (index, value) => {
        options.push(`<option value="${value.uuid}">${value.id}</option>`);
      });
      $('#ddlFileNo').populateSelect(options);
    });
  }

  function getInvoiceNos() {
    axios.get(`${currentUrl}/invoice-nos`).then(d => {
      const options = [];
      $.each(d.data, (index, value) => {
        options.push(`<option value="${value.uuid}">${value.id}</option>`);
      });
      $('#ddlInvoiceNo').populateSelect(options);
    });
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
})();

/******/ })()
;