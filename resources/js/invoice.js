import 'bootstrap4-toggle';
(function () {
    "use strict";
    $(function () {
        $('#liInvoice a').addClass('active');
        $('#txtInvoiceDate,#dpReportDate').datepicker();
        $('#txtInvoiceDate').datepicker('setDate', new Date);

        $('#btnUpdate,#btnDelete,#btnPrint,#btnDownload').prop('disabled', true);
        $('#divInvoiceNo,#txtFileNo,#btnDownload,#btnShowCustomer').hide();
        $('#chkWithFile').bootstrapToggle({
            on: 'Yes',
            off: 'No',
        });
        $('#ddlFileNo,#ddlInvoiceNo').select2();

        $('#ddlBank').on('change', () => { getBranches() });
        $('#ddlFileNo').on('change', getFileDetails);
        $('#ddlBankId').on('change', getBankDetails);
        $('#ddlInvoiceNo').on('change', getInvoiceDetails);
        $('#btnAddDescription').on('click', addDescription);
        $('#btnSave').on('click', saveInvoice);
        $('#btnView').on('click', view);
        $('#btnPrint').on('click', printInvoice);
        $('#btnDownload').on('click', dowloadInvoice);
        $('#btnUpdate').on('click', updateInvoiceDetails);
        // $('#btnDelete').on('click', deleteInvoiceDetails);
        $('#btnClear').on('click', clear);
        $('#txtBillAmount').on('input', changeTotalAmount);
        // Add an event listener to the checkbox
        $('#chkIGST').on('change', function() {
            if (this.checked) {
            calculateGST();
            } else {
            // If the checkbox is unchecked, reset the GST amount and total amount
            // $('#txtIGSTAmount').val(0);
            // $('#txtTotalAmount, #txtBalanceAmount').val($('#txtBillAmount').val());
            }
        });
        $('#ddlGSTPercentage').on('change', changeTotalAmount);
        $('#txtInitialAmount').on('input', changePayingAmt);

        // $(document).ready(function() {
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
            
        // });
        
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
        

        // $('#txtGstNo').on('input', function() {
        //     var gstNums = $(this).val();
        //     if (gstNums.startsWith('30')) {
        //         $('#chkIGST').prop('checked', true);
        //     } else {
        //         $('#chkIGST').prop('checked', false);
        //     }
        // });

        $('input[type="number"]').on('focus', function () {
            const amount = parseFloat($(this).val()); console.log($(this).prop('disabled'));
            if ($(this).prop('readonly') === false && (isNaN(amount) || amount === 0)) {
                $(this).val(null);
            }
        });

        $('#chkWithFile').on('change', function () {
            if ($(this).prop('checked')) {
                $('#btnShowCustomer').hide();
                $('.file').show();
            }
            else {
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
            axios.get(`${currentUrl}/branches/${bank}`)
                .then(response => {
                    const options = [];
                    $.each(response.data.branches, (index, value) => {
                        options.push(`<option value="${value}">${value}</option>`);
                    });
                    $('#ddlBranch').populateSelect(options);
                    if (currentBranch !== null) {
                        $('#ddlBranch').val(currentBranch);
                    }
                });
        }
        else {
            $('#ddlBranch').clearSelect();
        }
    }

    function getFileDetails() {
        const uuid = $('#ddlFileNo').val();

        if (uuid !== '') {
            axios.get(`${currentUrl}/file-details/${uuid}`)
                .then(d => {
                    $('#hidFileNo').val(d.data.fileNo);
                    $('#txtCustomerName').val(d.data.customer);
                    $('#txtPurchaserName').val(d.data.purchaser);
                    $('#txtEngineerName').val(d.data.engineer);
                    $('#txtReferrer').val(d.data.referrer);
                    $('#txtBankName').val(d.data.bank);
                    $('#txtBranchName').val(d.data.branch);
                    $('#txtBillAmount').val(d.data.billAmount);
                    $('#txtInitialAmount,#txtPaidAmount').val('0');

                    const billAmount = parseFloat(d.data.billAmount);
                    const gstPercentage = parseInt($('#ddlGSTPercentage').val());

                    const gstAmount = (billAmount / 100) * gstPercentage;
                    $('#txtGSTAmount').val(gstAmount);
                    $('#txtTotalAmount,#txtBalanceAmount').val(billAmount + gstAmount);

                });
        }
    }

    function getBankDetails() {
        const bankId = $('#ddlBankId').val();
        if (bankId !== '0') {
            axios.get(`${currentUrl}/bank-details/${bankId}`)
                .then(d => {
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
        if (description === '')
            toastr.info('Select the Description to Add');
        else {
            let isExists = false;
            $('#tblDescription tbody tr').each(function () {
                if ($(this).children('td:eq(0)').text() === description) {
                    isExists = true;
                    return false;
                }
            });

            if (isExists)
                toastr.info(description + ' is already Added');
            else {
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
        })
        $('#tblDescription tbody').append(descriptions.join(''));
    }

    function changeTotalAmount() {
        const billAmount = Number($('#txtBillAmount').val());
        const gstPercentage = parseInt($('#ddlGSTPercentage').val());

        const gstAmount = (billAmount / 100) * gstPercentage;
        // const gstAmount = Math.round(billAmount / 100 * gstPercentage, 2);


        $('#txtGSTAmount').val(gstAmount);
        $('#txtTotalAmount,#txtBalanceAmount').val(billAmount + gstAmount);
    }

    function calculateGST() {
        const billAmount = Number($('#txtBillAmount').val());
        const gstPercentage = 18; // 18% GST
        
        const gstAmount = billAmount / 100 * gstPercentage;
        // $('#txtIGSTAmount').val(gstAmount);
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
            engineer: $('#ddlEngineer').val(),
            apartment: $('#txtApartmentName').val(),
            status: $('#txtStatus').val(),
            totalValue: $('#txtTotalValue').val(),
            deliveredTo: $('#txtDeliveredTo').val(),
            reportDate: ($('#dpReportDate').datepicker('getDate')) !== null
                ? formatDate($('#dpReportDate').datepicker('getDate'))
                : null
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
            GstNo: $('#ddlPaymentType').val(),
            bank: $('#ddlBankId').val(),
            hasFile: $('#chkWithFile').prop('checked'),
            customerDetails: getCustomerDetailsFromModal()
        };

        //Validation for Invoice without file
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
        //Validation for Invoice with file
        else if ($('#ddlFileNo').val() === '') {
            toastr.warning('Select the File No to Save');
            return
        }

        if (data.initialAmount > data.totalAmount) {
            toastr.warning('Paying Amount is greater than Bill Amount');
        }
        else if (descriptions.length === 0) {
            toastr.warning('No Descriptions were Added');
        }
        else {
            _processing('btnSave', 'Saving');
            axios.post(`${currentUrl}`, data)
                .then(response => {
                    clear();
                    Swal.fire({
                        icon: 'success',
                        title: `${response.data.message}. Invoice No is ${response.data.invoiceNo}`,
                        text: 'Do you want to Print Invoice ?',
                        showConfirmButton: true,
                        showDenyButton: true,
                        confirmButtonText: 'Yes',
                    }).then(swalResult => {
                        if (swalResult.isConfirmed) {
                            printInvoice(response.data.uuid);
                        }
                    });
                })
                .finally(() => { _processed('btnSave', 'Save'); });
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
            axios.get(`${currentUrl}/${invoiceNo}`)
                .then(response => {
                    const branch = response.data.customerDetails.branch;
                    if (branch !== null && $(`#ddlBranch option[value="${branch}"]`).length === 0) {

                    }

                    $('#txtFileNo').val(response.data.fileNo);
                    $('#txtInvoiceDate').datepicker('setDate', moment(response.data.invoiceDate).toDate());
                    $('#txtCustomerName').val(response.data.customerName);
                    $('#txtPurchaserName').val(response.data.purchaserName);
                    $('#txtEngineerName').val(response.data.engineerName);
                    $('#txtReferrer').val(response.data.referrer);
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
                    // $('#chkIGST').val(response.data.IGST);
                    $('#chkIGST').prop('checked', response.data.IGST);
                    $('#ddlBankId').val(response.data.bank);
                    $('#txtUserBranch').val(response.data.branch ?? '');
                    $('#txtAccountName').val(response.data.accountName ?? '');
                    $('#txtAccountNo').val(response.data.accountNo ?? '');
                    $('#txtIfscCode').val(response.data.ifscCode ?? '');
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
                    }
                    else {
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
        }
        else {
            printJS(`${printUrl}/${invoiceNo}`);
        }
    }

    function dowloadInvoice(defaultValue = '') {
        const invoiceNo = typeof defaultValue === 'string' ? defaultValue : $('#ddlInvoiceNo').val();

        if (invoiceNo === '') {
            toastr.info('Select the Invoice No to Download');
        }
        else {
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
        axios.patch(`${currentUrl}/${data.invoiceNo}`, data)
            .then(response => {
                Swal.fire('Success', response.data, 'success');
            })
            .catch((err) => {
                console.log(err);
                Swal.fire('Error', 'An Error Occured while Updating the Data', 'error');
            })
            .finally(() => { _processed('btnUpdate', 'Update'); });
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
        $('#txtInvoiceDate').datepicker('setDate', new Date);
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
        axios.get(`${currentUrl}/file-nos`)
            .then(d => {
                const options = [];
                $.each(d.data, (index, value) => {
                    options.push(`<option value="${value.uuid}">${value.id}</option>`);
                });
                $('#ddlFileNo').populateSelect(options);
            });
    }

    function getInvoiceNos() {
        axios.get(`${currentUrl}/invoice-nos`)
            .then(d => {
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
}());