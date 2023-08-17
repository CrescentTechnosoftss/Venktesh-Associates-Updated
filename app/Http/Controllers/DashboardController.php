<?php

namespace App\Http\Controllers;

use App\Models\CustomerFile;
use App\Models\Invoice;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $files = CustomerFile::whereDate('created_at', '=', today())->count('id');
        $invoices = Invoice::whereDate('created_at', '=', today())->count('id');
        $pageName='Dashboard';

        return view('dashboard', compact('invoices', 'files','pageName'));
    }
}
