<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix'=>'v1','middleware' => 'auth:api'], function() {
    
    Route::put('/user', 'LoggedUserController@update');
    
    Route::Resource('/banco', 'BancoController');
    Route::Resource('/tipoBanco', 'TipoBancoController');
    Route::Resource('/grupoBanco', 'GrupoBancoController');

    Route::Resource('/ente', 'EnteController');
    Route::Resource('/grupoEnte', 'TipoEnteController');
    Route::Resource('/tipoEnte', 'GrupoEnteController');

    Route::Resource('/categoria', 'CategoriaController');
    
    Route::Resource('/pago', 'PagoController');
    Route::Resource('/tipoPago', 'TipoPagoController');

    Route::Resource('/moneda', 'MonedaController');

    Route::Resource('/cuenta', 'CuentaController');

    Route::Resource('/ingreso', 'IngresoController');

    Route::Resource('/solicitud', 'SolicitudController');
    Route::get('/solicitud/categoria/{idCategoria}', 'SolicitudController@solicitudCategoria')->where('idCategoria', '[0-9]+');

    Route::Resource('/instruccion', 'InstruccionController');

    Route::Resource('/esquema', 'EsquemaController');

});
