<?php

namespace App\Http\Controllers;

use App\Models\Permiso;
use Illuminate\Http\Request;

class PermisoController extends Controller
{
    /**
     * Listar Permiso     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }


    /**
     * Almacenar Permiso
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Retornar Permiso especifico
     *
     * @bodyParam  \App\Models\Permiso  $permiso
     * @return \Illuminate\Http\Response
     */
    public function show(Permiso $permiso)
    {
        //
    }

    /**
     * Actualizar Permiso
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\Permiso  $permiso
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Permiso $permiso)
    {
        //
    }

    /**
     * Eliminar Permiso
     *
     * @bodyParam  \App\Models\Permiso  $permiso
     * @return \Illuminate\Http\Response
     */
    public function destroy(Permiso $permiso)
    {
        //
    }
}
