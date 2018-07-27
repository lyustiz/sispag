<?php

namespace App\Http\Controllers\Reportes;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DataReporteController extends Controller
{
    private $schema = 'pagos';
    private $query  = null;
    
    public function camposTabla($tabla)
    {
        /*$users = DB::table('information_schema.columns')
                     ->select(DB::raw('count(*) as user_count, status'))
                     ->where('status', '<>', 1)
                     ->groupBy('status')
                     ->get();


                     DB::table('users')
                     ->whereIn('id', function($query)
                     {
                         $query->select(DB::raw(1))
                               ->from('pg_catalog.pg_class')
                               ->where('relname', '=' 'users.id');
                     })
                     ->get();*/

        $results = \DB::select( \DB::raw(
            "SELECT cols.column_name AS nb_columna, 
                    udt_name 		 AS co_tipo,
                    COALESCE(
                        (
                            SELECT distinct pg_catalog.col_description(oid,cols.ordinal_position::int) 
                            FROM pg_catalog.pg_class c 
                            WHERE c.relname = cols.table_name
                        ),
                        cols.column_name
                    ) AS tx_comentario
            FROM information_schema.columns cols
            WHERE cols.table_name   = '$tabla'
            AND table_schema        = '$this->schema'
            ORDER BY ordinal_position"
        ) 
        );
//                            

        return $results;
       
                            /*
                SELECT  cols.column_name AS nb_columna, 
                        udt_name 		 AS co_tipo,
                        COALESCE(
                            (
                                SELECT distinct pg_catalog.col_description(oid,cols.ordinal_position::int) 
                                FROM pg_catalog.pg_class c 
                            WHERE c.relname = cols.table_name
                            ),
                            cols.column_name
                        ) AS tx_comentario
                FROM information_schema.columns cols
               WHERE cols.table_name = '$nb_tabla'
                 AND table_schema    = '$this->schema'
            ORDER BY ordinal_position";

        */


    }

    function get_reporte( 	$tabla 		, 
                            $campos     ,
                            $where 		= [], 
                            $between 	= [], 
                            $order_by 	= [], 
                            $group_by	= []
						   )
	{
        $this->query = \DB::select($campos)->distinct();
	
		foreach($where as $campo => $valores)
		{
			if( is_array($valores) )
			{
                $this->query->whereIn($campo, $valores);

			}else{
				
                $this->query->where($campo, $valores);

			}
		}	

		foreach($between as $campo => $valores)
		{
			
			if( ( $valores['desde'] != '' ) and ( $valores['hasta'] != '' ) )
			{
               
               // $this->db->where("TO_DATE(".$campo.", 'DD/MM/YYYY') BETWEEN '".$valores['desde']."' AND '".$valores['hasta']."'");
                
                $this->query->whereBetween("TO_DATE($campo, 'DD/MM/YYYY')", [ $valores['desde'], $valores['hasta'] ]);
                

			}else if(($valores['desde']!='') and ($valores['hasta']=='' )){
				
				$this->query->where("TO_DATE($campo, 'DD/MM/YYYY')",  $valores['desde']);
				
			}
 			
		}			

		foreach($order_by as $campo => $tipo)
		{
            $this->query->orderBy($campo, $tipo);
		}
		
		if( count($group_by) > 0 )	
		{
            $this->query->groupBy($group_by);
			
		}
		
		try {
            
            dd($this->query->toSql());

			
		} catch (Exception $e) {
			
			//$this->db->get_compiled_select("$this->schema.$tabla");
			$resultado = array("error en la consulta",  $e->getMessage());
		
		}
		
		return($resultado);
		
	}
}
