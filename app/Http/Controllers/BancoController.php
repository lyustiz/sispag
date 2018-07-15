<?php

namespace App\Http\Controllers;

use App\Models\Banco;
use Illuminate\Http\Request;

class BancoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $bancos = Banco::with(['tipoBanco','grupoBanco','status'])
                        ->get();
        
        return $bancos;
    }

    public function bancoGrupo($grupo)
    {
        $bancos = Banco::grupo($grupo)
                        ->get()
                        ->where('id_status',22);
        
        return $bancos;
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

            'nb_banco'          => 'required',
            'id_tipo_banco'     => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',

        ]);

        $banco = Banco::create($request->all());

        return [ 'msj' => 'Registro Agregado Correctamente', compact('banco') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Banco  $banco
     * @return \Illuminate\Http\Response
     */
    public function show(Banco $banco)
    {
        return $banco;
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Banco  $banco
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Banco $banco)
    {
        $validate = request()->validate([

            'nb_banco'          => 'required',
            'id_tipo_banco'     => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',

        ]);
        
        $banco = $banco->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('banco')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Banco  $banco
     * @return \Illuminate\Http\Response
     */
    public function destroy(Banco $banco)
    {
        $banco = $banco->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('banco')];
    }
}
