<?php

namespace App\Http\Controllers;

use App\Models\Moneda;
use Illuminate\Http\Request;

class MonedaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $moneda = Moneda::with(['status'])->get();
        
        return $moneda;
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
            'nb_moneda'         => 'required',
            'co_moneda'         => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',
        ]);
        
        $moneda = Moneda::create($request->all());

        return [ 'msj' => 'Registro Agregado Correctamente', compact('moneda') ];
    }
        

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Moneda  $moneda
     * @return \Illuminate\Http\Response
     */
    public function show(Moneda $moneda)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Moneda  $moneda
     * @return \Illuminate\Http\Response
     */
    public function edit(Moneda $moneda)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Moneda  $moneda
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Moneda $moneda)
    {
        $validate = request()->validate([
            'nb_moneda'         => 'required',
            'co_moneda'         => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',
        ]);

        $moneda = $moneda->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('moneda')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Moneda  $moneda
     * @return \Illuminate\Http\Response
     */
    public function destroy(Moneda $moneda)
    {
        $moneda = $moneda->delete();
 
        return [ 'msj' => 'Registro Editado' , compact('moneda')];
    }
}
