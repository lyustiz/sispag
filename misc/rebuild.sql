DROP TABLE pagos.instruccion;

CREATE TABLE pagos.instruccion
(
  id_instruccion integer NOT NULL DEFAULT nextval('pagos.instruccion_id_instruccion_seq'::regclass),
  id_categoria integer NOT NULL,
  id_ente integer NOT NULL,
  tx_concepto character varying(100),
  id_esquema integer NOT NULL,
  nu_esquema character varying(20),
  tx_ofi_cta_mte character varying(20),
  bo_ofi_cta_mte boolean,
  fe_instruccion timestamp(0) without time zone,
  mo_instruccion numeric(15,2),
  id_moneda integer NOT NULL,
  mo_tasa numeric(15,4),
  mo_total numeric(15,2),
  tx_observaciones character varying(100),
  id_usuario integer,
  id_status integer,
  fe_creado timestamp(0) without time zone,
  fe_actualizado timestamp(0) without time zone,
  CONSTRAINT instruccion_pkey PRIMARY KEY (id_instruccion),
  CONSTRAINT fk_instruccion_esquema FOREIGN KEY (id_esquema)
      REFERENCES pagos.esquema (id_esquema) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_instruccion_moneda FOREIGN KEY (id_moneda)
      REFERENCES pagos.moneda (id_moneda) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);
-- Trigger: trg_instruccion_bitacora on pagos.instruccion

-- DROP TRIGGER trg_instruccion_bitacora ON pagos.instruccion;

CREATE TRIGGER trg_instruccion_bitacora
  AFTER INSERT OR UPDATE
  ON pagos.instruccion
  FOR EACH ROW
  EXECUTE PROCEDURE pagos.sp_ins_bitacora();

-- Trigger: trg_instruccion_ins_cuenta on pagos.instruccion

-- DROP TRIGGER trg_instruccion_ins_cuenta ON pagos.instruccion;

CREATE TRIGGER trg_instruccion_ins_cuenta
  AFTER INSERT OR UPDATE
  ON pagos.instruccion
  FOR EACH ROW
  EXECUTE PROCEDURE pagos.sp_tr_instruccion_ins_cuenta();






-- DROP TABLE pagos.pago;

CREATE TABLE pagos.pago
(
  id_pago integer NOT NULL DEFAULT nextval('pagos.pagos_id_pago_seq'::regclass),
  id_instruccion integer NOT NULL,
  fe_liq_bcv timestamp(0) without time zone,
  id_banco integer NOT NULL,
  fe_pago timestamp(0) without time zone,
  id_moneda integer NOT NULL,
  mo_tasa numeric(15,4) NOT NULL,
  mo_final_pago numeric(15,2),
  id_tipo_pago integer NOT NULL,
  tx_observaciones character varying(100),
  id_usuario integer,
  id_status integer,
  fe_creado timestamp(0) without time zone,
  fe_actualizado timestamp(0) without time zone,
  id_ente integer,
  CONSTRAINT pago_pkey PRIMARY KEY (id_pago),
  CONSTRAINT fk_pago_banco FOREIGN KEY (id_banco)
      REFERENCES pagos.banco (id_banco) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_pago_instruccion FOREIGN KEY (id_instruccion)
      REFERENCES pagos.instruccion (id_instruccion) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_pago_moneda FOREIGN KEY (id_moneda)
      REFERENCES pagos.moneda (id_moneda) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_pago_tipo_pago FOREIGN KEY (id_tipo_pago)
      REFERENCES pagos.tipo_pago (id_tipo_pago) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)

-- Trigger: trg_pago_bitacora on pagos.pago

-- DROP TRIGGER trg_pago_bitacora ON pagos.pago;

CREATE TRIGGER trg_pago_bitacora
  AFTER INSERT OR UPDATE
  ON pagos.pago
  FOR EACH ROW
  EXECUTE PROCEDURE pagos.sp_ins_bitacora();
