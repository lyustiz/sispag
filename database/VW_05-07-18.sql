-- View: pagos.vw_banco

-- DROP VIEW pagos.vw_banco;

CREATE OR REPLACE VIEW pagos.vw_banco AS 
 SELECT ba.id_banco,
    ba.nb_banco,
    ba.id_tipo_banco,
    tb.nb_tipo_banco,
    ba.id_grupo_banco,
    gb.nb_grupo_banco,
    ba.tx_observaciones,
    ba.id_usuario,
    btrim((us.nb_nombre::text || ' '::text) || us.nb_apellido::text) AS nb_usuario,
    ba.id_status,
    st.nb_status,
    ba.fe_creado,
    ba.fe_actualizado
   FROM pagos.banco ba
     JOIN pagos.tipo_banco tb ON tb.id_tipo_banco = ba.id_tipo_banco
     JOIN pagos.grupo_banco gb ON gb.id_grupo_banco = ba.id_grupo_banco
     JOIN pagos.usuario us ON us.id_usuario = ba.id_usuario
     JOIN pagos.status st ON st.id_status = ba.id_status;

ALTER TABLE pagos.vw_banco
  OWNER TO postgres;
COMMENT ON COLUMN pagos.vw_banco.id_banco IS 'BANCO';
COMMENT ON COLUMN pagos.vw_banco.nb_banco IS 'BANCO';
COMMENT ON COLUMN pagos.vw_banco.id_tipo_banco IS 'TIPO BANCO';
COMMENT ON COLUMN pagos.vw_banco.nb_tipo_banco IS 'TIPO BANCO';
COMMENT ON COLUMN pagos.vw_banco.id_grupo_banco IS 'GRUPO BANCO';
COMMENT ON COLUMN pagos.vw_banco.nb_grupo_banco IS 'GRUPO BANCO';
COMMENT ON COLUMN pagos.vw_banco.tx_observaciones IS 'OBSERVACIONES';
COMMENT ON COLUMN pagos.vw_banco.id_usuario IS 'USUARIO';
COMMENT ON COLUMN pagos.vw_banco.nb_usuario IS 'USUARIO';
COMMENT ON COLUMN pagos.vw_banco.id_status IS 'STATUS';
COMMENT ON COLUMN pagos.vw_banco.nb_status IS 'STATUS';
COMMENT ON COLUMN pagos.vw_banco.fe_creado IS 'CREADO';
COMMENT ON COLUMN pagos.vw_banco.fe_actualizado IS 'ACTUALIZADO';



-- View: pagos.vw_bitacora

-- DROP VIEW pagos.vw_bitacora;

CREATE OR REPLACE VIEW pagos.vw_bitacora AS 
 SELECT b.co_accion,
    b.tx_tabla,
    b.in_id_tabla,
    b.tx_old_valor,
    b.tx_new_valor,
    b.fe_accion,
    b.id_usuario,
    btrim((u.nb_nombre::text || ' '::text) || u.nb_apellido::text) AS nb_usuario
   FROM pagos.tr_bitacora b
     JOIN pagos.usuario u ON b.id_usuario = u.id_usuario;

ALTER TABLE pagos.vw_bitacora
  OWNER TO postgres;
COMMENT ON COLUMN pagos.vw_bitacora.co_accion IS 'BITACORA';
COMMENT ON COLUMN pagos.vw_bitacora.tx_tabla IS 'BITACORA';
COMMENT ON COLUMN pagos.vw_bitacora.in_id_tabla IS 'BITACORA';
COMMENT ON COLUMN pagos.vw_bitacora.tx_old_valor IS 'BITACORA';
COMMENT ON COLUMN pagos.vw_bitacora.tx_new_valor IS 'BITACORA';
COMMENT ON COLUMN pagos.vw_bitacora.fe_accion IS 'BITACORA';
COMMENT ON COLUMN pagos.vw_bitacora.id_usuario IS 'USUARIO';
COMMENT ON COLUMN pagos.vw_bitacora.nb_usuario IS 'USUARIO';



-- View: pagos.vw_segpago

-- DROP VIEW pagos.vw_segpago;

CREATE OR REPLACE VIEW pagos.vw_segpago AS 
 SELECT s.tx_concepto,
    s.mo_solicitud,
    s.fe_solicitud,
    s.id_ente,
    e.nb_ente AS nb_ente_solic,
    s.id_moneda AS id_moneda_solic,
    ( SELECT m_1.nb_moneda
           FROM pagos.moneda m_1
          WHERE m_1.id_moneda = s.id_moneda) AS nb_moned_solic,
    s.id_status AS id_status_solic,
    ( SELECT st.nb_status
           FROM pagos.status st
          WHERE st.id_status = s.id_status) AS nb_status_solic,
    i.fe_instruccion,
    i.mo_instruccion,
    i.id_moneda AS id_moneda_inst,
    ( SELECT m_1.nb_moneda
           FROM pagos.moneda m_1
          WHERE m_1.id_moneda = i.id_moneda) AS nb_moned_inst,
    i.id_status AS id_status_inst,
    ( SELECT s_1.nb_status
           FROM pagos.status s_1
          WHERE s_1.id_status = i.id_status) AS nb_status_inst,
    i.id_esquema,
    ( SELECT e_1.nb_esquema
           FROM pagos.esquema e_1
          WHERE e_1.id_esquema = i.id_esquema) AS nb_esqma_inst,
    i.nu_esquema,
    p.mo_tasa,
    p.mo_final_pago,
    p.fe_pago,
    p.id_banco AS id_banco_pago,
    ( SELECT b.nb_banco
           FROM pagos.banco b
          WHERE b.id_banco = p.id_banco) AS nb_banco_pago,
    p.id_moneda AS id_moneda_pago,
    ( SELECT m_1.nb_moneda
           FROM pagos.moneda m_1
          WHERE m_1.id_moneda = p.id_moneda) AS nb_moneda_pago,
    p.id_tipo_pago,
    ( SELECT tp.nb_tipo_pago
           FROM pagos.tipo_pago tp
          WHERE tp.id_tipo_pago = p.id_tipo_pago) AS nb_tppago_pago,
    p.id_status AS id_status_pago,
    ( SELECT s_1.nb_status
           FROM pagos.status s_1
          WHERE s_1.id_status = p.id_status) AS nb_status_pag,
    ep.id_banco,
    ( SELECT b.nb_banco
           FROM pagos.banco b
          WHERE b.id_banco = ep.id_banco) AS nb_bco_ejepag,
    ep.id_etapa_envio,
    ( SELECT ee.nb_etapa_envio
           FROM pagos.etapa_envio ee
          WHERE ee.id_etapa_envio = ep.id_etapa_envio) AS nb_etap_env,
    ep.id_status AS id_status_ejpg,
    ( SELECT s_1.nb_status
           FROM pagos.status s_1
          WHERE s_1.id_status = ep.id_status) AS nb_status_ejp
   FROM pagos.solicitud s
     JOIN pagos.instruccion i ON s.id_solicitud = i.id_solicitud
     JOIN pagos.ente e ON s.id_ente = e.id_ente
     JOIN pagos.moneda m ON s.id_moneda = m.id_moneda
     JOIN pagos.pago p ON i.id_instruccion = p.id_instruccion
     JOIN pagos.ejecucion_pago ep ON p.id_pago = ep.id_pago;

ALTER TABLE pagos.vw_segpago
  OWNER TO postgres;
COMMENT ON COLUMN pagos.vw_segpago.tx_concepto IS 'SOLICITUD';
COMMENT ON COLUMN pagos.vw_segpago.mo_solicitud IS 'SOLICITUD';
COMMENT ON COLUMN pagos.vw_segpago.fe_solicitud IS 'SOLICITUD';
COMMENT ON COLUMN pagos.vw_segpago.id_ente IS 'ENTE';
COMMENT ON COLUMN pagos.vw_segpago.nb_ente_solic IS 'ENTE';
COMMENT ON COLUMN pagos.vw_segpago.id_moneda_solic IS 'MONEDA SOLICITUD';
COMMENT ON COLUMN pagos.vw_segpago.nb_moned_solic IS 'MONEDA SOLICITUD';
COMMENT ON COLUMN pagos.vw_segpago.id_status_solic IS 'STATUS SOLICITUD';
COMMENT ON COLUMN pagos.vw_segpago.nb_status_solic IS 'STATUS SOLICITUD';
COMMENT ON COLUMN pagos.vw_segpago.fe_instruccion IS 'INSTRUCCION';
COMMENT ON COLUMN pagos.vw_segpago.mo_instruccion IS 'INSTRUCCION';
COMMENT ON COLUMN pagos.vw_segpago.id_moneda_inst IS 'MONEDA INSTRUCCION';
COMMENT ON COLUMN pagos.vw_segpago.nb_moned_inst IS 'MONEDA INSTRUCCION';
COMMENT ON COLUMN pagos.vw_segpago.id_status_inst IS 'STATUS INSTRUCCION';
COMMENT ON COLUMN pagos.vw_segpago.nb_status_inst IS 'STATUS INSTRUCCION';
COMMENT ON COLUMN pagos.vw_segpago.id_esquema IS 'ESQUEMA';
COMMENT ON COLUMN pagos.vw_segpago.nb_esqma_inst IS 'ESQUEMA';
COMMENT ON COLUMN pagos.vw_segpago.nu_esquema IS 'ESQUEMA';
COMMENT ON COLUMN pagos.vw_segpago.mo_tasa IS 'PAGO';
COMMENT ON COLUMN pagos.vw_segpago.mo_final_pago IS 'PAGO';
COMMENT ON COLUMN pagos.vw_segpago.fe_pago IS 'PAGO';
COMMENT ON COLUMN pagos.vw_segpago.id_banco_pago IS 'BANCO PAGO';
COMMENT ON COLUMN pagos.vw_segpago.nb_banco_pago IS 'BANCO PAGO';
COMMENT ON COLUMN pagos.vw_segpago.id_moneda_pago IS 'MONEDA PAGO';
COMMENT ON COLUMN pagos.vw_segpago.nb_moneda_pago IS 'MONEDA PAGO';
COMMENT ON COLUMN pagos.vw_segpago.id_tipo_pago IS 'TIPO PAGO';
COMMENT ON COLUMN pagos.vw_segpago.nb_tppago_pago IS 'TIPO PAGO';
COMMENT ON COLUMN pagos.vw_segpago.id_status_pago IS 'STATUS PAGO';
COMMENT ON COLUMN pagos.vw_segpago.nb_status_pag IS 'STATUS PAGO';
COMMENT ON COLUMN pagos.vw_segpago.id_banco IS 'BANCO EJECUCIÓN';
COMMENT ON COLUMN pagos.vw_segpago.nb_bco_ejepag IS 'BANCO EJECUCIÓN';
COMMENT ON COLUMN pagos.vw_segpago.id_etapa_envio IS 'ETAPA';
COMMENT ON COLUMN pagos.vw_segpago.nb_etap_env IS 'ETAPA';
COMMENT ON COLUMN pagos.vw_segpago.id_status_ejpg IS 'STATUS EJECUCIÓN';
COMMENT ON COLUMN pagos.vw_segpago.nb_status_ejp IS 'STATUS EJECUCIÓN';