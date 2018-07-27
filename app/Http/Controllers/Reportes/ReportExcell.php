<?php

namespace App\Http\Controllers\Reportes;

use Illuminate\Http\Request;
use \App\Http\Controllers\Controller;
use \App\Http\Controllers\Reportes\ExcelReportClass ;



class ReportExcell extends Controller
{
    public function prueba(ExcelReportClass $export) 
    {
        return \Excel::download($export, 'invoices.xlsx');
    }
}
