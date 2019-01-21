<?php

namespace App\Http\Controllers;

use App\Models\GrupoBanco;
use Illuminate\Http\Request;

class GrupoBancoController extends Controller
{
    /**
     * Listar Grupo Banco     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $grupoBanco = GrupoBanco::with(['status'])->get();
        
        return $grupoBanco;
    }

    /**
     * Almacenar Grupo Banco
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Retornar Grupo Banco especifico
     *
     * @bodyParam  \App\Models\GrupoBancos  $grupoBancos
     * @return \Illuminate\Http\Response
     */
    public function show(GrupoBancos $grupoBancos)
    {
        //
    }

    /**
     * Actualizar Grupo Banco
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\GrupoBancos  $grupoBancos
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, GrupoBancos $grupoBancos)
    {
        //
    }

    /**
     * Eliminar Grupo Banco
     *
     * @bodyParam  \App\Models\GrupoBancos  $grupoBancos
     * @return \Illuminate\Http\Response
     */
    public function destroy(GrupoBancos $grupoBancos)
    {
        //
    }
}
