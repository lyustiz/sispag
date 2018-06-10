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
        $bancos = Banco::with(['tipoBanco','status'])->get();
        
        return $bancos;
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
            'tx_observaciones'  => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',

        ]);

        $banco = Banco::create($request->all());

        return compact('banco');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Banco  $banco
     * @return \Illuminate\Http\Response
     */
    public function show(Banco $banco)
    {
        return compact('banco');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Banco  $banco
     * @return \Illuminate\Http\Response
     */
    public function edit(Banco $banco)
    {
        
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
            'tx_observaciones'  => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',

        ]);
        
        $banco = Banco::find($banco->id_banco)->update($request->all());

        /*$banco->nb_banco  = $request->nb_banco;
        $banco->save();*/

        return compact('banco');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Banco  $banco
     * @return \Illuminate\Http\Response
     */
    public function destroy(Banco $banco)
    {
        //
    }
}
