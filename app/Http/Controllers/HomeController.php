<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('welcome');
    }

    public function totales()
    {
        
       /* $cuenta  = \App\Models\Cuenta::select('id_moneda', \DB::raw('sum(mo_disponible) as mo_disponible'))
                            ->groupBy('id_moneda')
                            ->pluck('mo_disponible','id_moneda')->all();

        $ingresos = \App\Models\Ingreso::select('id_tipo_ingreso', \DB::raw('sum(mo_ingreso) as mo_ingreso'))
                            ->groupBy('id_tipo_ingreso')
                            ->pluck('mo_ingreso','id_tipo_ingreso')->all();

        $Intruccion = \App\Models\Instruccion::select('id_moneda', \DB::raw('sum(mo_disponible) as mo_disponible'))
                            ->groupBy('id_moneda')
                            ->pluck('mo_disponible','id_moneda')->all();*/
        
        $cuenta = \DB::select( \DB::raw(
                            "SELECT mon.nb_moneda, SUM(cue.mo_total) AS mo_total  
                               FROM cuenta cue
                               JOIN moneda mon ON mon.id_moneda = cue.id_moneda
                           GROUP BY (mon.nb_moneda)"
                           ));
        
        $ingreso = \DB::select( \DB::raw(
                            "SELECT tin.nb_tipo_ingreso, SUM(ing.mo_ingreso) AS mo_ingreso  
                               FROM ingreso ing
                               JOIN tipo_ingreso tin ON tin.id_tipo_ingreso = ing.id_tipo_ingreso
                           GROUP BY (tin.nb_tipo_ingreso)"
                           ));   

        $instruccion = \DB::select( \DB::raw(
                            "SELECT cat.nb_categoria, SUM(ins.mo_instruccion) AS mo_instruccion  
                                FROM instruccion ins
                                JOIN solicitud sol ON sol.id_solicitud = ins.id_solicitud
                                JOIN categoria cat ON cat.id_categoria = sol.id_categoria
                            GROUP BY (cat.nb_categoria)"
                            ));
        $procesos = \DB::select( \DB::raw(
                         "SELECT 'ingreso' AS tipo,
                                 COUNT(ing.id_ingreso) AS cantidad, 
                                 DATE(ing.fe_ingreso) AS fecha
                            FROM ingreso ing
                        GROUP BY (ing.fe_ingreso)
                        UNION 
                          SELECT 'solicitud' AS tipo,
                                 COUNT(sol.id_solicitud) AS cantidad, 
                                 DATE(sol.fe_solicitud) AS fecha
                            FROM solicitud sol
                        GROUP BY (sol.fe_solicitud)
                        UNION
                          SELECT 'instruccion' AS tipo,
                                 COUNT(ins.id_instruccion) AS cantidad, 
                                 DATE(ins.fe_instruccion) AS fecha
                            FROM instruccion ins
                        GROUP BY (ins.fe_instruccion)
                        UNION
                          SELECT 'pago' AS tipo,
                                  COUNT(pag.id_pago) AS cantidad, 
                                  DATE(pag.fe_pago) AS fecha
                             FROM pago pag
                        GROUP BY (pag.fe_pago)"
                            ));
        
        return compact('cuenta','ingreso','instruccion','procesos');
    }






}
