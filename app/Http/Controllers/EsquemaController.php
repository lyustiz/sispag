<?php

namespace App\Http\Controllers;

use App\Models\Esquema;
use Illuminate\Http\Request;

class EsquemaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $esquema = Esquema::with(['status'])->get();
        
        return $esquema;
    }

    public function esquemaPadre()
    {
        $esquema = Esquema::with(['status'])
                            ->where('id_esquema_padre', '<>', '0')
                            ->get();
        return $esquema;
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

            'nb_esquema'       => 'required',
            'tx_requerimiento' => 'required',
            'id_esquema_padre' => 'required',
            'tx_observaciones' => 'required',
            'id_usuario'       => 'required',
            'id_status'        => 'required',

        ]);
        
        $esquema = Esquema::create($request->all());

        return [ 'msj' => 'Registro Agregado Correctamente', compact('esquema') ];
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Esquema  $esquema
     * @return \Illuminate\Http\Response
     */
    public function show(Esquema $esquema)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Esquema  $esquema
     * @return \Illuminate\Http\Response
     */
    public function edit(Esquema $esquema)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Esquema  $esquema
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Esquema $esquema)
    {
        $validate = request()->validate([

            'nb_esquema'       => 'required',
            'tx_requerimiento' => 'required',
            'id_esquema_padre' => 'required',
            'tx_observaciones' => 'required',
            'id_usuario'       => 'required',
            'id_status'        => 'required',

        ]);

        $esquema = $esquema->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('esquema')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Esquema  $esquema
     * @return \Illuminate\Http\Response
     */
    public function destroy(Esquema $esquema)
    {
        $esquema = $esquema->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('esquema')];
    }
}
