<?php

namespace App\Http\Controllers;

use App\models\EjecucionPago;
use Illuminate\Http\Request;

class EjecucionPagoController extends Controller
{
    /**
     * Listar Ejecucion Pago     
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
     * Almacenar Ejecucion Pago
     *
     * @bodyParam  \Illuminate\Http\Request  $request
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
     * Retornar Ejecucion Pago especifico
     *
     * @bodyParam  \App\models\EjecucionPago  $ejecucionPago
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
     * Actualizar Ejecucion Pago
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\models\EjecucionPago  $ejecucionPago
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
      
        foreach ($request->id_etapa_envio as $key => $etapa) 
        {
            $nombreEtapa = $this->nombreEtapa($etapa);

            $validate = request()->validate(
                [  
                    "$nombreEtapa.id_pago"           => 'required',
                    "$nombreEtapa.id_banco"          => 'required',
                    "$nombreEtapa.fe_envio_inst"     => 'required',
                    "$nombreEtapa.id_etapa_envio"    => 'required',
                    "id_usuario"                     => 'required',
                    "$nombreEtapa.id_status"         => 'required',
                ]
            );

            $data = $request->all();

            if($data[$nombreEtapa]['id_ejecucion_pago'] != null)
            {
                $ejecucionPago = EjecucionPago::find($data[$nombreEtapa]['id_ejecucion_pago']);

                $ejecucion[] = $ejecucionPago->update(
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

            }else{

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
               
            


        }

        return (['msj'=>'Registro Editado Correctamente ', 'ejecucion' => $ejecucion]);
    }


        /**
     * Cancelar Ejecucion Pago
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\models\EjecucionPago  $ejecucionPago
     * @return \Illuminate\Http\Response
     */
    public function cancelarEjecucion(Request $request, EjecucionPago $ejecucionPago)
    {
        $validate = request()->validate(
            [  
                "id_ejecucion_pago" => 'required',
                "id_usuario"        => 'required',
                "id_status"         => 'required',
            ]
        );

        $ejecucionPago = $ejecucionPago->update(
            [
                'id_usuario'        => $request->id_usuario,
                'id_status'         => $request->id_status,  
            ] 
        );
    
        return (['msj'=>'Registro Editado Correctamente ', 'ejecucionPago' => $ejecucionPago]);
    }

    /**
     * Eliminar Ejecucion Pago
     *
     * @bodyParam  \App\models\EjecucionPago  $ejecucionPago
     * @return \Illuminate\Http\Response
     */
    public function destroy(EjecucionPago $ejecucionPago)
    {
        $ejecucionPago = $ejecucionPago->delete();

        return ['msj' => 'Ejecucion de Pago Eliminada'];
    }
}
