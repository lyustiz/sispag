<?php

namespace App\Http\Controllers;

use App\Models\Ingreso;
use Illuminate\Http\Request;

class IngresoController extends Controller
{
    /**
     * Listar Ingreso     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ingresos = Ingreso::with(['tipoIngreso', 'ente', 'moneda', 'banco', 'status'])
                            ->orderby('fe_creado', 'desc')
                            ->get();
        
        return $ingresos;
    }


    public function ingresoTipoIngreso()
    {
        $ingresos = Ingreso::select(['tipoIngreso'])
                            ->groupBy('id_tipo_ingreso')
                            ->get();
        
        return $ingresos;
    }

    /**
     * Almacenar Ingreso
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validate = request()->validate([

            'id_tipo_ingreso'   => 'required',
            'id_ente'           => 'required',
            'id_moneda'         => 'required',
            'mo_ingreso'        => 'required',
            'fe_ingreso'        => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',
            'id_banco'          => 'required'

        ]);
        
        $ingreso = Ingreso::create($request->all());

        return (['msj'=>'Registro Agregado Correctamente ', 'ingreso' =>$ingreso]);
    }

    /**
     * Retornar Ingreso especifico
     *
     * @bodyParam  \App\Models\Ingreso  $ingreso
     * @return \Illuminate\Http\Response
     */
    public function show(Ingreso $ingreso)
    {
        return $ingreso->load(['tipoIngreso', 'ente', 'moneda', 'banco', 'status']);
    }

    /**
     * Actualizar Ingreso
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\Ingreso  $ingreso
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Ingreso $ingreso)
    {
        $validate = request()->validate([

            'id_tipo_ingreso'   => 'required',
            'id_ente'           => 'required',
            'id_moneda'         => 'required',
            'mo_ingreso'        => 'required',
            'fe_ingreso'        => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',
            'id_banco'          => 'required'

        ]);
                
        $ingreso = Ingreso::find($ingreso->id_ingreso)->update($request->all());

        return (['msj'=>'Registro Actualizado Correctamente ', 'ingreso' =>$ingreso]);
    }

    /**
     * Eliminar Ingreso
     *
     * @bodyParam  \App\Models\Ingreso  $ingreso
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ingreso $ingreso)
    {
        $ingreso = $ingreso->delete();

        return ['msj' => 'Ingreso Eliminado'];
    }
}
