<?php

namespace App\Http\Controllers;

use App\Models\Solicitud;
use Illuminate\Http\Request;

class SolicitudController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $solicitudes = Solicitud::with(['ente', 'moneda', 'categoria', 'instruccion', 'status'])
                                ->orderby('id_solicitud', 'desc')
                                ->get();
        
        return $solicitudes;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function solicitudCategoria($idCategoria)
    {
        $solicitudes = Solicitud::with(['ente', 'moneda', 'categoria', 'status'])
                                ->doesntHave('instruccion')
                                ->where('id_categoria', '=', $idCategoria)
                                ->orderby('id_solicitud', 'desc')
                                ->get();
        
        return $solicitudes;
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

            'nu_solicitud'   => 'required',
            'tx_concepto'    => 'required',
            'mo_solicitud'   => 'required',
            'fe_solicitud'   => 'required',
            'id_ente'        => 'required',
            'id_moneda'      => 'required',
            'id_categoria'   => 'required',
            'id_usuario'     => 'required',
            'id_status'      => 'required'

        ]);

        $solicitud = Solicitud::create($request->all());

        return (['msj'=>'Registro Agregado Correctamente ', 'solicitud' =>$solicitud]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Solicitud  $solicitud
     * @return \Illuminate\Http\Response
     */
    public function show(Solicitud $solicitud)
    {
        $solicitud->load('ente', 'moneda', 'categoria', 'status');
        
        return $solicitud;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Solicitud  $solicitud
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Solicitud $solicitud)
    {
        $validate = request()->validate([

            'nu_solicitud'   => 'required',
            'tx_concepto'    => 'required',
            'mo_solicitud'   => 'required',
            'fe_solicitud'    => 'required',
            'id_ente'        => 'required',
            'id_moneda'      => 'required',
            'id_categoria'   => 'required',
            'id_usuario'     => 'required',
            'id_status'      => 'required'

        ]);
                
        $solicitud = Solicitud::find($solicitud->id_solicitud)->update($request->all());

        return ['msj'=>'Registro Actualizado Correctamente ', compact($solicitud)];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Solicitud  $solicitud
     * @return \Illuminate\Http\Response
     */
    public function destroy(Solicitud $solicitud)
    {
        $solicitud = $solicitud->delete();

        return ['msj' => 'Solicitud Eliminada', compact($solicitud)];
    }
}
