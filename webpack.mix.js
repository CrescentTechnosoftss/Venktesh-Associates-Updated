const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel applications. By default, we are compiling the CSS
 | file for the application as well as bundling up all the JS files.
 |
 */
mix.disableSuccessNotifications();
mix.js('resources/js/app.js', 'public/js')
    .js('resources/js/masters/bank-master.js', 'public/js/masters')
    .js('resources/js/masters/data-master.js', 'public/js/masters')
    .js('resources/js/masters/user-master.js', 'public/js/masters')
    .js('resources/js/masters/engineer-master.js', 'public/js/masters')
    .js('resources/js/masters/mail-master.js', 'public/js/masters')
    .js('resources/js/masters/delivery-boy-master.js', 'public/js/masters')
    .js('resources/js/customer-details.js', 'public/js')
    .js('resources/js/search-files.js', 'public/js')
    .js('resources/js/invoice.js', 'public/js')
    .js('resources/js/payment-receiving.js', 'public/js')
    .js('resources/js/reports/non-paid-invoice.js', 'public/js/reports')
    .js('resources/js/reports/paid-invoice.js', 'public/js/reports')
    .js('resources/js/reports/sales-report-by-invoice.js', 'public/js/reports')
    .js('resources/js/reports/sales-report-by-file.js', 'public/js/reports')
    .js('resources/js/reports/approval-pendings.js', 'public/js/reports')
    .sass('resources/scss/app.scss', 'public/css')
    .sass('resources/scss/login.scss', 'public/css')
    .sass('resources/scss/header.scss', 'public/css')
    .sass('resources/scss/invoice.scss', 'public/css')
    .sass('resources/scss/user-master.scss', 'public/css')
    .sass('resources/scss/reports/approval.scss', 'public/css/reports');

if (mix.inProduction()) {
    mix.version(
        [
            'public/js/app.js',
            'public/js/masters/bank-master.js',
            'public/js/masters/data-master.js',
            'public/js/masters/engineer-master.js',
            'public/js/masters/delivery-boy-master.js',
            'public/js/masters/mail-master.js',
            'public/js/masters/user-master.js',
            'public/js/customer-details.js',
            'public/js/search-files.js',
            'public/js/invoice.js',
            'public/js/payment-receiving.js',
            'public/js/reports/non-paid-invoice.js',
            'public/js/reports/paid-invoice.js',
            'public/js/reports/sales-report-by-invoice.js',
            'public/js/reports/sales-report-by-file.js',
            'public/js/reports/approval-pendings.js',
        ]
    );
}