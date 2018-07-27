<?php

namespace App\Http\Controllers\Reportes;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Reportes\ReporteModel;
use \App\Http\Controllers\Reportes\ExcelReportClass ;

class ReporteController extends Controller
{
    public  $schema       = 'pagos';
	public  $modulo       = 'pagos';
	public  $tabla        = 'banco';
	public  $remId        = [];
    public  $addId        = [];
    protected $dataReport = null;
    
    /*-----------------------*/
	/*Constructor de la clase*/
	function __construct(ReporteModel $reporteModel){
		
        $this->dataReport = $reporteModel;

	}//Fin del contructor de la clase
	/*-----------------------------*/
	
	
    public function showReporte($tabla){

        $this->tabla =  $tabla;
		
		$this->dataReport->schema = $this->schema;
		
		$data = $this->setFormInputs();

        return $data;
		
	}
	
	
	public function setFormInputs(){
		
		$formInputs 	       = [];
		
        $tipoCampos            = $this->getTipoCampos();
        				
        $formInputs['campos']  = $tipoCampos['campos'];
        
        $formInputs['tabla']   = $this->tabla;
        
		$formInputs['filtros'] = $this->getFiltrosTabla($tipoCampos['filtros']);
		
        $formInputs['dateset'] = $tipoCampos['dateset'];

        return $formInputs;

	}

	public function getTipoCampos()
	{
		
		$data	 = $this->dataReport->camposTabla( $this->tabla );

		$addId   = $this->addId;
		
		$remId   = $this->remId;
				
		$campos  = [];
		
		$filtros = [];
		
		$dateSet = [];
		
		foreach($data as $row)
		{
            
            $prefijo  = substr( $row->nb_columna, 0 , 2 );  // tx_campo -> tx
			
			$columna  = $row->nb_columna;
			
			$etiqueta = $row->tx_comentario;
			
			switch(true){
			
				case ( $prefijo != 'id' ) or ( in_array($columna, $addId) ):   //nombre campo
					
					if($prefijo != 'fe')
					{ 
						$campos []  = ['nombre' => $etiqueta, 'valor' => "$columna|$etiqueta"];
					} 
					else
					{
                        $campos []  = ['nombre' => $etiqueta, 'valor' => "$columna|$etiqueta"];
                        
						$dateSet[]  = ['nombre' => $etiqueta, 'valor' => "$columna|$etiqueta"];
					}
					  
					break;

				case ( $prefijo == 'id' ) and ( !in_array($columna, $remId) ): //filtros(id)
					
					$filtros[] = ['nombre' => $etiqueta, 'valor' => $columna];           	
					
					break;

				break;
				
			}; 

		}
		
		return  [
                    'campos'   => $campos,
					'filtros'  => $filtros,
                    'dateset'  => $dateSet
                ];
	}
	
	public function getFiltrosTabla($filtros)
	{

		foreach($filtros as $filtro )
		{

			$filtroId  = $filtro['valor'];
			
			$etiqueta  = ucwords( strtolower( $filtro['nombre'] ) );
						
			$campoId   = $filtroId;
			
			$campo     = str_replace( 'id_' , 'nb_', $filtroId );  
						
            $campos    = [ $campoId,  $campo ]; 
			
            $data      =  $this->dataReport->getReporte($this->tabla, $campos);

            $items 	   = [];
            
			if( count($data) > 0)
			{
				foreach( $data as $row)
				{
                    $row = (array) $row;

                    if( (array) $row[$campo] != "" )
					{
						$items[] = ['nombre' => $row[$campo], 'valor' => $row[$campoId] ];

					}
				}
				
			}else{
				
				$items[] = ['nombre' => 'Sin datos', 'valor' => '0' ] ;
				
			}
			
			$inputs[] =	array(	
                                'campoid' 	=> $campoId,
								'etiqueta' 	=> $etiqueta,
								'items' 	=> $items,
							);
        }
		
		return $inputs;
	}

	public function getReporte(Request $request)
	{
		$validate = request()->validate([

            'campos'        	=> 'required',
		],
		[
			'campos.required'   => 'Seleccione almenos un campo de la tabla'
		]);

		$data = $this->getDataReporte($request->all());
		
		return $data;
	
	}
	
	public function get_reporte_excel($data_post)
	{
		$this->CI->M_reporteador->schema = $this->schema;
		
		$data = $this->get_data_reporte($data_post);

		$url  = $this->get_table_Excel($data['nb_campos'], $data['data']);
		
		echo json_encode($url);
	
	}
	
	public function getDataReporte($request)
	{
		$tabla  	  = $request['tabla'];
		$headers	  = [];
		$campos       = [];
		$filtros   	  = []; 
	 	$between   	  = []; 
		$order_by 	  = []; 
		$group_by 	  = [];
		 
		//check Filtros
		foreach( $request['filtros'] as $filtro )
		{
			if( $filtro[ key( $filtro ) ]  != null  )
			{
				$filtros[ key( $filtro) ] = $filtro[ key( $filtro ) ];
			}

		}
		//check Campos
		foreach( $request['campos'] as $data )
		{
			$data = explode( '|', $data);

			$campos []  = $data[0];
			$headers[]  = ['text'=> $data[1], 'value' =>  $data[0] ];


		}

		$data = $this->dataReport->getReporte($tabla, $campos, $filtros, $between, $order_by, $group_by);
		
		return  ['data' => $data, 'headers' => $headers];
		
	}

	public function getReporteExcel($request)
	{
		dd($request);
		$tabla  	  = $request['tabla'];
		$headers	  = [];
		$campos       = [];
		$filtros   	  = []; 
	 	$between   	  = []; 
		$order_by 	  = []; 
		$group_by 	  = [];
		 
		//check Filtros
		foreach( $request['filtros'] as $filtro )
		{
			if( $filtro[ key( $filtro ) ]  != null  )
			{
				$filtros[ key( $filtro) ] = $filtro[ key( $filtro ) ];
			}

		}
		//check Campos
		foreach( $request['campos'] as $data )
		{
			$data = explode( '|', $data);

			$campos []  = $data[0];
			$headers[]  = ['text'=> $data[1], 'value' =>  $data[0] ];


		}
		dd($request);
		$data = $this->dataReport->getReporte($tabla, $campos, $filtros, $between, $order_by, $group_by);
		
		$repoteExcel = new ExcelReportClass($data);

		return \Excel::download($repoteExcel, 'reporte.xlsx');
	
	}
	
	
	
	
}
