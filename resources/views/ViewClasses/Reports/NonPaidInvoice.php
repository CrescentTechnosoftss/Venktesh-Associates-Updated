<?php

namespace ViewClasses\Reports;

use App\Libraries\Fpdf\Scripts\McTable;

class NonPaidInvoice extends McTable
{
    public function header()
    {
        $this->setFont('opensans', 'B', 12);
    }
}
