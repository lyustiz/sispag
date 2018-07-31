<?php

namespace App\Http\Controllers;

use App\Models\Usuario;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $usuarios = Usuario::with(['status'])->get();
        
        return $usuarios;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validate = request()->validate([

            'usuario'     => 'required',
            'password'    => 'required',
            'nu_cedula'   => 'required',
            'nb_nombre'   => 'required',
            'nb_apellido' => 'required',
            'id_status'   => 'required',

        ]);

        $usuario = Usuario::create($request->all());

        return [ 'msj' => 'Registro Agregado Correctamente', compact('usuario') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Usuario  $usuario
     * @return \Illuminate\Http\Response
     */
    public function show(Usuario $usuario)
    {
        return $usuario->load('status');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Usuario  $usuario
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

        $usuario = $usuario->update($request->all());

        return [ 'msj' => 'Registro Actualizado Correctamente', compact('usuario') ];
    }

    public function updatePassword(Request $request, Usuario $usuario)
    {
        
        $validate = request()->validate([

            'id_usuario'  => 'required',
            'password'  => 'required',
        ]);

        $usuario = $usuario->update($validate);

        return [ 'msj' => 'Password Actualizado Correctamente', compact('usuario') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Usuario  $usuario
     * @return \Illuminate\Http\Response
     */
    public function destroy(Usuario $usuario)
    {
        $usuario = $usuario->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('usuario')];
    }
}
