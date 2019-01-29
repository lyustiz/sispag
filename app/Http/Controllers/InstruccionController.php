<?php

namespace App\Http\Controllers;

use App\Models\Instruccion;
use Illuminate\Http\Request;

class InstruccionController extends Controller
{
    /**
     * Listar Instruccion     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $instrucciones = Instruccion::with(['esquema','solicitud.ente', 'solicitud.categoria', 'pago', 'moneda', 'status'])->get();
        
        return $instrucciones;
    }


    public function instruccionPagos()
    {
        $instrucciones = Instruccion::with(['esquema','solicitud.ente', 'solicitud.categoria', 'pago.ejecucionPago', 'moneda', 'status' ])->get();
        
        return $instrucciones;
    }

    /**
     * Almacenar Instruccion
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validate = request()->validate([

            'id_solicitud'      => 'required',
            'id_esquema'        => 'required',
            'nu_esquema'        => 'required',
            'bo_ofi_cta_mte'    => 'required',
            'fe_instruccion'    => 'required',
            'mo_instruccion'    => 'required',
            'id_moneda'         => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',
        ]);
        
        $instruccion = Instruccion::create($request->all());

        return (['msj'=>'Registro Agregado Correctamente ', 'instruccion' =>$instruccion]);
        
    }

    /**
     * Retornar Instruccion especifico
     *
     * @bodyParam  \App\Models\Instruccion  $instruccion
     * @return \Illuminate\Http\Response
     */
    public function show(Instruccion $instruccion)
    {
        return $instruccion->load(['esquema','solicitud.ente', 'solicitud.categoria', 'pago.ejecucionPago','status' ]);
    }

    /**
     * Actualizar Instruccion
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\Instruccion  $instruccion
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Instruccion $instruccion)
    {
        $validate = request()->validate([

            'id_solicitud'      => 'required',
            'id_esquema'        => 'required',
            'nu_esquema'        => 'required',
            'bo_ofi_cta_mte'    => 'required',
            'fe_instruccion'    => 'required',
            'mo_instruccion'    => 'required',
            'id_moneda'         => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',
        ]);

        $instruccion = $instruccion->update($request->all());

        return ['msj'=>'Registro Actualizado Correctamente ', compact('instruccion')];
    }

    /**
     * Eliminar Instruccion
     *
     * @bodyParam  \App\Models\Instruccion  $instruccion
     * @return \Illuminate\Http\Response
     */
    public function destroy(Instruccion $instruccion)
    {
        $instruccion = $instruccion->delete();

        return ['msj' => 'Registro Eliminado', compact('instruccion')];
    }
}
