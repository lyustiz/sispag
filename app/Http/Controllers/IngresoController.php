<?php

namespace App\Http\Controllers;

use App\Models\Ingreso;
use Illuminate\Http\Request;

class IngresoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ingresos = Ingreso::with(['tipoIngreso', 'ente', 'moneda', 'banco', 'status'])
                            ->orderby('fe_creado', 'desc')
                            ->get();
        
        return $ingresos;
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

            'id_tipo_ingreso'   => 'required',
            'id_ente'           => 'required',
            'id_moneda'         => 'required',
            'mo_ingreso'        => 'required',
            'fe_ingreso'        => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',
            'id_banco'          => 'required'

        ]);
        

        $ingreso = Ingreso::create($request->all());

        return (['msj'=>'Registro Agregado Correctamente ', 'ingreso' =>$ingreso]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Ingreso  $ingreso
     * @return \Illuminate\Http\Response
     */
    public function show(Ingreso $ingreso)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Ingreso  $ingreso
     * @return \Illuminate\Http\Response
     */
    public function edit(Ingreso $ingreso)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Ingreso  $ingreso
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Ingreso $ingreso)
    {
        $validate = request()->validate([

            'id_tipo_ingreso'   => 'required',
            'id_ente'           => 'required',
            'id_moneda'         => 'required',
            'mo_ingreso'        => 'required',
            'fe_ingreso'        => 'required',
            'id_usuario'        => 'required',
            'id_status'         => 'required',
            'id_banco'          => 'required'

        ]);
                
        $ingreso = Ingreso::find($ingreso->id_ingreso)->update($request->all());

        return (['msj'=>'Registro Actualizado Correctamente ', 'ingreso' =>$ingreso]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Ingreso  $ingreso
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ingreso $ingreso)
    {
        $ingreso = $ingreso->delete();

        return ['msj' => 'Ingreso Eliminado'];
    }
}
