<?php

namespace App\Http\Controllers;

use App\Models\Ente;
use Illuminate\Http\Request;

class EnteController extends Controller
{
    /**
     * Listar Ente     
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ente = Ente::with(['tipoEnte', 'grupoEnte','status'])->get();
        
        return $ente;
    }

    public function enteGrupo($grupo)
    {
        $ente = Ente::grupo($grupo)
                    ->get()
                    ->where('id_status',22);
        
        return $ente;
    }

    public function enteTipo($tipo)
    {
        $ente = Ente::tipo($tipo)->get();
        
        return $ente;
    }

    public function enteTipoGrupo($tipo, $grupo)
    {
        $ente = Ente::with(['tipoEnte', 'grupoEnte','status'])->tipo($tipo)->grupo($grupo)->get();
        
        return $ente;
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
     * Almacenar Ente
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validate = request()->validate([

            'nb_ente'          => 'required',
            'id_tipo_ente'     => 'required',
            'id_grupo_ente'    => 'required',
            'id_usuario'       => 'required',
            'id_status'        => 'required',
        ]);
        
        $ente = Ente::create($request->all());

        return (['msj' => 'Registro Agregado Correctamente ', 'ente' =>$ente]);
    }

    /**
     * Retornar Ente especifico
     *
     * @bodyParam  \App\Models\Ente  $ente
     * @return \Illuminate\Http\Response
     */
    public function show(Ente $ente)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @bodyParam  \App\Models\Ente  $ente
     * @return \Illuminate\Http\Response
     */
    public function edit(Ente $ente)
    {
        //
    }

    /**
     * Actualizar Ente
     *
     * @bodyParam  \Illuminate\Http\Request  $request
     * @bodyParam  \App\Models\Ente  $ente
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Ente $ente)
    {
        $validate = request()->validate([

            'nb_ente'          => 'required',
            'id_tipo_ente'     => 'required',
            'id_grupo_ente'    => 'required',
            'id_usuario'       => 'required',
            'id_status'        => 'required',
        ]);
        
        $ente = Ente::find($ente->id_ente)->update($request->all());

        return ['msj' => 'Ente Editado'];
    }

    /**
     * Eliminar Ente
     *
     * @bodyParam  \App\Models\Ente  $ente
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ente $ente)
    {
        $ente = $ente->delete();

        return ['msj' => 'Ente Eliminado'];
    }
}
