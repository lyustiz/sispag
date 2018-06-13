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
        //
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
        //
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
