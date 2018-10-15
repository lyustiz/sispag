<?php

namespace App\Http\Controllers;

use App\Models\TipoPago;
use Illuminate\Http\Request;

class TipoPagoController extends Controller
{
    /**
     * Listar Tipo Pago     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tipoPago = TipoPago::with(['status'])->get();
        
        return $tipoPago;
    }

    /**
     * Almacenar Tipo Pago
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Retornar Tipo Pago especifico
     *
     * @bodyParam  \App\Models\TipoPago  $tipoPago
     * @return \Illuminate\Http\Response
     */
    public function show(TipoPago $tipoPago)
    {
        //
    }

    /**
     * Actualizar Tipo Pago
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\TipoPago  $tipoPago
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TipoPago $tipoPago)
    {
        //
    }

    /**
     * Eliminar Tipo Pago
     *
     * @bodyParam  \App\Models\TipoPago  $tipoPago
     * @return \Illuminate\Http\Response
     */
    public function destroy(TipoPago $tipoPago)
    {
        //
    }
}
