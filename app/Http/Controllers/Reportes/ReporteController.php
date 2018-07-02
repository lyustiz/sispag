<?php

namespace App\Http\Controllers\Reportes;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Reportes\ReporteModel;

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
						$campos []  = ['nombre' => $etiqueta, 'valor' => $columna];
					} 
					else
					{
                        $campos []  = ['nombre' => $etiqueta, 'valor' => $columna];
                        
						$dateSet[]  = ['nombre' => $etiqueta, 'valor' => $columna];
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

            'campos'          => 'required',
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
		
		//$this->tabla  = $request->tabla;

		dd($request['tabla']);
		$campos       = array();
		$encabezados  = array();
		$filtros   	  = array();
	 	$between   	  = array(); 
		$order_by 	  = array(); 
		$group_by 	  = array();
		
		foreach($post as $campo => $valor)
		{
			$prefijo = substr($campo, 0 , 2);
			
			switch(true){
			
			case ($prefijo == 'nb') or ($prefijo == 'fb'): //nombre campo
				
				$valor_tmp  = array();
				
				foreach($valor as $row)
				{
					$prefijo = substr($row, 0 , 2);
					
					if( ($prefijo == 'ad') ){
						
						$col_tmp  = explode('|',substr($row, 3));
						
						$this->col_ad[$col_tmp[0]]  = $col_tmp[1];
						
						if( count( $this->ad_data ) < 1 )
						{
							$this->ad_data = $this->get_ad_data();
						}
						
						$valor_tmp[] = substr($row, 3);
						
						continue;
					}
					
					$valor_tmp[] = $row;
				}
				
				//print_r($valor_tmp);
				
				$inf_campo = $valor_tmp;
				
				break;

			case ($prefijo == 'id'): //filtros
				
				$filtros[$campo] = $valor;
				
				break;
	
			case ($prefijo == 'fe'): //frango fechas

				$between[$campo] = $valor;
				
				break;
			
			}; 
		
		}
		
		foreach($inf_campo as $campo){
			
			$campo 	     = explode('|', $campo);
			
			$campos[]    =  $campo[0];
			
			$nb_campos[] =  $campo[1];
			
		}
		
		$data = $this->CI->M_reporteador->get_reporte($tabla, $campos, $filtros, $between, $order_by, $group_by);
		
		return array('data' 	 => $data, 
					 'nb_campos' => $nb_campos
					);
		
	}
	
	//obtener todas las cedulas y Nombres desde el Active Directory 
	public function get_ad_data()
	{
		$this->CI->load->model('intranet/m_autenticar');
		
		$data    = $this->CI->m_autenticar->get_nombresCedulas();
		
		$cedName = array();
		
		foreach($data as $row)
		{
			if(is_array($row))
			{
				
				$name    = $row['name'][0];
				
				$cedula  = (isset($row['employeenumber'][0])) ? $row['employeenumber'][0] :'0';
				
				$cedName[$cedula] = $name;
				
			}	
		}
		
		return $cedName;

	}

	public function get_table_Html($campos, $data)
	{
		$this->CI->load->library('table');
				
		$tmpl = array (	  'table_open'          => '<table class="table table-hover" id="tbl_reporte">',
						  'thead_open'          => '<thead class="thead-inverse">'
						);
						
		$this->CI->table->set_template( $tmpl );
		
		$this->CI->table->set_heading( $campos );
		
				
		foreach($data as $key => $row)
		{
			if(count( $this->ad_data ) > 0) //traducir campos al Active Directory
			{
				$cmps_ad = (array_intersect_key($this->col_ad, $row));

				foreach($cmps_ad as $key2 => $val)
				{
					
					$row[$key2] = (isset($this->ad_data[$row[$key2]])) ? $this->ad_data[$row[$key2]] : $row[$key2];
  				   //$data[$key][$key2] = (isset($this->ad_data[$data[$key][$key2]])) ? $this->ad_data[$data[$key][$key2]] : $data[$key][$key2];
					
				}
				
			}
			
			$this->CI->table->add_row($row);
			
		}
		
        $table = $this->CI->table->generate();
                            
        return $table;
		
	}
	
	
	public function get_table_Excel($campos, $data)
	{
		$this->CI->load->helper('url');
		
		$archivo  = 'reporte.xlsx';
		
		$FILEPATH = $_SERVER['DOCUMENT_ROOT'] .'/sistemas_pro/assets/modules/votaciones/files/'.$archivo;
		
		$URL 	  = base_url().'assets/modules/votaciones/files/'.$archivo;

		$tabla    = $data;

		$this->CI->load->library('excel');

		$objPHPExcel = new PHPExcel();
		
		$objWriter 	 = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
		
		$objPHPExcel->getProperties()
					->setCreator	("Tecnologia Corpovex")
					->setTitle		("Reporte Excell Autogenerado")
					->setSubject	("Reporte Excell Autogenerado Coprovex")
					->setDescription("Reporte Excell Autogenerado con la Libreria PHPExcel")
					->setKeywords	("office openxml php PHPExcel")
					->setCategory	("Reportes");
		
		$headArray = array(
							'font' => array(
								'bold' => true,
								'color' => array("rgb" => "FFFFFF")
							),
							'alignment' => array(
								'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
							),
							'fill' => array(
								'type' => PHPExcel_Style_Fill::FILL_SOLID,
								'color' => array("rgb" => "000000"),
							)
						);
		
		$encabezado = true;
		
		$letColEnc	= 'A';
		
		foreach($campos as $columna => $campo)
		{
			$linea      = 1;
			
			$nroColumna = $columna;
			
			$objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($nroColumna, $linea, $campo);
				
			$objPHPExcel->getActiveSheet()->getStyle($letColEnc.(1))->applyFromArray($headArray);
				
			$objPHPExcel->getActiveSheet()->getColumnDimension($letColEnc)->setAutoSize(true);
			
			$letColEnc++;
			
		}
		$letColEnc--;
		
		foreach($tabla as $nroLinea => $lineas) {
			
			$nroColumna = 0;
			$letColumna	= 'A';
			
			foreach($lineas as $columna => $celda) {
				
				if(!$encabezado)
				{
					$linea = $nroLinea+1;
					
					$objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($nroColumna, $linea, $columna);
					
					$objPHPExcel->getActiveSheet()->getStyle($letColumna.(1))->applyFromArray($headArray);
					
					$objPHPExcel->getActiveSheet()->getColumnDimension($letColumna)->setAutoSize(true);
						
				}
				$nroLin = $nroLinea+2;
				
				$objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($nroColumna, $nroLin, $celda);

				$nroColumna++;
				$letColumna++;
				
			}
			
			$encabezado = true;
		}
        $objPHPExcel->getActiveSheet()->setAutoFilter('A1:'.$letColEnc.$nroLin);
		
		$objWriter->save($FILEPATH);
		
		$objPHPExcel->disconnectWorksheets();
		
		unset($objPHPExcel);

		return array('url'=> $URL);
		
	}
	
}
