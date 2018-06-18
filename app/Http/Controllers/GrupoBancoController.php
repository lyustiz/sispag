<?php

namespace App\Http\Controllers;

use App\Models\GrupoBanco;
use Illuminate\Http\Request;

class GrupoBancoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $grupoBanco = GrupoBanco::with(['status'])->get();
        
        return $grupoBanco;
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\GrupoBancos  $grupoBancos
     * @return \Illuminate\Http\Response
     */
    public function show(GrupoBancos $grupoBancos)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\GrupoBancos  $grupoBancos
     * @return \Illuminate\Http\Response
     */
    public function edit(GrupoBancos $grupoBancos)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\GrupoBancos  $grupoBancos
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, GrupoBancos $grupoBancos)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\GrupoBancos  $grupoBancos
     * @return \Illuminate\Http\Response
     */
    public function destroy(GrupoBancos $grupoBancos)
    {
        //
    }
}
