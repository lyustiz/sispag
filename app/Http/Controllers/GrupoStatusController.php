<?php

namespace App\Http\Controllers;

use App\Models\GrupoStatus;
use Illuminate\Http\Request;

class GrupoStatusController extends Controller
{
    /**
     * Listar Grupo Status     
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
     * Almacenar Grupo Status
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Retornar Grupo Status especifico
     *
     * @bodyParam  \App\Models\GrupoStatus  $grupoStatus
     * @return \Illuminate\Http\Response
     */
    public function show(GrupoStatus $grupoStatus)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @bodyParam  \App\Models\GrupoStatus  $grupoStatus
     * @return \Illuminate\Http\Response
     */
    public function edit(GrupoStatus $grupoStatus)
    {
        //
    }

    /**
     * Actualizar Grupo Status
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\GrupoStatus  $grupoStatus
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, GrupoStatus $grupoStatus)
    {
        //
    }

    /**
     * Eliminar Grupo Status
     *
     * @bodyParam  \App\Models\GrupoStatus  $grupoStatus
     * @return \Illuminate\Http\Response
     */
    public function destroy(GrupoStatus $grupoStatus)
    {
        //
    }
}
