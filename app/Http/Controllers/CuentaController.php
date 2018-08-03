<?php

namespace App\Http\Controllers;

use App\Models\Cuenta;
use Illuminate\Http\Request;

class CuentaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cuentas  = Cuenta::with(['moneda.instruccion','status'])->get();
        
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
     * @param  \App\Models\Cuenta  $cuenta
     * @return \Illuminate\Http\Response
     */
    public function show(Cuenta $cuenta)
    {
        return $cuenta;
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Cuenta  $cuenta
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Cuenta $cuenta)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Cuenta  $cuenta
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cuenta $cuenta)
    {
        //
    }
}
