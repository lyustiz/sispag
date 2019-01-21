<?php

namespace App\Http\Controllers;

use App\Models\Solicitud;
use Illuminate\Http\Request;

class SolicitudController extends Controller
{
    /**
     * Listar Solicitud     
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
     * Listar Solicitud     
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
     * Almacenar Solicitud
     *
     * @bodyParam  \Illuminate\Http\Request  $request
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
     * Retornar Solicitud especifico
     *
     * @bodyParam  \App\Models\Solicitud  $solicitud
     * @return \Illuminate\Http\Response
     */
    public function show(Solicitud $solicitud)
    {
        $solicitud->load('ente', 'moneda', 'categoria', 'status');
        
        return $solicitud;
    }

    /**
     * Actualizar Solicitud
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\Solicitud  $solicitud
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
     * Eliminar Solicitud
     *
     * @bodyParam  \App\Models\Solicitud  $solicitud
     * @return \Illuminate\Http\Response
     */
    public function destroy(Solicitud $solicitud)
    {
        $solicitud = $solicitud->delete();

        return ['msj' => 'Solicitud Eliminada', compact($solicitud)];
    }
}
