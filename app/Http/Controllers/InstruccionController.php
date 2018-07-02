<?php

namespace App\Http\Controllers;

use App\Models\Instruccion;
use Illuminate\Http\Request;

class InstruccionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $instrucciones = Instruccion::with(['esquema','solicitud.ente', 'solicitud.categoria', 'status'])->get();
        
        return $instrucciones;
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

            'id_solicitud'      => 'required',
            'id_esquema'        => 'required',
            'nu_esquema'        => 'required',
            'bo_ofi_cta_mte'    => 'required',
            'fe_instruccion'    => 'required',
            'mo_instruccion'    => 'required',
            'id_moneda'         => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',
        ]);
        
        $instruccion = Instruccion::create($request->all());

        return (['msj'=>'Registro Agregado Correctamente ', 'instruccion' =>$instruccion]);
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Instruccion  $instruccion
     * @return \Illuminate\Http\Response
     */
    public function show(Instruccion $instruccion)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Instruccion  $instruccion
     * @return \Illuminate\Http\Response
     */
    public function edit(Instruccion $instruccion)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Instruccion  $instruccion
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Instruccion $instruccion)
    {
        $validate = request()->validate([

            'id_solicitud'      => 'required',
            'id_esquema'        => 'required',
            'nu_esquema'        => 'required',
            'bo_ofi_cta_mte'    => 'required',
            'fe_instruccion'    => 'required',
            'mo_instruccion'    => 'required',
            'id_moneda'         => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',
        ]);

        $instruccion = Instruccion::find($instruccion->id_instruccion)->update($request->all());

        return (['msj'=>'Registro Actualizado Correctamente ', 'Instruccion' =>$instruccion]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Instruccion  $instruccion
     * @return \Illuminate\Http\Response
     */
    public function destroy(Instruccion $instruccion)
    {
        //
    }
}
