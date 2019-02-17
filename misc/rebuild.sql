DROP TABLE pagos.solicitud;

CREATE TABLE pagos.solicitud
(
  id_solicitud integer NOT NULL DEFAULT nextval('pagos.solicitud_id_solicitud_seq'::regclass),
  nu_solicitud character varying(25),
  tx_concepto character varying(200),
  mo_solicitud numeric(15,2),
  fe_solicitud timestamp(0) without time zone,
  id_ente integer NOT NULL,
  id_moneda integer NOT NULL,
  id_categoria integer NOT NULL,
  tx_observaciones character varying(100) DEFAULT 'N/A'::character varying,
  id_usuario integer NOT NULL,
  id_status integer NOT NULL,
  fe_creado timestamp(0) without time zone,
  fe_actualizado timestamp(0) without time zone,
  CONSTRAINT solicitud_pkey PRIMARY KEY (id_solicitud),
  CONSTRAINT fk_solicitud_categoria FOREIGN KEY (id_categoria)
      REFERENCES pagos.categoria (id_categoria) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_solicitud_ente FOREIGN KEY (id_ente)
      REFERENCES pagos.ente (id_ente) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_solicitud_moneda FOREIGN KEY (id_moneda)
      REFERENCES pagos.moneda (id_moneda) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)




DROP TABLE pagos.instruccion;

CREATE TABLE pagos.instruccion
(
  id_instruccion integer NOT NULL DEFAULT nextval('pagos.instruccion_id_instruccion_seq'::regclass),
  tx_concepto character varying(100),
  id_esquema integer NOT NULL,
  nu_esquema character varying(20),
  tx_ofi_cta_mte character varying(20),
  bo_ofi_cta_mte boolean,
  fe_instruccion timestamp(0) without time zone,
  mo_instruccion numeric(15,2),
  id_moneda integer NOT NULL,
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
)