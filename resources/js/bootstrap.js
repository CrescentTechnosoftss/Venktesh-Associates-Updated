window._ = require('lodash');

/**
 * We'll load the axios HTTP library which allows us to easily issue requests
 * to our Laravel back-end. This library automatically handles sending the
 * CSRF token as a header based on the value of the "XSRF" token cookie.
 */

window.axios = require('axios');

window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
window.$ = window.jQuery = require('jquery');
require('bootstrap');
require('select2');
require('bootstrap-colorpicker');
window.Swal = require('sweetalert2');
window.toastr = require('toastr');
window.moment = require('moment');
import 'jquery-ui/ui/widgets/autocomplete.js';
import 'jquery-ui/ui/widgets/tabs.js';
import 'jquery-ui/ui/widgets/datepicker';
import 'print-js';
// import 'datatables.net-bs4';
import 'datatables.net-dt';
import 'datatables.net-buttons';
import 'datatables.net-buttons/js/buttons.print';
import 'moment-timezone';

(function ($) {
    $.fn.extend({
        populateSelect: function (options, defaultValue = null) {
            this.find('option:not(:first)').remove();
            this.append(options.join(''));
            this.val(defaultValue ?? this.children('option:eq(0)').val());
            return this;
        },
        clearSelect: function () {
            this.find('option:not(:first)').remove();
            return this;
        }
    });
}($));

window.deleteConfirmation = function (titleContent = 'Data') {
    return Swal.fire({
        title: 'Confirmation',
        html: `<h5>Do you want to Delete the ${titleContent}?</h5>`,
        showDenyButton: true,
        confirmButtonText: `Delete`,
        denyButtonText: `Cancel`,
        confirmButtonColor: '#d14529',
        denyButtonColor: '#2778c4',
        icon: 'question'
    });
}

toastr.options = {
    "debug": false,
    "positionClass": "toast-top-right",
    "onclick": null,
    "fadeIn": 300,
    "fadeOut": 1000,
    "timeOut": 5000,
    "extendedTimeOut": 1000
};
$.fn.select2.defaults.set("theme", "bootstrap");
$.datepicker.setDefaults({
    maxDate: new Date,
    changeMonth: true,
    changeYear: true,
    dateFormat: 'dd-mm-yy'
});

/**
 * 
 * @param {Date} date 
 * @returns {string}
 */
window.formatDate = function (date) {
    return moment(date).format('yyyy-MM-DD');
}

window.formatDateForBrowser = function (date) {
    return moment(date).format('DD-MM-yyyy');
}

/**
 * 
 * @param {number} amount 
 * @returns {string}
 */
window.formatCurrency = function (amount) {
    const num = parseFloat(amount);
    if (isNaN(num))
        return '';
    return Intl.NumberFormat('en-IN', { style: 'currency', currency: 'INR', maximumFractionDigits: 2 }).format(amount);
}

$(function () {

    const color = localStorage.getItem('associatesBackground') ?? 'rgb(248, 255, 219)';
    $('.content-wrapper,.bg-all').css('background-color', color);
    $('#bgColorPicker').val(color);
    $('#bgColorPicker').colorpicker();
    $("[data-tooltip='tooltip']").tooltip();

    $('.dropleft').on('hide.bs.dropdown', function (e) {
        if (e.clickEvent && e.clickEvent.target.className != "nav-link") {
            e.preventDefault();
        }
    });

    $('#bgColorPicker').on('colorpickerChange', function () {
        localStorage.setItem('associatesBackground', $(this).val());
        $('.content-wrapper,.bg-all').css('background-color', $(this).val());
    });

    $("#btnHeaderSearch").on('click', function () {
        const search = $('#txtHeaderSearch').val();
        if (search !== '') {
            axios.get(`${baseUrl}/search/${search}`)
                .then(response => {
                    if (response.data.files.length === 0) {
                        toastr.info('No Files found!!!');
                    }
                    else {
                        $('#txtHeaderSearch').val('');
                        const rows = [];
                        $.each(response.data.files, (index, value) => {
                            rows.push(`<tr>
                            <td>${value.fileNo}</td>
                            <td>${value.invoiceNo}</td>
                            <td>${value.customerName}</td>
                            <td>${value.contactNo}</td>
                            </tr>`);
                        });
                        $('#tblHeaderSearchFiles tbody').html(rows.join(''));
                        $('#modalHeaderSearch').modal('show');
                    }
                });
        }
    });

});

/**
 * Echo exposes an expressive API for subscribing to channels and listening
 * for events that are broadcast by Laravel. Echo and event broadcasting
 * allows your team to easily build robust real-time web applications.
 */

// import Echo from 'laravel-echo';

// window.Pusher = require('pusher-js');

// window.Echo = new Echo({
//     broadcaster: 'pusher',
//     key: process.env.MIX_PUSHER_APP_KEY,
//     cluster: process.env.MIX_PUSHER_APP_CLUSTER,
//     forceTLS: true
// });
