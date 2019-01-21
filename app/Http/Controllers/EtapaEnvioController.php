<?php

namespace App\Http\Controllers;

use App\Models\EtapaEnvio;
use Illuminate\Http\Request;

class EtapaEnvioController extends Controller
{
    /**
     * Listar Etapa Envio     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $EtapaEnvio = EtapaEnvio::get();
        
        return $EtapaEnvio;
    }

    /**
     * Almacenar Etapa Envio
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Retornar Etapa Envio especifico
     *
     * @bodyParam  \App\Models\EtapaEnvio  $etapaEnvio
     * @return \Illuminate\Http\Response
     */
    public function show(EtapaEnvio $etapaEnvio)
    {
        //
    }

    /**
     * Actualizar Etapa Envio
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\EtapaEnvio  $etapaEnvio
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, EtapaEnvio $etapaEnvio)
    {
        //
    }

    /**
     * Eliminar Etapa Envio
     *
     * @bodyParam  \App\Models\EtapaEnvio  $etapaEnvio
     * @return \Illuminate\Http\Response
     */
    public function destroy(EtapaEnvio $etapaEnvio)
    {
        //
    }
}
