<?php

namespace App\Http\Controllers\Reportes;

use Maatwebsite\Excel\Concerns\FromCollection;

class ExcelReportClass implements FromCollection
{
    private $collection;
    
    public function __construct($collection)
    {
        $this->collection = $collection;
    }

    public function collection()
    {
        return  $this->collection;
    }
}
