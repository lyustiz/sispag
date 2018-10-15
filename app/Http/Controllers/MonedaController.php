<?php

namespace App\Http\Controllers;

use App\Models\Moneda;
use Illuminate\Http\Request;

class MonedaController extends Controller
{
    /**
     * Listar Moneda     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $moneda = Moneda::with(['status'])->get();
        
        return $moneda;
    }

    public function lista()
    {
        $moneda = Moneda::with(['status'])
                        ->where('id_status',22)
                        ->get();
        
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
     * Almacenar Moneda
     *
     * @bodyParam  \Illuminate\Http\Request  $request
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
     * Retornar Moneda especifico
     *
     * @bodyParam  \App\Models\Moneda  $moneda
     * @return \Illuminate\Http\Response
     */
    public function show(Moneda $moneda)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @bodyParam  \App\Models\Moneda  $moneda
     * @return \Illuminate\Http\Response
     */
    public function edit(Moneda $moneda)
    {
        //
    }

    /**
     * Actualizar Moneda
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\Moneda  $moneda
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
     * Eliminar Moneda
     *
     * @bodyParam  \App\Models\Moneda  $moneda
     * @return \Illuminate\Http\Response
     */
    public function destroy(Moneda $moneda)
    {
        $moneda = $moneda->delete();
 
        return [ 'msj' => 'Registro Editado' , compact('moneda')];
    }
}
