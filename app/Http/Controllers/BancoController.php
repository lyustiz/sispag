<?php

namespace App\Http\Controllers;

use App\Models\Banco;
use Illuminate\Http\Request;

class BancoController extends Controller
{
    /**
     * Listar Banco     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $bancos = Banco::with(['tipoBanco','grupoBanco','status'])
                        ->get();
        
        return $bancos;
    }

    /**
     * Listar Banco por Grupo     
     *
     * @return \Illuminate\Http\Response
     */
    public function bancoGrupo($grupo)
    {
        $bancos = Banco::grupo($grupo)
                        ->get()
                        ->where('id_status',22);
        
        return $bancos;
    }

    /**
     * Almacenar Banco
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       
        $validate = request()->validate([

            'nb_banco'          => 'required',
            'co_switf'          => 'required',
            'id_tipo_banco'     => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',

        ]);

        $banco = Banco::create($request->all());

        return [ 'msj' => 'Registro Agregado Correctamente', compact('banco') ];
    }

    /**
     * Retornar Banco especifico
     *
     * @bodyParam  \App\Models\Banco  $banco
     * @return \Illuminate\Http\Response
     */
    public function show(Banco $banco)
    {
        return $banco;
    }


    /**
     * Actualizar Banco
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\Banco  $banco
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Banco $banco)
    {
        $validate = request()->validate([

            'nb_banco'          => 'required',
            'co_switf'          => 'required',
            'id_tipo_banco'     => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',

        ]);
        
        $banco = $banco->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('banco')];
    }

    /**
     * Eliminar Banco
     *
     * @bodyParam  \App\Models\Banco  $banco
     * @return \Illuminate\Http\Response
     */
    public function destroy(Banco $banco)
    {
        $banco = $banco->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('banco')];
    }
}
