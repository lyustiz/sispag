<?php

namespace App\Http\Controllers;

use App\Models\Movimiento;
use Illuminate\Http\Request;

class MovimientoController extends Controller
{
    /**
     * Listar Movimiento     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $movimientos  = Movimiento::with(['moneda','status'])
                        ->orderBy('fe_movimiento' , 'desc')
                        ->get();
        
        return $movimientos;
    }

    public function movimientoMoneda($moneda)
    {
        $movimientos  = Movimiento::with(['moneda','status'])
                        ->moneda($moneda)
                        ->orderBy('fe_movimiento', 'desc')
                        ->get();
        return $movimientos;
    }

    /**
     * Almacenar Movimiento
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Retornar Movimiento especifico
     *
     * @bodyParam  \App\Models\Movimiento  $movimiento
     * @return \Illuminate\Http\Response
     */
    public function show(Movimiento $movimiento)
    {
        //
    }


    /**
     * Actualizar Movimiento
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\Movimiento  $movimiento
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Movimiento $movimiento)
    {
        //
    }

    /**
     * Eliminar Movimiento
     *
     * @bodyParam  \App\Models\Movimiento  $movimiento
     * @return \Illuminate\Http\Response
     */
    public function destroy(Movimiento $movimiento)
    {
        //
    }
}
