<?php


Route::get('/prueba', 'CuentaController@prueba');

Route::get('/', function () {
    return view('welcome');
});

Route::get('/test', function () {
    return view('test');
});

Route::get('/home', function () {
    return view('home');
});

Route::get('/ingresos', function () {
    return view('pago');
});

Route::get('/banco', function () {
    return view('banco');
});

Route::get('/categoria', function(){ 
    return view('categoria');
});

Route::get('/esquema', function(){ 
    return view('esquema');
});

Route::get('/claseente', function(){ 
    return view('claseente');
});

Route::get('/ente', function(){ 
    return view('ente');
});

Route::get('/etapaenvio', function(){ 
    return view('etapaenvio');
});

Route::get('/grupobancos', function(){ 
    return view('grupobancos');
});

Route::get('/grupoente', function(){ 
    return view('grupoente');
});

Route::get('/grupofinanciero', function(){ 
    return view('grupofinanciero');
});

Route::get('/grupostatus', function(){ 
    return view('grupostatus');
});

Route::get('/ingreso', function(){ 
    return view('ingreso');
});

Route::get('/solicitud', function(){ 
    return view('solicitud');
});


Route::get('/instruccion', function(){ 
    return view('instruccion');
});

Route::get('/moneda', function(){ 
    return view('moneda');
});

Route::get('/status', function(){ 
    return view('status');
});

Route::get('/tasa', function(){ 
    return view('tasa');
});

Route::get('/tipobanco', function(){ 
    return view('tipobanco');
});

Route::get('/tipoente', function(){ 
    return view('tipoente');
});

Route::get('/tipoingreso', function(){ 
    return view('tipoingreso');
});

Route::get('/tipopago', function(){ 
    return view('tipopago');
});

Route::get('/usuario', function(){ 
    return view('usuario');
});

/*
Route::get('/home', 'HomeController@index')->name('home');

//Route::Resource('/banco', 'BancoController');

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
*/
Auth::routes();