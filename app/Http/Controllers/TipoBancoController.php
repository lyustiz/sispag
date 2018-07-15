<?php

namespace App\Http\Controllers;

use App\Models\TipoBanco;
use Illuminate\Http\Request;

class TipoBancoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tipoBanco = TipoBanco::with(['status'])->get();
        
        return $tipoBanco;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TipoBanco  $tipoBanco
     * @return \Illuminate\Http\Response
     */
    public function show(TipoBanco $tipoBanco)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TipoBanco  $tipoBanco
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TipoBanco $tipoBanco)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TipoBanco  $tipoBanco
     * @return \Illuminate\Http\Response
     */
    public function destroy(TipoBanco $tipoBanco)
    {
        //
    }
}
