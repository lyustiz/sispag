<?php

namespace App\Http\Controllers;

use App\Models\UsuarioRol;
use Illuminate\Http\Request;

class UsuarioRolController extends Controller
{
    /**
     * Ver Roles de Usuario
     * 
     * [Mostrar Informacion de todos los Roles de uSSURIOS]
     * 
     * @group Usuario
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Almacenar Usuario Rol
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Muestra un Usuario Especifico.
     *
     * @bodyParam  \App\Models\UsuarioRol  $usuarioRol
     * @return \Illuminate\Http\Response
     */
    public function show(UsuarioRol $usuarioRol)
    {
        //
    }

    /**
     * Actualizar Usuario Rol
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\UsuarioRol  $usuarioRol
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, UsuarioRol $usuarioRol)
    {
        //
    }

    /**
     * Eliminar Usuario Rol
     *
     * @bodyParam  \App\Models\UsuarioRol  $usuarioRol
     * @return \Illuminate\Http\Response
     */
    public function destroy(UsuarioRol $usuarioRol)
    {
        //
    }
}
