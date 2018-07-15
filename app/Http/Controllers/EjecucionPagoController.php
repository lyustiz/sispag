<?php

namespace App\Http\Controllers;

use App\models\EjecucionPago;
use Illuminate\Http\Request;

class EjecucionPagoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Ejecucion = EjecucionPago::with(['pago', 'banco', 'etapaEnvio','status'])
                                    ->get()
                                    ->orderBy('id_etapa_envio', 'asc');
        
        return $Ejecucion;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validate = request()->validate([  
                'id_banco',
                'fe_envio_inst',
                'id_etapa_envio',
                'id_usuario',
                'id_status',
                ]);
        
        $ejecucion = EjecucionPago::create($request->all());

        return (['msj'=>'Registro Agregado Correctamente ', 'ejecucion' => $ejecucion]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\models\EjecucionPago  $ejecucionPago
     * @return \Illuminate\Http\Response
     */
    public function show(EjecucionPago $ejecucionPago)
    {
        return $ejecucionPago->load(['pago', 'banco', 'etapaEnvio','status']);
    }

    public function ejecucionPagoPago($id_pago)
    {

        $ejecucion = EjecucionPago::with(['pago', 'banco', 'etapaEnvio', 'status'])
                    ->where('id_pago','=', $id_pago)
                    ->orderBy('id_etapa_envio', 'asc')
                    ->get();
        return $ejecucion;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\models\EjecucionPago  $ejecucionPago
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, EjecucionPago $ejecucionPago)
    {
        
        $validate = request()->validate([  
            'id_banco',
            'fe_envio_inst',
            'id_etapa_envio',
            'id_usuario',
            'id_status',
            ]);
            
        $ejecucion = $ejecucionPago->update($request->all());

        return ['msj'=>'Registro Actualizado Correctamente ', compact('ejecucion') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\models\EjecucionPago  $ejecucionPago
     * @return \Illuminate\Http\Response
     */
    public function destroy(EjecucionPago $ejecucionPago)
    {
        $ejecucionPago = $ejecucionPago->delete();

        return ['msj' => 'Ejecucion de Pago Eliminada'];
    }
}
