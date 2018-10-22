<?php


Route::view('/',        'welcome');
Route::view('/login',   'welcome')->name('login');

Route::middleware(['auth'])->group(function () 
{
    //Proceso Core
    Route::get('/home',        'HomeController@index')->name('home');;
    Route::view('/ingreso',     'ingreso');
    Route::view('/solicitud',   'solicitud');
    Route::view('/instruccion', 'instruccion');
    Route::view('/pago',        'pago');
    Route::view('/cuenta',      'cuenta');

    //Datos Maestros
    Route::view('/banco',       'banco');
    Route::view('/ente',        'ente');
    Route::view('/categoria',   'categoria');
    Route::view('/moneda',      'moneda');
    Route::view('/esquema',     'esquema');
    Route::view('/tipoIngreso', 'tipoIngreso');

    //Datos Reportes
    Route::view('/reportes/general',     'reports.general');
    Route::view('/reportes/ingreso',     'reports.ingreso');
    Route::view('/reportes/solicitud',   'reports.solicitud');
    Route::view('/reportes/instruccion', 'reports.instruccion');
    Route::view('/reportes/bitacora',    'reports.bitacora');
    Route::view('/reportes/banco',       'reports.banco');
    Route::get('/getReporteExcel',       'Reportes\ReporteController@getArchivo');

    //Administracion
    Route::view('/usuario',      'usuario');

    //Ayuda
    Route::get('/getAyuda',       'HomeController@getAyuda');

});

Auth::routes();