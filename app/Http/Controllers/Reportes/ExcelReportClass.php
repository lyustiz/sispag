<?php

namespace App\Http\Controllers\Reportes;

use Maatwebsite\Excel\Concerns\FromCollection;
use \Illuminate\Support\Collection;

class ExcelReportClass implements FromCollection
{
    private $collection;
    
    public function __construct($dataArray)
    {
        
        $this->collection = collect(['taylor', 'abigail', null]);
    }

    public function collection()
    {
        return  $this->collection;
    }
}
