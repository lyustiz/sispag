<?php

use Illuminate\Http\Request;

Route::group(['prefix'=>'v1','middleware' => ['auth:api', 'check.rol:administrador']], function() {
    
    Route::apiResource('/usuario',          'UsuarioController');
    Route::put('/usuario/update/password/{usuario}', 'UsuarioController@updatePassword');

    Route::apiResource('/rol',               'RolController');

    Route::get('/home/totales',              'HomeController@totales');
    
    Route::apiResource('/banco',             'BancoController');
    Route::apiResource('/tipoBanco',         'TipoBancoController');
    Route::apiResource('/grupoBanco',        'GrupoBancoController');
    Route::get('/banco/grupo/{id_grupo_banco}', 'BancoController@bancoGrupo');
    Route::get('/banco/tipo/{id_tipo_banco}',  'BancoController@bancoTipo');
    
    Route::apiResource('/ente',              'EnteController');
    Route::apiResource('/grupoEnte',         'GrupoEnteController');
    Route::apiResource('/tipoEnte',          'TipoEnteController');
    Route::get('/ente/tipo/{id_tipo_ente}',  'EnteController@enteTipo');
    Route::get('/ente/grupo/{id_grupo_ente}','EnteController@enteGrupo');
    Route::get('/ente/tipo/{id_tipo_ente}/grupo/{id_grupo_ente}', 'EnteController@enteTipoGrupo');

    Route::apiResource('/ingreso',           'IngresoController');
    Route::apiResource('/tipoIngreso',       'TipoIngresoController');

    Route::apiResource('/solicitud',         'SolicitudController');
    Route::apiResource('/categoria',         'CategoriaController', ['parameters' => ['categoria' => 'categoria']]);
    Route::get('/solicitud/categoria/{idCategoria}', 'SolicitudController@solicitudCategoria')->where('idCategoria', '[0-9]+');
    
    Route::apiResource('/pago',              'PagoController');
    Route::apiResource('/tipoPago',          'TipoPagoController');
    Route::apiResource('/ejecucionPago',     'EjecucionPagoController');
    Route::put('/ejecucionPago/update',      'EjecucionPagoController@update');
    Route::put('/ejecucionPago/cancelar/{ejecucionPago}', 'EjecucionPagoController@cancelarEjecucion');
    Route::get('/pago/instruccion/{id_instruccion}', 'PagoController@pagoInstruccion');
    Route::get('/ejecucionPago/pago/{id_pago}', 'EjecucionPagoController@ejecucionPagoPago');

    Route::apiResource('/moneda',            'MonedaController');
    Route::apiResource('/cuenta',            'CuentaController',['parameters' => ['cuenta' => 'cuenta']]);
    Route::get('/cuenta/totales',            'CuentaController@cuentaTotales');
    Route::get('/cuenta/moneda/{id_moneda}', 'CuentaController@cuentaMoneda');
    
    Route::apiResource('/movimiento',        'MovimientoController');
    Route::get('/movimiento/moneda/{id_moneda}', 'MovimientoController@movimientoMoneda');

    Route::apiResource('/instruccion',       'InstruccionController');
    Route::get('/instruccion/pagos',         'InstruccionController@instruccionPagos');
    
    Route::get('/esquema/padre',             'EsquemaController@esquemaPadre');
    Route::apiResource('/esquema',           'EsquemaController');

    Route::apiResource('/etapaEnvio',        'EtapaEnvioController');
    Route::apiResource('/status',            'StatusController');
    Route::get('/status/grupo/{id_grupo}',   'StatusController@statusGrupo');

    Route::get('/reports/{nb_tabla}',        'Reportes\ReporteController@showReporte');
    Route::post('/reports',                  'Reportes\ReporteController@getReporte');
    Route::post('/getReporteExcel',          'Reportes\ReporteController@getReporteExcel');
});

Route::group(['middleware' => 'guest:api'], function () {

    Route::post('login',            'Auth\LoginController@login');
    Route::post('register',         'Auth\RegisterController@register');
    Route::post('password/email',   'Auth\ForgotPasswordController@sendResetLinkEmail');
    Route::post('password/reset',   'Auth\ResetPasswordController@reset');

});