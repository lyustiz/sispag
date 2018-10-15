<?php

namespace App\Http\Controllers;

use App\Models\Usuario;
use Illuminate\Http\Request;
use Hash;

class UsuarioController extends Controller
{
    /**
     * Listar Usuario   
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $usuarios = Usuario::with(['status'])->get();
        
        return $usuarios;
    }

    /**
     * Almacenar Usuario.
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validate = request()->validate([

            'usuario'     => 'required|unique:usuario|string|max:255',
            'password'    => 'required|string|min:6',
            'nu_cedula'   => 'required|min:6',
            'nb_nombre'   => 'required|min:3',
            'nb_apellido' => 'required|min:3',
            'id_status'   => 'required',

        ]);

        $usuario = Usuario::create($request->all());

        $usuario = Usuario::create([
            'usuario'     => $request->usuario,
            'password'    =>  Hash::make($request->password),
            'nu_cedula'   => $request->nu_cedula,
            'nb_nombre'   => $request->nb_nombre,
            'nb_apellido' => $request->nb_apellido,
            'id_status'   => $request->id_status,
        ]);

        return [ 'msj' => 'Registro Agregado Correctamente', compact('usuario') ];
    }

    /**
     * Retornar Usuario especifico
     * 
     * @bodyParam  \App\Models\Usuario  $usuario
     * @return \Illuminate\Http\Response
     */
    public function show(Usuario $usuario)
    {
        return $usuario->load('status');
    }

    /**
     * Actualizar Usuario
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\Usuario  $usuario
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Usuario $usuario)
    {
        $validate = request()->validate([

            'usuario'     => 'required',
            'nu_cedula'   => 'required',
            'nb_nombre'   => 'required',
            'nb_apellido' => 'required',
            'id_status'   => 'required',

        ]);
        $usuario = $usuario->update([
            'nu_cedula'   => $request->nu_cedula,
            'nb_nombre'   => $request->nb_nombre,
            'nb_apellido' => $request->nb_apellido,
            'id_status'   => $request->id_status,
        ]);

        return [ 'msj' => 'Registro Actualizado Correctamente', compact('usuario') ];
    }

    /**
     * Actualizar Password
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\Usuario  $usuario
     * @return \Illuminate\Http\Response
     */
    public function updatePassword(Request $request, Usuario $usuario)
    {
        $validate = request()->validate([
            'id_usuario'  => 'required',
            'password'  => 'required',
        ]);

        $usuario = $usuario->update([
            'password'    =>  Hash::make($request->password),
        ]);

        return [ 'msj' => 'Password Actualizado Correctamente', compact('usuario') ];
    }

    /**
     * Eliminar Usuario
     *
     * @bodyParam  \App\Models\Usuario  $usuario
     * @return \Illuminate\Http\Response
     */
    public function destroy(Usuario $usuario)
    {
        return [ 'msj' => 'Los Usuarios no se pueden eliminar'];
    }
}
