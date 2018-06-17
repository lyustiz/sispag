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

    public function prueba()
    {
       // $sumIntruida = \DB::table('instruccion')->where('id_moneda', '=', 1)->sum('mo_instruccion');
        
       //$sumIntruida = \App\Models\Instruccion::get()->where('id_moneda', '=', 1)->sum('mo_instruccion');

       $cuentas  = Cuenta::with(['moneda.instruccion','status'])->get()->toArray();

       // $Intruido = \App\Models\Instruccion::get()->where('id_moneda', '=', 1)->sum('mo_instruccion');
        //$cuentas =  $cuentas->put('instruido', $Intruido); 
        return $cuentas;

        //return $sumIntruida;
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
     * @param  \App\Models\Cuenta  $cuenta
     * @return \Illuminate\Http\Response
     */
    public function show(Cuenta $cuenta)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Cuenta  $cuenta
     * @return \Illuminate\Http\Response
     */
    public function edit(Cuenta $cuenta)
    {
        //
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
