<?php

namespace App\Http\Controllers;

use App\Models\TipoIngreso;
use Illuminate\Http\Request;

class TipoIngresoController extends Controller
{
    /**
     * Listar Tipo Ingreso     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tipIngresos = TipoIngreso::with(['status'])->get();
        
        return $tipIngresos;
    }

    public function lista()
    {
        $tipIngresos = TipoIngreso::with(['status'])
                                    ->where('id_status',22)
                                    ->get();

        return $tipIngresos;
    }

    /**
     * Almacenar Tipo Ingreso
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validate = request()->validate([

            'nb_tipo_ingreso'   => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',

        ]);

        $tingreso = TipoIngreso::create($request->all());

        return [ 'msj' => 'Registro Agregado Correctamente', compact('tingreso') ];
    }

    /**
     * Retornar Tipo Ingreso especifico
     *
     * @bodyParam  \App\Models\TipoIngreso  $tipoIngreso
     * @return \Illuminate\Http\Response
     */
    public function show(TipoIngreso $tipoIngreso)
    {
        return $tipoIngreso;
    }


    /**
     * Actualizar Tipo Ingreso
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\TipoIngreso  $tipoIngreso
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TipoIngreso $tipoIngreso)
    {
        $validate = request()->validate([

            'nb_tipo_ingreso'   => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',

        ]);
        
        $tingreso = $tipoIngreso->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('tingreso')];
    }

    /**
     * Eliminar Tipo Ingreso
     *
     * @bodyParam  \App\Models\TipoIngreso  $tipoIngreso
     * @return \Illuminate\Http\Response
     */
    public function destroy(TipoIngreso $tipoIngreso)
    {
        $tingreso = $tipoIngreso->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('tingreso')];
    }
}
