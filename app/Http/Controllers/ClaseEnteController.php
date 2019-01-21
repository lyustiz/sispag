<?php

namespace App\Http\Controllers;

use App\Models\ClaseEnte;
use Illuminate\Http\Request;

class ClaseEnteController extends Controller
{
    /**
     * Listar Clase Ente     
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
     * Almacenar Clase Ente
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Retornar Clase Ente especifico
     *
     * @bodyParam  \App\Models\ClaseEnte  $claseEnte
     * @return \Illuminate\Http\Response
     */
    public function show(ClaseEnte $claseEnte)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @bodyParam  \App\Models\ClaseEnte  $claseEnte
     * @return \Illuminate\Http\Response
     */
    public function edit(ClaseEnte $claseEnte)
    {
        //
    }

    /**
     * Actualizar Clase Ente
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\ClaseEnte  $claseEnte
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ClaseEnte $claseEnte)
    {
        //
    }

    /**
     * Eliminar Clase Ente
     *
     * @bodyParam  \App\Models\ClaseEnte  $claseEnte
     * @return \Illuminate\Http\Response
     */
    public function destroy(ClaseEnte $claseEnte)
    {
        //
    }
}
