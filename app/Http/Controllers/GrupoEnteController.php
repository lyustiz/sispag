<?php

namespace App\Http\Controllers;

use App\Models\GrupoEnte;
use Illuminate\Http\Request;

class GrupoEnteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $grupoEnte = GrupoEnte::with(['status'])->get();
        
        return $grupoEnte;
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
     * @param  \App\Models\GrupoEnte  $grupoEnte
     * @return \Illuminate\Http\Response
     */
    public function show(GrupoEnte $grupoEnte)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\GrupoEnte  $grupoEnte
     * @return \Illuminate\Http\Response
     */
    public function edit(GrupoEnte $grupoEnte)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\GrupoEnte  $grupoEnte
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, GrupoEnte $grupoEnte)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\GrupoEnte  $grupoEnte
     * @return \Illuminate\Http\Response
     */
    public function destroy(GrupoEnte $grupoEnte)
    {
        //
    }
}
