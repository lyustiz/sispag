<?php

namespace App\Http\Controllers;

use App\Models\EtapaEnvio;
use Illuminate\Http\Request;

class EtapaEnvioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $EtapaEnvio = EtapaEnvio::get();
        
        return $EtapaEnvio;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\EtapaEnvio  $etapaEnvio
     * @return \Illuminate\Http\Response
     */
    public function show(EtapaEnvio $etapaEnvio)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\EtapaEnvio  $etapaEnvio
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, EtapaEnvio $etapaEnvio)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\EtapaEnvio  $etapaEnvio
     * @return \Illuminate\Http\Response
     */
    public function destroy(EtapaEnvio $etapaEnvio)
    {
        //
    }
}
