<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Models\Modulo;
use \App\Models\UsuarioRol;
use \Illuminate\Support\Facades\Auth;

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
     * Mostrar Pagina de Inicio.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->sessionMenu();

        return view('home', compact('menu'));
    }

    public function sessionMenu()
    {
        $usuario = Auth::user();

        $roles = UsuarioRol::with('rol.permiso.menu')->select('id_rol')
                    ->where('id_usuario_r', $usuario->id_usuario)
                    ->first();

        $rol      = $roles->rol->id_rol;
        $permisos = $roles->rol->permiso;
        $menus    = [];
        $modulos  = [];

        foreach ($permisos as $key => $permiso) 
        {
            $menus  [$permiso->menu->id_menu]   = $permiso->menu->id_menu;
            $modulos[$permiso->menu->id_modulo] = $permiso->menu->id_modulo;
        }
    
        $menu  = Modulo::with([
                    'menu'         => function($query) use ( $menus){

                        $query->whereIn('id_menu', $menus)
                              ->where('id_menu_base', '0');
 
                    }, 
                    'menu.permiso' => function($query) use ( $menus, $rol ){

                        $query->whereIn('id_menu', $menus)
                                ->where('id_rol' , $rol);
 
                    },
                    'menu.subMenu' => function($query) use ( $menus ){

                        $query->whereIn('id_menu', $menus)
                              ->where('id_menu_base', '<>' ,'0');
 
                    },
                    'menu.subMenu.permiso' => function($query) use ( $menus, $rol ){

                        $query->whereIn('id_menu', $menus)
                                ->where('id_rol' , $rol);
 
                    } 
                ])
                ->whereIn('id_modulo', $modulos)
                ->get();

            session(['menu' => $menu]);
    }

    /**
     * Muestra Indicadores Totalizados
     *
     */
    public function totales()
    {
        
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
                                JOIN categoria cat ON cat.id_categoria = ins.id_categoria
                            GROUP BY (cat.nb_categoria)"
                            ));

        $procesos = \DB::select( \DB::raw(
                         "SELECT 'ingreso' AS tipo,
                                 COUNT(ing.id_ingreso) AS cantidad, 
                                 DATE(ing.fe_ingreso) AS fecha
                            FROM ingreso ing
                        GROUP BY (ing.fe_ingreso)
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
        
        return compact('cuenta', 'ingreso','instruccion','procesos');
    }

    public function getAyuda() 
    { 
        $file ='./manual/manual_de_usuario.pdf'; 
        return response()->download($file); 
    } 

}
