<?php

namespace App\Http\Controllers;

use App\Models\TipoEnte;
use Illuminate\Http\Request;

class TipoEnteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tipoEnte = TipoEnte::with(['status'])->get();
        
        return $tipoEnte;
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
     * @param  \App\Models\TipoEnte  $tipoEnte
     * @return \Illuminate\Http\Response
     */
    public function show(TipoEnte $tipoEnte)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\TipoEnte  $tipoEnte
     * @return \Illuminate\Http\Response
     */
    public function edit(TipoEnte $tipoEnte)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TipoEnte  $tipoEnte
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TipoEnte $tipoEnte)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TipoEnte  $tipoEnte
     * @return \Illuminate\Http\Response
     */
    public function destroy(TipoEnte $tipoEnte)
    {
        //
    }
}
