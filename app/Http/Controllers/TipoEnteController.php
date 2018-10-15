<?php

namespace App\Http\Controllers;

use App\Models\TipoEnte;
use Illuminate\Http\Request;

class TipoEnteController extends Controller
{
    /**
     * Listar Tipo Ente     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tipoEnte = TipoEnte::with(['status'])->get();
        
        return $tipoEnte;
    }

    /**
     * Almacenar Tipo Ente
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Retornar Tipo Ente especifico
     *
     * @bodyParam  \App\Models\TipoEnte  $tipoEnte
     * @return \Illuminate\Http\Response
     */
    public function show(TipoEnte $tipoEnte)
    {
        //
    }

    /**
     * Actualizar Tipo Ente
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\TipoEnte  $tipoEnte
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TipoEnte $tipoEnte)
    {
        //
    }

    /**
     * Eliminar Tipo Ente
     *
     * @bodyParam  \App\Models\TipoEnte  $tipoEnte
     * @return \Illuminate\Http\Response
     */
    public function destroy(TipoEnte $tipoEnte)
    {
        //
    }
}
