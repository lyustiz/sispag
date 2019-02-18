<?php

namespace App\Http\Controllers;

use App\Models\Cuenta;
use Illuminate\Http\Request;

class CuentaController extends Controller
{
    /**
     * Listar Cuenta     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cuentas  = Cuenta::with(['moneda','moneda.instruccion','status'])->get();
        
        return $cuentas;
    }

    public function cuentaMoneda($moneda)
    {
        $cuenta  = Cuenta::with(['moneda.instruccion','status'])
                        ->where('id_moneda', '=', $moneda)
                        ->first();
                        

        return $cuenta;
    }

    public function cuentaTotales()
    {
        $cuenta  = Cuenta::select('id_moneda', \DB::raw('sum(mo_disponible) as mo_disponible'))
                            ->groupBy('id_moneda')
                            ->pluck('mo_disponible','id_moneda')->all();
                     
        return $cuenta;
    }



    /**
     * Almacenar Cuenta
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Retornar Cuenta especifico
     *
     * @bodyParam  \App\Models\Cuenta  $cuenta
     * @return \Illuminate\Http\Response
     */
    public function show(Cuenta $cuenta)
    {
        return $cuenta;
    }


    /**
     * Actualizar Cuenta
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\Cuenta  $cuenta
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Cuenta $cuenta)
    {
        //
    }

    /**
     * Eliminar Cuenta
     *
     * @bodyParam  \App\Models\Cuenta  $cuenta
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cuenta $cuenta)
    {
        //
    }
}
