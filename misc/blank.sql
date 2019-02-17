SELECT setval('pagos.cuenta_id_cuenta_seq', 1);
delete from pagos.cuenta;

SELECT setval('pagos.ejecucion_pago_id_ejecucion_pago_seq', 1);
delete from pagos.ejecucion_pago;

SELECT setval('pagos.ingreso_id_ingreso_seq', 1);
delete from  pagos.ingreso;

SELECT setval('pagos.pagos_id_pago_seq', 1);
delete from  pagos.pago;

SELECT setval('pagos.instruccion_id_instruccion_seq', 1);
delete from  pagos.instruccion;

SELECT setval('pagos.movimiento_id_movimiento_seq', 1);
delete from  pagos.movimiento;

SELECT setval('pagos.solicitud_id_solicitud_seq', 1);
delete from  pagos.solicitud;

SELECT setval('pagos.tr_bitacora_id_bitacora_seq', 1);
delete from  pagos.tr_bitacora;
