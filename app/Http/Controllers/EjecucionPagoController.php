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
                                    ->orderBy('id_etapa_envio');
        
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
        $id_etapa_envio = request()->validate([ 'id_etapa_envio'=> 'required']);
       
        foreach ($request->id_etapa_envio as $key => $etapa) 
        {
            $nombreEtapa = $this->nombreEtapa($etapa);

            $validate = request()->validate(
                [  
                    "id_pago"                    => 'required',
                    "$nombreEtapa.id_banco"      => 'required',
                    "$nombreEtapa.fe_envio_inst" => 'required',
                    "$nombreEtapa.id_etapa_envio"=> 'required',
                    "id_usuario"                 => 'required',
                    "$nombreEtapa.id_status"     => 'required',
                ]
            );

            $data = $request->all();
               
            $ejecucion[] = EjecucionPago::create(
                [
                    'id_pago'           => $data['id_pago'],
                    'id_banco'          => $data[$nombreEtapa]['id_banco'],
                    'fe_envio_inst'     => $data[$nombreEtapa]['fe_envio_inst'],
                    'id_etapa_envio'    => $data[$nombreEtapa]['id_etapa_envio'],
                    'tx_observaciones'  => $data[$nombreEtapa]['tx_observaciones'],
                    'id_usuario'        => $data['id_usuario'],
                    'id_status'         => $data[$nombreEtapa]['id_status'],  
                ] 
            );
        }

        return (['msj'=>'Registro Agregado Correctamente ', 'ejecucion' => $ejecucion]);
    }

    public function nombreEtapa($id_etapa)
    {
        $nombreEtapa = NULL;

        switch ($id_etapa) {
            case 1:
                $nombreEtapa = 'corresponsal';
                break;
            case 2: 
                $nombreEtapa = 'intermediario';
                break;
            case 3:
                $nombreEtapa = 'beneficiario';
                break;
        }

        return $nombreEtapa;
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
