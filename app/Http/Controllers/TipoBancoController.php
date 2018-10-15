<?php

namespace App\Http\Controllers;

use App\Models\TipoBanco;
use Illuminate\Http\Request;

class TipoBancoController extends Controller
{
    /**
     * Listar Tipo Banco     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tipoBanco = TipoBanco::with(['status'])->get();
        
        return $tipoBanco;
    }

    /**
     * Almacenar Tipo Banco
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Retornar Tipo Banco especifico
     *
     * @bodyParam  \App\Models\TipoBanco  $tipoBanco
     * @return \Illuminate\Http\Response
     */
    public function show(TipoBanco $tipoBanco)
    {
        //
    }

    /**
     * Actualizar Tipo Banco
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\TipoBanco  $tipoBanco
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TipoBanco $tipoBanco)
    {
        //
    }

    /**
     * Eliminar Tipo Banco
     *
     * @bodyParam  \App\Models\TipoBanco  $tipoBanco
     * @return \Illuminate\Http\Response
     */
    public function destroy(TipoBanco $tipoBanco)
    {
        //
    }
}
