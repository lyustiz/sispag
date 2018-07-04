<?php

namespace App\Http\Controllers;

use App\Models\TipoIngreso;
use Illuminate\Http\Request;

class TipoIngresoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tipIngresos = TipoIngreso::with(['status'])->get();
        
        return $tipIngresos;
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
        $validate = request()->validate([

            'nb_tipo_ingreso'   => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',

        ]);

        $tingreso = TipoIngreso::create($request->all());

        return [ 'msj' => 'Registro Agregado Correctamente', compact('tingreso') ];
        
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TipoIngreso  $tipoIngreso
     * @return \Illuminate\Http\Response
     */
    public function show(TipoIngreso $tipoIngreso)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\TipoIngreso  $tipoIngreso
     * @return \Illuminate\Http\Response
     */
    public function edit(TipoIngreso $tipoIngreso)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TipoIngreso  $tipoIngreso
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TipoIngreso $tipoIngreso)
    {
        $validate = request()->validate([

            'nb_tipo_ingreso'   => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',

        ]);
        
        $tingreso = $tipoIngreso->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('tingreso')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TipoIngreso  $tipoIngreso
     * @return \Illuminate\Http\Response
     */
    public function destroy(TipoIngreso $tipoIngreso)
    {
        $tingreso = $tipoIngreso->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('tingreso')];
    }
}
