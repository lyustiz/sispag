<?php


Route::post('/prueba', 'Reportes\ReporteController@getReporteExcel');

Route::get('/',            function ()       {   return view('welcome'); });

Route::get('/{vista}',     function ($vista) {   return view($vista); });

Auth::routes();
