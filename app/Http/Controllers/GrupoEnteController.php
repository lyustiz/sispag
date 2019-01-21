<?php

namespace App\Http\Controllers;

use App\Models\GrupoEnte;
use Illuminate\Http\Request;

class GrupoEnteController extends Controller
{
    /**
     * Listar Grupo Ente     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $grupoEnte = GrupoEnte::with(['status'])->get();
        
        return $grupoEnte;
    }

    /**
     * Almacenar Grupo Ente
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Retornar Grupo Ente especifico
     *
     * @bodyParam  \App\Models\GrupoEnte  $grupoEnte
     * @return \Illuminate\Http\Response
     */
    public function show(GrupoEnte $grupoEnte)
    {
        //
    }

    /**
     * Actualizar Grupo Ente
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\GrupoEnte  $grupoEnte
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, GrupoEnte $grupoEnte)
    {
        //
    }

    /**
     * Eliminar Grupo Ente
     *
     * @bodyParam  \App\Models\GrupoEnte  $grupoEnte
     * @return \Illuminate\Http\Response
     */
    public function destroy(GrupoEnte $grupoEnte)
    {
        //
    }
}
