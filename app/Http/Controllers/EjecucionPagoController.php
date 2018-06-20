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
        $Ejecuciones = EjecucionPago::with(['pago', 'banco', 'etapaEnvio','status'])->get();
        
        return $Ejecuciones;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
     * @param  \App\models\EjecucionPago  $ejecucionPago
     * @return \Illuminate\Http\Response
     */
    public function show(EjecucionPago $ejecucionPago)
    {
        //
    }

    public function ejecucionPagoPago($id_pago)
    {

        $ejecucion = EjecucionPago::with(['pago', 'banco', 'etapaEnvio', 'status'])
                    ->where('id_pago','=', $id_pago)
                    ->get();
        return $ejecucion;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\models\EjecucionPago  $ejecucionPago
     * @return \Illuminate\Http\Response
     */
    public function edit(EjecucionPago $ejecucionPago)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\models\EjecucionPago  $ejecucionPago
     * @return \Illuminate\Http\Response
     */
    public function destroy(EjecucionPago $ejecucionPago)
    {
        //
    }
}
