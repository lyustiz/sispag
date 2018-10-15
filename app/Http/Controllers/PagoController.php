<?php

namespace App\Http\Controllers;

use App\Models\Pago;
use Illuminate\Http\Request;

class PagoController extends Controller
{
    /**
     * Listar Pago     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pagos = Pago::with(['moneda', 'banco', 'tipoPago', 'ente', 'status'])->get();
        
        return $pagos;
    }

    /**
     * Almacenar Pago
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validate = request()->validate([                
            'fe_liq_bcv'    => 'required',
            'id_banco'      => 'required',
            'fe_pago'       => 'required',
            'id_moneda'     => 'required',
            'mo_tasa'       => 'required',
            'mo_final_pago' => 'required',
            'id_tipo_pago'  => 'required',
            'id_ente'       => 'required',
            'id_usuario'    => 'required',
            'id_status'     => 'required',
        ]);

        $pago = Pago::create($request->all());

        return (['msj'=>'Registro Agregado Correctamente ', 'pago' => $pago]);
    }

    /**
     * Retornar Pago especifico
     *
     * @bodyParam  \App\Models\Pago  $pago
     * @return \Illuminate\Http\Response
     */
    public function show(Pago $pago)
    {
        dd($pago);
        $pago = Pago::with(['moneda', 'banco', 'tipoPago', 'status'])
                    ->where('id_instruccion','=', $pago->id_pago)
                    ->get();
        
        return $pago;
    }

    public function pagoInstruccion($id_instruccion)
    {        
        $pago = Pago::with(['moneda', 'banco', 'tipoPago', 'ente', 'status'])
                    ->where('id_instruccion','=', $id_instruccion)
                    ->get();
        return $pago;
    }

    /**
     * Actualizar Pago
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\Pago  $pago
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Pago $pago)
    {
        $validate = request()->validate([                
            'fe_liq_bcv'    => 'required',
            'id_banco'      => 'required',
            'fe_pago'       => 'required',
            'id_moneda'     => 'required',
            'mo_tasa'       => 'required',
            'mo_final_pago' => 'required',
            'id_tipo_pago'  => 'required',
            'id_ente'       => 'required',
            'id_usuario'    => 'required',
            'id_status'     => 'required',
        ]);

        $pago = Pago::find($pago->id_pago)->update($request->all());

        return ['msj'=>'Registro Actualizado Correctamente ', compact($pago)];
    }

    /**
     * Eliminar Pago
     *
     * @bodyParam  \App\Models\Pago  $pago
     * @return \Illuminate\Http\Response
     */
    public function destroy(Pago $pago)
    {
        $pago = $pago->delete();

        return ['msj' => 'Pago Eliminado', compact($pago)];
    }
}
