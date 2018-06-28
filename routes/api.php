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
    Route::Get('/banco/grupo/{id_grupo_banco}', 'BancoController@bancoGrupo');
    Route::Resource('/tipoBanco', 'TipoBancoController');
    Route::Resource('/grupoBanco', 'GrupoBancoController');
    

    Route::Resource('/ente', 'EnteController');
    Route::Get('/ente/tipo/{id_tipo_ente}', 'EnteController@enteTipo');
    Route::Get('/ente/grupo/{id_grupo_ente}', 'EnteController@enteGrupo');
    Route::Get('/ente/tipo/{id_tipo_ente}/grupo/{id_grupo_ente}', 'EnteController@enteTipoGrupo');
    Route::Resource('/grupoEnte', 'GrupoEnteController');
    Route::Resource('/tipoEnte', 'TipoEnteController');

    Route::Resource('/categoria', 'CategoriaController');

    Route::Resource('/ingreso', 'IngresoController');
    Route::Resource('/tipoIngreso', 'TipoIngresoController');
    
    Route::Resource('/pago', 'PagoController');
    Route::get('/pago/instruccion/{id_instruccion}', 'PagoController@pagoInstruccion');
    Route::Resource('/tipoPago', 'TipoPagoController');
    Route::Resource('/ejecucionPago', 'EjecucionPagoController');
    Route::get('/ejecucionPago/pago/{id_pago}', 'EjecucionPagoController@ejecucionPagoPago');

    Route::Resource('/moneda', 'MonedaController');

    Route::Resource('/cuenta', 'CuentaController');

    Route::Resource('/solicitud', 'SolicitudController');
    Route::get('/solicitud/categoria/{idCategoria}', 'SolicitudController@solicitudCategoria')->where('idCategoria', '[0-9]+');

    Route::Resource('/instruccion', 'InstruccionController');

    Route::Resource('/esquema', 'EsquemaController');

    Route::Resource('/etapaEnvio', 'EtapaEnvioController');

    Route::Resource('/status', 'StatusController');
    
    Route::Get('/status/grupo/{id_grupo}', 'StatusController@statusGrupo');

});
