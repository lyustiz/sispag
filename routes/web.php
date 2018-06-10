<?php

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', function () {
    return view('home');
});

Route::get('/lista', function () {
    return view('lista');
});

Route::get('/home', 'HomeController@index')->name('home');

Route::Resource('/banco', 'BancoController');

Route::Resource('/categoria', 'CategoriaController');

Route::Resource('/claseente', 'ClaseEnteController');

Route::Resource('/ente', 'EnteController');

Route::Resource('/etapaenvio', 'EtapaEnvioController');

Route::Resource('/grupobancos', 'GrupoBancosController');

Route::Resource('/grupoente', 'GrupoEnteController');

Route::Resource('/grupofinanciero', 'GrupoFinancieroController');

Route::Resource('/grupostatus', 'GrupoStatusController');

Route::Resource('/ingreso', 'IngresoController');

Route::Resource('/instruccion', 'InstruccionController');

Route::Resource('/moneda', 'MonedaController');

Route::Resource('/status', 'StatusController');

Route::Resource('/tasa', 'TasaController');

Route::Resource('/tipobanco', 'TipoBancoController');

Route::Resource('/tipoente', 'TipoEnteController');

Route::Resource('/tipoingreso', 'TipoIngresoController');

Route::Resource('/tipopago', 'TipoPagoController');

Route::Resource('/usuario', 'UsuarioController');

Auth::routes();