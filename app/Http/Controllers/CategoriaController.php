<?php

namespace App\Http\Controllers;

use App\Models\Categoria;
use Illuminate\Http\Request;

class CategoriaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $categorias = Categoria::with(['status'])
                                ->orderBy('nb_categoria', 'asc')
                                ->get();
        
        return $categorias;

    }

    public function lista()
    {

        $categorias = Categoria::with(['status'])
                                ->orderBy('nb_categoria', 'asc')
                                ->where('id_status',22)
                                ->get();
        
        return $categorias;

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

            'nb_categoria'      =>  'required',
            'id_usuario'        =>  'required',
            'id_status'         =>  'required',
        ]);
        
        $categoria = Categoria::create($request->all());

        return [ 'msj' => 'Registro Creado' , compact('categoria')];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Categoria  $categoria
     * @return \Illuminate\Http\Response
     */
    public function show(Categoria $categoria)
    {
        return $categoria;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Categoria  $categoria
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Categoria $categoria)
    {
        $validate = request()->validate([

            'nb_categoria'      =>  'required',
            'id_usuario'        =>  'required',
            'id_status'         =>  'required',
        ]);
        $categoria = $categoria->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('categoria')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Categoria  $categoria
     * @return \Illuminate\Http\Response
     */
    public function destroy(Categoria $categoria)
    {
        $categoria = $categoria->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('categoria')];
    }
}
