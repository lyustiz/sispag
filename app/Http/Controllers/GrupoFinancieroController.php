<?php

namespace App\Http\Controllers;

use App\Models\GrupoFinanciero;
use Illuminate\Http\Request;

class GrupoFinancieroController extends Controller
{
    /**
     * Listar Grupo Financiero     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
     * Almacenar Grupo Financiero
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Retornar Grupo Financiero especifico
     *
     * @bodyParam  \App\Models\GrupoFinanciero  $grupoFinanciero
     * @return \Illuminate\Http\Response
     */
    public function show(GrupoFinanciero $grupoFinanciero)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @bodyParam  \App\Models\GrupoFinanciero  $grupoFinanciero
     * @return \Illuminate\Http\Response
     */
    public function edit(GrupoFinanciero $grupoFinanciero)
    {
        //
    }

    /**
     * Actualizar Grupo Financiero
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\GrupoFinanciero  $grupoFinanciero
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, GrupoFinanciero $grupoFinanciero)
    {
        //
    }

    /**
     * Eliminar Grupo Financiero
     *
     * @bodyParam  \App\Models\GrupoFinanciero  $grupoFinanciero
     * @return \Illuminate\Http\Response
     */
    public function destroy(GrupoFinanciero $grupoFinanciero)
    {
        //
    }
}
