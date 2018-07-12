<?php

use Illuminate\Http\Request;

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix'=>'v1','middleware' => 'auth:api'], function() {
    
    Route::put('/user', 'LoggedUserController@update');

    Route::apiResource('/usuario', 'UsuarioController');
    
    Route::apiResource('/banco', 'BancoController');
    Route::Get('/banco/grupo/{id_grupo_banco}', 'BancoController@bancoGrupo');
    Route::apiResource('/tipoBanco', 'TipoBancoController');
    Route::apiResource('/grupoBanco', 'GrupoBancoController');
    
    Route::apiResource('/ente', 'EnteController');
    Route::Get('/ente/tipo/{id_tipo_ente}', 'EnteController@enteTipo');
    Route::Get('/ente/grupo/{id_grupo_ente}', 'EnteController@enteGrupo');
    Route::Get('/ente/tipo/{id_tipo_ente}/grupo/{id_grupo_ente}', 'EnteController@enteTipoGrupo');
    Route::apiResource('/grupoEnte', 'GrupoEnteController');
    Route::apiResource('/tipoEnte', 'TipoEnteController');

    Route::apiResource('/categoria', 'CategoriaController', ['parameters' => ['categoria' => 'categoria']]);

    Route::apiResource('/ingreso', 'IngresoController');
    Route::apiResource('/tipoIngreso', 'TipoIngresoController');
    
    Route::apiResource('/pago', 'PagoController');
    Route::get('/pago/instruccion/{id_instruccion}', 'PagoController@pagoInstruccion');
    Route::apiResource('/tipoPago', 'TipoPagoController');
    Route::apiResource('/ejecucionPago', 'EjecucionPagoController');
    Route::get('/ejecucionPago/pago/{id_pago}', 'EjecucionPagoController@ejecucionPagoPago');

    Route::apiResource('/moneda', 'MonedaController');

    Route::apiResource('/cuenta', 'CuentaController',['parameters' => ['cuenta' => 'cuenta']]);
    Route::get('/cuenta/moneda/{id_moneda}', 'CuentaController@cuentaMoneda');

    Route::apiResource('/movimiento', 'MovimientoController');
    Route::get('/movimiento/moneda/{id_moneda}', 'MovimientoController@movimientoMoneda');


    Route::apiResource('/solicitud', 'SolicitudController');
    Route::get('/solicitud/categoria/{idCategoria}', 'SolicitudController@solicitudCategoria')->where('idCategoria', '[0-9]+');

    Route::apiResource('/instruccion', 'InstruccionController');
    Route::Get('/instruccion/pagos', 'InstruccionController@instruccionPagos');
    
    Route::Get('/esquema/padre', 'EsquemaController@esquemaPadre');
    Route::apiResource('/esquema', 'EsquemaController');

    Route::apiResource('/etapaEnvio', 'EtapaEnvioController');

    Route::apiResource('/status', 'StatusController');
    
    Route::Get('/status/grupo/{id_grupo}', 'StatusController@statusGrupo');

    Route::Get('/reports/{nb_tabla}', 'Reportes\ReporteController@showReporte');
    Route::Post('/reports', 'Reportes\ReporteController@getReporte');
});
