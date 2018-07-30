<?php


Route::post('/prueba', 'Reportes\ReporteController@getReporteExcel');

Route::get('/prueba2', 'Reportes\ReporteController@getArchivo');

Route::get('/',            function ()       {   return view('welcome'); });

Route::get('/{vista}',     function ($vista) {   return view($vista); });

Auth::routes();
