<?php

namespace App\Http\Controllers;

use App\Models\Esquema;
use Illuminate\Http\Request;

class EsquemaController extends Controller
{
    /**
     * Listar Esquema     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $esquema = Esquema::with(['status'])->get();
        
        return $esquema;
    }

    public function lista()
    {
        $esquema = Esquema::with(['status'])
                            ->where('id_status',22)
                            ->get();
        
        return $esquema;
    }



    public function esquemaPadre()
    {
        $esquema = Esquema::with(['status'])
                            ->where('id_esquema_padre', '<>', '0')
                            ->where('id_status',22)
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
     * Almacenar Esquema
     *
     * @bodyParam  \Illuminate\Http\Request  $request
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
     * Retornar Esquema especifico
     *
     * @bodyParam  \App\Models\Esquema  $esquema
     * @return \Illuminate\Http\Response
     */
    public function show(Esquema $esquema)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @bodyParam  \App\Models\Esquema  $esquema
     * @return \Illuminate\Http\Response
     */
    public function edit(Esquema $esquema)
    {
        //
    }

    /**
     * Actualizar Esquema
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\Esquema  $esquema
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
     * Eliminar Esquema
     *
     * @bodyParam  \App\Models\Esquema  $esquema
     * @return \Illuminate\Http\Response
     */
    public function destroy(Esquema $esquema)
    {
        $esquema = $esquema->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('esquema')];
    }
}
