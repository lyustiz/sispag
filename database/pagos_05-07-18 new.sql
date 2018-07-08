/*
Navicat PGSQL Data Transfer

Source Server         : portable
Source Server Version : 90601
Source Host           : localhost:5432
Source Database       : postgres
Source Schema         : pagos

Target Server Type    : PGSQL
Target Server Version : 90601
File Encoding         : 65001

Date: 2018-07-05 16:21:45
*/


-- ----------------------------
-- Sequence structure for banco_id_banco_seq
-- ----------------------------
DROP SEQUENCE "pagos"."banco_id_banco_seq";
CREATE SEQUENCE "pagos"."banco_id_banco_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 20
 CACHE 1;
SELECT setval('"pagos"."banco_id_banco_seq"', 20, true);

-- ----------------------------
-- Sequence structure for categoria_id_categoria_seq
-- ----------------------------
DROP SEQUENCE "pagos"."categoria_id_categoria_seq";
CREATE SEQUENCE "pagos"."categoria_id_categoria_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 10
 CACHE 1;
SELECT setval('"pagos"."categoria_id_categoria_seq"', 10, true);

-- ----------------------------
-- Sequence structure for clase_ente_id_clase_ente_seq
-- ----------------------------
DROP SEQUENCE "pagos"."clase_ente_id_clase_ente_seq";
CREATE SEQUENCE "pagos"."clase_ente_id_clase_ente_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"pagos"."clase_ente_id_clase_ente_seq"', 2, true);

-- ----------------------------
-- Sequence structure for cuenta_id_cuenta_seq
-- ----------------------------
DROP SEQUENCE "pagos"."cuenta_id_cuenta_seq";
CREATE SEQUENCE "pagos"."cuenta_id_cuenta_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1151
 CACHE 1;
SELECT setval('"pagos"."cuenta_id_cuenta_seq"', 1151, true);

-- ----------------------------
-- Sequence structure for det_cuenta_id_det_cuenta_seq
-- ----------------------------
DROP SEQUENCE "pagos"."det_cuenta_id_det_cuenta_seq";
CREATE SEQUENCE "pagos"."det_cuenta_id_det_cuenta_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for ejecucion_pago_id_ejecucion_pago_seq
-- ----------------------------
DROP SEQUENCE "pagos"."ejecucion_pago_id_ejecucion_pago_seq";
CREATE SEQUENCE "pagos"."ejecucion_pago_id_ejecucion_pago_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for ente_id_ente_seq
-- ----------------------------
DROP SEQUENCE "pagos"."ente_id_ente_seq";
CREATE SEQUENCE "pagos"."ente_id_ente_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 15
 CACHE 1;
SELECT setval('"pagos"."ente_id_ente_seq"', 15, true);

-- ----------------------------
-- Sequence structure for esquema_id_esquema_seq
-- ----------------------------
DROP SEQUENCE "pagos"."esquema_id_esquema_seq";
CREATE SEQUENCE "pagos"."esquema_id_esquema_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;
SELECT setval('"pagos"."esquema_id_esquema_seq"', 8, true);

-- ----------------------------
-- Sequence structure for etapa_envio_id_etapa_envio_seq
-- ----------------------------
DROP SEQUENCE "pagos"."etapa_envio_id_etapa_envio_seq";
CREATE SEQUENCE "pagos"."etapa_envio_id_etapa_envio_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"pagos"."etapa_envio_id_etapa_envio_seq"', 3, true);

-- ----------------------------
-- Sequence structure for grupo_banco_id_grupo_banco_seq
-- ----------------------------
DROP SEQUENCE "pagos"."grupo_banco_id_grupo_banco_seq";
CREATE SEQUENCE "pagos"."grupo_banco_id_grupo_banco_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;
SELECT setval('"pagos"."grupo_banco_id_grupo_banco_seq"', 4, true);

-- ----------------------------
-- Sequence structure for grupo_ente_id_grupo_ente_seq
-- ----------------------------
DROP SEQUENCE "pagos"."grupo_ente_id_grupo_ente_seq";
CREATE SEQUENCE "pagos"."grupo_ente_id_grupo_ente_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;
SELECT setval('"pagos"."grupo_ente_id_grupo_ente_seq"', 5, true);

-- ----------------------------
-- Sequence structure for grupo_financiero_id_grupo_financiero_seq
-- ----------------------------
DROP SEQUENCE "pagos"."grupo_financiero_id_grupo_financiero_seq";
CREATE SEQUENCE "pagos"."grupo_financiero_id_grupo_financiero_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;
SELECT setval('"pagos"."grupo_financiero_id_grupo_financiero_seq"', 4, true);

-- ----------------------------
-- Sequence structure for grupo_status_id_grupo_status_seq
-- ----------------------------
DROP SEQUENCE "pagos"."grupo_status_id_grupo_status_seq";
CREATE SEQUENCE "pagos"."grupo_status_id_grupo_status_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"pagos"."grupo_status_id_grupo_status_seq"', 3, true);

-- ----------------------------
-- Sequence structure for ingreso_id_ingreso_seq
-- ----------------------------
DROP SEQUENCE "pagos"."ingreso_id_ingreso_seq";
CREATE SEQUENCE "pagos"."ingreso_id_ingreso_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 28
 CACHE 1;
SELECT setval('"pagos"."ingreso_id_ingreso_seq"', 28, true);

-- ----------------------------
-- Sequence structure for instruccion_id_instruccion_seq
-- ----------------------------
DROP SEQUENCE "pagos"."instruccion_id_instruccion_seq";
CREATE SEQUENCE "pagos"."instruccion_id_instruccion_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 18
 CACHE 1;
SELECT setval('"pagos"."instruccion_id_instruccion_seq"', 18, true);

-- ----------------------------
-- Sequence structure for moneda_id_moneda_seq
-- ----------------------------
DROP SEQUENCE "pagos"."moneda_id_moneda_seq";
CREATE SEQUENCE "pagos"."moneda_id_moneda_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;
SELECT setval('"pagos"."moneda_id_moneda_seq"', 5, true);

-- ----------------------------
-- Sequence structure for pagos_id_pago_seq
-- ----------------------------
DROP SEQUENCE "pagos"."pagos_id_pago_seq";
CREATE SEQUENCE "pagos"."pagos_id_pago_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 14
 CACHE 1;
SELECT setval('"pagos"."pagos_id_pago_seq"', 14, true);

-- ----------------------------
-- Sequence structure for solicitud_id_solicitud_seq
-- ----------------------------
DROP SEQUENCE "pagos"."solicitud_id_solicitud_seq";
CREATE SEQUENCE "pagos"."solicitud_id_solicitud_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 12
 CACHE 1;
SELECT setval('"pagos"."solicitud_id_solicitud_seq"', 12, true);

-- ----------------------------
-- Sequence structure for status_id_status_seq
-- ----------------------------
DROP SEQUENCE "pagos"."status_id_status_seq";
CREATE SEQUENCE "pagos"."status_id_status_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 26
 CACHE 1;
SELECT setval('"pagos"."status_id_status_seq"', 26, true);

-- ----------------------------
-- Sequence structure for tasa_id_tasa_seq
-- ----------------------------
DROP SEQUENCE "pagos"."tasa_id_tasa_seq";
CREATE SEQUENCE "pagos"."tasa_id_tasa_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"pagos"."tasa_id_tasa_seq"', 1, true);

-- ----------------------------
-- Sequence structure for tipo_banco_id_tipo_banco_seq
-- ----------------------------
DROP SEQUENCE "pagos"."tipo_banco_id_tipo_banco_seq";
CREATE SEQUENCE "pagos"."tipo_banco_id_tipo_banco_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"pagos"."tipo_banco_id_tipo_banco_seq"', 2, true);

-- ----------------------------
-- Sequence structure for tipo_ente_id_tipo_ente_seq
-- ----------------------------
DROP SEQUENCE "pagos"."tipo_ente_id_tipo_ente_seq";
CREATE SEQUENCE "pagos"."tipo_ente_id_tipo_ente_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"pagos"."tipo_ente_id_tipo_ente_seq"', 3, true);

-- ----------------------------
-- Sequence structure for tipo_ingreso_id_tipo_ingreso_seq
-- ----------------------------
DROP SEQUENCE "pagos"."tipo_ingreso_id_tipo_ingreso_seq";
CREATE SEQUENCE "pagos"."tipo_ingreso_id_tipo_ingreso_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;
SELECT setval('"pagos"."tipo_ingreso_id_tipo_ingreso_seq"', 8, true);

-- ----------------------------
-- Sequence structure for tipo_pago_id_tipo_pago_seq
-- ----------------------------
DROP SEQUENCE "pagos"."tipo_pago_id_tipo_pago_seq";
CREATE SEQUENCE "pagos"."tipo_pago_id_tipo_pago_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"pagos"."tipo_pago_id_tipo_pago_seq"', 2, true);

-- ----------------------------
-- Sequence structure for tr_bitacora_id_bitacora_seq
-- ----------------------------
DROP SEQUENCE "pagos"."tr_bitacora_id_bitacora_seq";
CREATE SEQUENCE "pagos"."tr_bitacora_id_bitacora_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"pagos"."tr_bitacora_id_bitacora_seq"', 2, true);

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE "pagos"."users_id_seq";
CREATE SEQUENCE "pagos"."users_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;
SELECT setval('"pagos"."users_id_seq"', 4, true);

-- ----------------------------
-- Sequence structure for usuario_id_usuario_seq
-- ----------------------------
DROP SEQUENCE "pagos"."usuario_id_usuario_seq";
CREATE SEQUENCE "pagos"."usuario_id_usuario_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"pagos"."usuario_id_usuario_seq"', 2, true);

-- ----------------------------
-- Table structure for banco
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."banco";
CREATE TABLE "pagos"."banco" (
"id_banco" int4 DEFAULT nextval('"pagos".banco_id_banco_seq'::regclass) NOT NULL,
"nb_banco" varchar(50) COLLATE "default" NOT NULL,
"id_tipo_banco" int4 NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp,
"fe_actualizado" timestamp,
"id_grupo_banco" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of banco
-- ----------------------------
INSERT INTO "pagos"."banco" VALUES ('1', 'BANDES', '1', 'N/A', '1', '1', '2018-06-08 00:00:00', null, '4');
INSERT INTO "pagos"."banco" VALUES ('4', 'FONDEN', '1', 'N/A', '1', '1', '2018-06-08 00:00:00', null, '4');
INSERT INTO "pagos"."banco" VALUES ('5', 'BANCO DE VENEZUELA', '1', null, '1', '2', '2018-06-08 00:00:00', '2018-06-17 21:40:59', '4');
INSERT INTO "pagos"."banco" VALUES ('6', 'BANCO DEL TESORO', '1', 'N/A', '1', '1', '2018-06-08 00:00:00', null, '4');
INSERT INTO "pagos"."banco" VALUES ('7', 'BCV', '1', 'N/A', '1', '1', '2018-06-08 00:00:00', null, '4');
INSERT INTO "pagos"."banco" VALUES ('8', 'NOVO BANCO', '2', 'N/A', '1', '1', '2018-06-08 00:00:00', null, '1');
INSERT INTO "pagos"."banco" VALUES ('9', 'GAZPROM BANK', '2', 'N/A', '1', '1', '2018-06-08 00:00:00', null, '1');
INSERT INTO "pagos"."banco" VALUES ('10', 'NOOR CAPITAL', '2', 'N/A', '1', '1', '2018-06-08 00:00:00', null, '1');
INSERT INTO "pagos"."banco" VALUES ('11', 'ZIRAAT BANKASI', '2', 'N/A', '1', '1', '2018-06-08 00:00:00', null, '1');
INSERT INTO "pagos"."banco" VALUES ('12', 'EVROFINANCE MOSNARBANK', '2', 'N/A', '1', '1', '2018-06-08 00:00:00', null, '1');
INSERT INTO "pagos"."banco" VALUES ('13', 'BPM ', '2', 'N/A', '1', '1', '2018-06-08 00:00:00', null, '1');
INSERT INTO "pagos"."banco" VALUES ('14', 'MONDIAL BANK', '2', 'N/A', '1', '1', '2018-06-08 00:00:00', null, '1');
INSERT INTO "pagos"."banco" VALUES ('15', 'FAISAL BANK', '2', 'N/A', '1', '1', '2018-06-08 00:00:00', null, '1');
INSERT INTO "pagos"."banco" VALUES ('16', 'KUNLUN', '2', 'N/A', '1', '1', '2018-06-08 00:00:00', null, '1');

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."categoria";
CREATE TABLE "pagos"."categoria" (
"id_categoria" int4 DEFAULT nextval('"pagos".categoria_id_categoria_seq'::regclass) NOT NULL,
"nb_categoria" varchar(50) COLLATE "default",
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pagos"."categoria" IS 'Categoria del pago generado';
COMMENT ON COLUMN "pagos"."categoria"."id_categoria" IS 'Identificador único del registro';

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO "pagos"."categoria" VALUES ('1', 'Aimentos', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."categoria" VALUES ('2', 'Clap', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."categoria" VALUES ('3', 'Fanb', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."categoria" VALUES ('4', 'Deuda', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."categoria" VALUES ('5', 'Blletes', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."categoria" VALUES ('6', 'Medicamentos', 'N/A', '1', '1', '2018-06-08 00:00:00', null);

-- ----------------------------
-- Table structure for clase_ente
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."clase_ente";
CREATE TABLE "pagos"."clase_ente" (
"id_clase_ente" int4 DEFAULT nextval('"pagos".clase_ente_id_clase_ente_seq'::regclass) NOT NULL,
"nb_clase_ente" varchar(100) COLLATE "default" NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of clase_ente
-- ----------------------------
INSERT INTO "pagos"."clase_ente" VALUES ('1', 'PUBLICO', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."clase_ente" VALUES ('2', 'PRIVADO', 'N/A', '1', '1', '2018-06-08 00:00:00', null);

-- ----------------------------
-- Table structure for cuenta
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."cuenta";
CREATE TABLE "pagos"."cuenta" (
"id_cuenta" int4 DEFAULT nextval('"pagos".cuenta_id_cuenta_seq'::regclass) NOT NULL,
"id_moneda" int4,
"mo_disponible" numeric(15,2),
"mo_instruido" numeric(15,2),
"mo_aprobado" numeric(15,2),
"mo_total" numeric(15,2),
"tx_observaciones" varchar(100) COLLATE "default",
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of cuenta
-- ----------------------------

-- ----------------------------
-- Table structure for det_cuenta
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."det_cuenta";
CREATE TABLE "pagos"."det_cuenta" (
"id_det_cuenta" int4 DEFAULT nextval('"pagos".det_cuenta_id_det_cuenta_seq'::regclass) NOT NULL,
"id_cuenta" int4,
"nu_cuenta" int4,
"mo_monto" numeric(15,2),
"tx_observaciones" varchar(100) COLLATE "default",
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of det_cuenta
-- ----------------------------

-- ----------------------------
-- Table structure for ejecucion_pago
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."ejecucion_pago";
CREATE TABLE "pagos"."ejecucion_pago" (
"id_ejecucion_pago" int4 DEFAULT nextval('"pagos".ejecucion_pago_id_ejecucion_pago_seq'::regclass) NOT NULL,
"id_pago" int4 NOT NULL,
"id_banco" int4 NOT NULL,
"fe_envio_inst" timestamp,
"id_etapa_envio" int4 NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default",
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ejecucion_pago
-- ----------------------------

-- ----------------------------
-- Table structure for ente
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."ente";
CREATE TABLE "pagos"."ente" (
"id_ente" int4 DEFAULT nextval('"pagos".ente_id_ente_seq'::regclass) NOT NULL,
"nb_ente" varchar(100) COLLATE "default" NOT NULL,
"id_tipo_ente" int4 NOT NULL,
"id_grupo_ente" int4 NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default",
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ente
-- ----------------------------
INSERT INTO "pagos"."ente" VALUES ('1', 'BCV', '1', '4', null, '1', '1', null, null);
INSERT INTO "pagos"."ente" VALUES ('2', 'FONDEN', '1', '4', null, '1', '1', null, null);
INSERT INTO "pagos"."ente" VALUES ('3', 'CORPOVEX', '1', '4', null, '1', '1', null, null);
INSERT INTO "pagos"."ente" VALUES ('5', 'MPP EDUCACION', '3', '4', null, '1', '1', null, null);
INSERT INTO "pagos"."ente" VALUES ('7', 'MPP ECONOMIA Y FINANZAS', '3', '4', null, '1', '1', null, null);
INSERT INTO "pagos"."ente" VALUES ('8', 'GOBERNACION TACHIRA', '2', '4', null, '1', '1', null, null);
INSERT INTO "pagos"."ente" VALUES ('10', 'MPP ECONOMIA Y FINANZAS', '3', '5', null, '1', '1', null, null);
INSERT INTO "pagos"."ente" VALUES ('13', 'MPP EDUCACION', '3', '5', null, '1', '1', null, null);
INSERT INTO "pagos"."ente" VALUES ('15', 'GOBERNACION TACHIRA', '2', '5', null, '1', '1', null, null);

-- ----------------------------
-- Table structure for esquema
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."esquema";
CREATE TABLE "pagos"."esquema" (
"id_esquema" int4 DEFAULT nextval('"pagos".esquema_id_esquema_seq'::regclass) NOT NULL,
"nb_esquema" varchar(50) COLLATE "default" NOT NULL,
"tx_requerimiento" varchar(50) COLLATE "default" NOT NULL,
"id_esquema_padre" varchar(50) COLLATE "default" DEFAULT 0 NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of esquema
-- ----------------------------
INSERT INTO "pagos"."esquema" VALUES ('1', 'VOI', 'NRO VOI', '0', 'N/A', '1', '1', null, null);
INSERT INTO "pagos"."esquema" VALUES ('2', 'CENCOEX', 'NRO SOLICITUD', '0', 'N/A', '1', '1', null, null);
INSERT INTO "pagos"."esquema" VALUES ('3', 'PAGOS PROPIOS BCV', 'N/A', '0', 'N/A', '1', '1', null, null);
INSERT INTO "pagos"."esquema" VALUES ('4', 'INSTRUCCION BCV', 'TIPO', '0', 'N/A', '1', '1', null, null);
INSERT INTO "pagos"."esquema" VALUES ('5', 'DEUDA', 'TIPO', '4', 'N/A', '1', '1', null, null);
INSERT INTO "pagos"."esquema" VALUES ('6', 'GASTOS REPRESENTACION', 'TIPO', '4', 'N/A', '1', '1', null, null);
INSERT INTO "pagos"."esquema" VALUES ('7', 'ONT', 'TIPO', '4', 'N/A', '1', '1', null, null);
INSERT INTO "pagos"."esquema" VALUES ('8', 'GASTO PROPIO ENTE', 'TIPO', '0', 'N/A', '1', '1', null, null);

-- ----------------------------
-- Table structure for etapa_envio
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."etapa_envio";
CREATE TABLE "pagos"."etapa_envio" (
"id_etapa_envio" int4 DEFAULT nextval('"pagos".etapa_envio_id_etapa_envio_seq'::regclass) NOT NULL,
"nb_etapa_envio" varchar(50) COLLATE "default",
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of etapa_envio
-- ----------------------------
INSERT INTO "pagos"."etapa_envio" VALUES ('1', 'CORRESPONSAL', null, '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."etapa_envio" VALUES ('2', 'INTERMEDIARIO', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."etapa_envio" VALUES ('3', 'BENEFICIARIO', 'N/A', '1', '1', '2018-06-08 00:00:00', null);

-- ----------------------------
-- Table structure for grupo_banco
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."grupo_banco";
CREATE TABLE "pagos"."grupo_banco" (
"id_grupo_banco" int4 DEFAULT nextval('"pagos".grupo_banco_id_grupo_banco_seq'::regclass) NOT NULL,
"nb_grupo_banco" varchar(30) COLLATE "default",
"tx_observaciones" varchar(100) COLLATE "default",
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of grupo_banco
-- ----------------------------
INSERT INTO "pagos"."grupo_banco" VALUES ('1', 'RECEPTOR', null, '1', '1', null, null);
INSERT INTO "pagos"."grupo_banco" VALUES ('2', 'CORRESPONSAL', null, '1', '1', null, null);
INSERT INTO "pagos"."grupo_banco" VALUES ('3', 'BENEFICIARIO', null, '1', '1', null, null);
INSERT INTO "pagos"."grupo_banco" VALUES ('4', 'RESPONSABLE PAGO (NAC)', null, '1', '1', null, null);

-- ----------------------------
-- Table structure for grupo_ente
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."grupo_ente";
CREATE TABLE "pagos"."grupo_ente" (
"id_grupo_ente" int4 DEFAULT nextval('"pagos".grupo_ente_id_grupo_ente_seq'::regclass) NOT NULL,
"nb_grupo_ente" varchar(50) COLLATE "default",
"tx_observaciones" varchar(100) COLLATE "default",
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of grupo_ente
-- ----------------------------
INSERT INTO "pagos"."grupo_ente" VALUES ('4', 'RECEPTOR', null, '1', '1', '2018-06-12 00:00:00', null);
INSERT INTO "pagos"."grupo_ente" VALUES ('5', 'SOLICITANTE', null, '1', '1', '2018-06-12 00:00:00', null);

-- ----------------------------
-- Table structure for grupo_financiero
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."grupo_financiero";
CREATE TABLE "pagos"."grupo_financiero" (
"id_grupo_financiero" int4 DEFAULT nextval('"pagos".grupo_financiero_id_grupo_financiero_seq'::regclass) NOT NULL,
"nb_grupo_financiero" varchar(100) COLLATE "default" NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of grupo_financiero
-- ----------------------------
INSERT INTO "pagos"."grupo_financiero" VALUES ('1', 'RECEPTOR', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."grupo_financiero" VALUES ('2', 'CORRESPONSAL', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."grupo_financiero" VALUES ('3', 'BENEFICIARIO', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."grupo_financiero" VALUES ('4', 'RESPONSABLE PAGO (NAC)', 'N/A', '1', '1', '2018-06-08 00:00:00', null);

-- ----------------------------
-- Table structure for grupo_status
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."grupo_status";
CREATE TABLE "pagos"."grupo_status" (
"id_grupo_status" int4 DEFAULT nextval('"pagos".grupo_status_id_grupo_status_seq'::regclass) NOT NULL,
"nb_grupo" varchar(100) COLLATE "default",
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pagos"."grupo_status" IS 'Tabla que categoriza los grupos para definir estaus por grupos creados';
COMMENT ON COLUMN "pagos"."grupo_status"."id_grupo_status" IS 'Identificador único de la tabla grupo_status';
COMMENT ON COLUMN "pagos"."grupo_status"."nb_grupo" IS 'Nombre dado al grupo';
COMMENT ON COLUMN "pagos"."grupo_status"."tx_observaciones" IS 'Observaciones en caso de aplicar al campo insertado o modificado';
COMMENT ON COLUMN "pagos"."grupo_status"."id_usuario" IS 'Id usuario que interviene en el registro';
COMMENT ON COLUMN "pagos"."grupo_status"."id_status" IS 'Estatus del registro actual';
COMMENT ON COLUMN "pagos"."grupo_status"."fe_creado" IS 'Fecha y hora de la creación del registro';
COMMENT ON COLUMN "pagos"."grupo_status"."fe_actualizado" IS 'Fecha y hora de actualización del registro';

-- ----------------------------
-- Records of grupo_status
-- ----------------------------
INSERT INTO "pagos"."grupo_status" VALUES ('1', 'Instrución', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."grupo_status" VALUES ('2', 'Solicitud', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."grupo_status" VALUES ('3', 'Pago', 'N/A', '1', '1', '2018-06-20 00:00:00', null);
INSERT INTO "pagos"."grupo_status" VALUES ('4', 'Ingreso', 'N/A', '1', '1', '2018-06-20 00:00:00', null);
INSERT INTO "pagos"."grupo_status" VALUES ('5', 'General', 'N/A', '1', '1', '2018-06-24 00:00:00', null);

-- ----------------------------
-- Table structure for ingreso
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."ingreso";
CREATE TABLE "pagos"."ingreso" (
"id_ingreso" int4 DEFAULT nextval('"pagos".ingreso_id_ingreso_seq'::regclass) NOT NULL,
"id_tipo_ingreso" int4,
"id_ente" int4,
"id_moneda" int4,
"mo_ingreso" numeric(15,2),
"mo_tasa" numeric(5,2),
"fe_ingreso" timestamp,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp,
"fe_actualizado" timestamp,
"id_banco" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ingreso
-- ----------------------------

-- ----------------------------
-- Table structure for instruccion
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."instruccion";
CREATE TABLE "pagos"."instruccion" (
"id_instruccion" int4 DEFAULT nextval('"pagos".instruccion_id_instruccion_seq'::regclass) NOT NULL,
"id_solicitud" int4 NOT NULL,
"tx_concepto" varchar(100) COLLATE "default",
"id_esquema" int4 NOT NULL,
"nu_esquema" varchar(20) COLLATE "default",
"tx_ofi_cta_mte" varchar(20) COLLATE "default",
"bo_ofi_cta_mte" bool,
"fe_instruccion" timestamp,
"mo_instruccion" numeric(15,2),
"id_moneda" int4 NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default",
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of instruccion
-- ----------------------------

-- ----------------------------
-- Table structure for moneda
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."moneda";
CREATE TABLE "pagos"."moneda" (
"id_moneda" int4 DEFAULT nextval('"pagos".moneda_id_moneda_seq'::regclass) NOT NULL,
"nb_moneda" varchar(25) COLLATE "default",
"co_moneda" varchar(5) COLLATE "default",
"tx_signo" varchar(3) COLLATE "default",
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pagos"."moneda" IS 'Define las monedas existentes y que funcionaran en el aplicativo';
COMMENT ON COLUMN "pagos"."moneda"."id_moneda" IS 'Identificador único de la tabla moneda';
COMMENT ON COLUMN "pagos"."moneda"."co_moneda" IS 'Codigo de la moneda';
COMMENT ON COLUMN "pagos"."moneda"."tx_observaciones" IS 'Observaciones en caso de aplicar al campo insertado o modificado';
COMMENT ON COLUMN "pagos"."moneda"."id_usuario" IS 'Id usuario que interviene en el registro';
COMMENT ON COLUMN "pagos"."moneda"."id_status" IS 'Estatus del registro actual';
COMMENT ON COLUMN "pagos"."moneda"."fe_creado" IS 'Fecha y hora de la creación del registro';
COMMENT ON COLUMN "pagos"."moneda"."fe_actualizado" IS 'Fecha y hora de actualización del registro';

-- ----------------------------
-- Records of moneda
-- ----------------------------
INSERT INTO "pagos"."moneda" VALUES ('1', 'Dolar', 'USD', '$', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."moneda" VALUES ('2', 'Euro', 'EUR', '€', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."moneda" VALUES ('3', 'Reminbi', 'RMB', '¥', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."moneda" VALUES ('4', 'Rublo', 'RUB', '₽', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."moneda" VALUES ('5', 'Dirham', 'AED', 'Dhs', 'N/A', '1', '1', '2018-06-08 00:00:00', null);

-- ----------------------------
-- Table structure for pago
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."pago";
CREATE TABLE "pagos"."pago" (
"id_pago" int4 DEFAULT nextval('"pagos".pagos_id_pago_seq'::regclass) NOT NULL,
"id_instruccion" int4 NOT NULL,
"fe_liq_bcv" timestamp,
"id_banco" int4 NOT NULL,
"fe_pago" timestamp,
"id_moneda" int4 NOT NULL,
"mo_tasa" numeric(5,2) NOT NULL,
"mo_final_pago" numeric(15,2),
"id_tipo_pago" int4 NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default",
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of pago
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."password_resets";
CREATE TABLE "pagos"."password_resets" (
"email" varchar(255) COLLATE "default" NOT NULL,
"token" varchar(255) COLLATE "default" NOT NULL,
"created_at" timestamp
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO "pagos"."password_resets" VALUES ('cgranados@bandes.gob.ve', '$2y$10$p2uwRfD7RATtuCoCkAdA7.Mi0EW2R7pq.aibKIXXmy8MDuZPIquzW', '2018-06-11 12:19:36');
INSERT INTO "pagos"."password_resets" VALUES ('lyustis@gmail.com', '$2y$10$bkbN9hwCGmzhPhIbClz8gexKRa8Gwx5NcWrhCsyLXM430lYQA7VbK', '2018-06-08 03:41:35');

-- ----------------------------
-- Table structure for solicitud
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."solicitud";
CREATE TABLE "pagos"."solicitud" (
"id_solicitud" int4 DEFAULT nextval('"pagos".solicitud_id_solicitud_seq'::regclass) NOT NULL,
"nu_solicitud" varchar(25) COLLATE "default",
"tx_concepto" varchar(200) COLLATE "default",
"mo_solicitud" numeric(15,2),
"fe_solicitud" timestamp,
"id_ente" int4 NOT NULL,
"id_moneda" int4 NOT NULL,
"id_categoria" int4 NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of solicitud
-- ----------------------------

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."status";
CREATE TABLE "pagos"."status" (
"id_status" int4 DEFAULT nextval('"pagos".status_id_status_seq'::regclass) NOT NULL,
"nb_status" varchar(150) COLLATE "default",
"co_status" varchar(10) COLLATE "default",
"nb_secundario" varchar(50) COLLATE "default",
"id_grupo" int4 NOT NULL,
"bo_status" bool NOT NULL,
"id_padre" int4,
"tx_observaciones" varchar(150) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"fe_creado" timestamp,
"fe_actualizado" timestamp,
"bo_credito" bool,
"bo_debito" bool,
"bo_oculto" bool,
"nu_orden" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pagos"."status" IS 'Tabla para los estatus de los sistemas ';
COMMENT ON COLUMN "pagos"."status"."id_status" IS 'Identificacdor único de la tabla Status';
COMMENT ON COLUMN "pagos"."status"."nb_status" IS 'Nombre del status';
COMMENT ON COLUMN "pagos"."status"."co_status" IS 'código del segundo estatus secundario';
COMMENT ON COLUMN "pagos"."status"."nb_secundario" IS 'Nombre del estatus secundario';
COMMENT ON COLUMN "pagos"."status"."id_grupo" IS 'Identificador de la tabla grupo';
COMMENT ON COLUMN "pagos"."status"."bo_status" IS 'Id status detalle';
COMMENT ON COLUMN "pagos"."status"."id_padre" IS 'Estatus principal a quien pertenece';
COMMENT ON COLUMN "pagos"."status"."tx_observaciones" IS 'Observación del registro estatus';
COMMENT ON COLUMN "pagos"."status"."id_usuario" IS 'id del usuario que realiza la acción';
COMMENT ON COLUMN "pagos"."status"."fe_creado" IS 'Fecha y hora de la creación del registro';
COMMENT ON COLUMN "pagos"."status"."fe_actualizado" IS 'Fecha y hora de modificación del registro';

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO "pagos"."status" VALUES ('1', 'Confirmado', 'COING', 'Confirmado (Ingreso)', '4', 't', '0', 'N/A', '1', '2018-06-08 00:00:00', null, 't', null, null, '1');
INSERT INTO "pagos"."status" VALUES ('2', 'Pendiente', 'PEING', 'Pendiente (Ingreso)', '4', 't', '0', 'N/A', '1', '2018-06-08 00:00:00', null, null, null, null, '2');
INSERT INTO "pagos"."status" VALUES ('4', 'Toda la documentación en regla', 'TDERSOL', 'Documentación en regla (solicitud)', '2', 't', '0', 'N/A', '1', '2018-06-20 00:00:00', null, null, null, null, '1');
INSERT INTO "pagos"."status" VALUES ('6', 'A la espera de documentación', 'AEDSOL', 'A la espera de documentación (solicitud)', '2', 't', '0', 'N/A', '1', '2018-06-20 00:00:00', null, null, null, null, '2');
INSERT INTO "pagos"."status" VALUES ('8', 'A la espera de documentación', 'AEDINST', 'A la espera de documentación (instrución)', '1', 't', '0', 'N/A', '1', '2018-06-20 00:00:00', null, null, null, null, '1');
INSERT INTO "pagos"."status" VALUES ('9', 'Documentación en regla en proceso de instrucción', 'TDERINST', 'Documentación en regla en proceso de instrucción (', '1', 't', '0', 'N/A', '1', '2018-06-20 00:00:00', null, null, null, null, '2');
INSERT INTO "pagos"."status" VALUES ('10', 'En Tránsito', 'ETPAG', 'En Tránsito (pago)', '3', 't', '0', 'N/A', '1', '2018-06-20 00:00:00', null, null, null, null, '1');
INSERT INTO "pagos"."status" VALUES ('11', 'Devuelto', 'DEVPAG', 'Devuelto (pago)', '3', 't', '0', 'N/A', '1', '2018-06-20 00:00:00', null, null, null, null, '2');
INSERT INTO "pagos"."status" VALUES ('12', 'Anulado', 'ANUPAG', 'Anulado (pago)', '3', 't', '0', 'N/A', '1', '2018-06-20 00:00:00', null, null, null, null, '3');
INSERT INTO "pagos"."status" VALUES ('13', 'Acreditado', 'ACRPAG', 'Acreditado (pago)', '3', 't', '0', 'N/A', '1', '2018-06-20 00:00:00', null, null, 't', null, '4');
INSERT INTO "pagos"."status" VALUES ('15', 'Políticas internas', 'PIPAGDE', 'Políticas internas (devuelto)', '3', 't', '11', 'N/A', '1', '2018-06-20 00:00:00', null, null, null, null, '5');
INSERT INTO "pagos"."status" VALUES ('16', 'Coordenadas erradas', 'CEPAGDE', 'Coordenadas erradas (devuelto)', '3', 't', '11', 'N/A', '1', '2018-06-20 00:00:00', null, null, null, null, '6');
INSERT INTO "pagos"."status" VALUES ('17', 'Documentación incompleta', 'DIPAGDE', 'Documentación incompleta devuelto', '3', 't', '11', 'N/A', '1', '2018-06-20 00:00:00', null, null, null, null, '7');
INSERT INTO "pagos"."status" VALUES ('18', 'Políticas internas', 'PIPAGAN', 'Políticas internas (anulado)', '3', 't', '12', 'N/A', '1', '2018-06-20 00:00:00', null, null, null, null, '8');
INSERT INTO "pagos"."status" VALUES ('20', 'Coordenadas erradas', 'CEPAGAN', 'Coordenadas erradas anulado', '3', 't', '12', 'N/A', '1', '2018-06-20 00:00:00', null, null, null, null, '9');
INSERT INTO "pagos"."status" VALUES ('21', 'Documentación incompleta', 'DIPAGAN', 'Documentación incompleta (anulado)', '3', 't', '12', 'N/A', '1', '2018-06-20 00:00:00', null, null, null, null, '10');
INSERT INTO "pagos"."status" VALUES ('22', 'Activo', 'ACT', 'Activo', '5', 't', '0', 'N/A', '1', '2018-06-25 00:00:00', null, 'f', 'f', null, '1');
INSERT INTO "pagos"."status" VALUES ('23', 'Inactivo', 'INAC', 'Inactivo', '5', 't', '0', 'N/A', '1', '2018-06-25 00:00:00', null, 'f', 'f', null, '2');
INSERT INTO "pagos"."status" VALUES ('24', 'Anulado', 'ANU', 'Anulado', '5', 't', '0', 'N/A', '1', '2018-06-25 00:00:00', null, 'f', 'f', null, '3');
INSERT INTO "pagos"."status" VALUES ('26', 'Cancelado', 'CAN', 'Cancelado', '5', 't', '0', 'N/A', '1', '2018-06-25 00:00:00', null, 'f', 'f', null, '4');

-- ----------------------------
-- Table structure for tasa
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tasa";
CREATE TABLE "pagos"."tasa" (
"id_tasa" int4 DEFAULT nextval('"pagos".tasa_id_tasa_seq'::regclass) NOT NULL,
"id_moneda" int4,
"mo_tasa" numeric(5,2),
"fe_tasa" timestamp,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pagos"."tasa" IS 'TABLA QUE DEFINE LOS VALORES DE LAS TASAS ACTUALES ACTIVAS E INACTIVAS';
COMMENT ON COLUMN "pagos"."tasa"."id_tasa" IS 'Indentificador único del registro';
COMMENT ON COLUMN "pagos"."tasa"."id_moneda" IS 'id moneda a quien se le aplica la tasa';
COMMENT ON COLUMN "pagos"."tasa"."mo_tasa" IS 'Monto o valor de la tasa aplicada a la moneda';
COMMENT ON COLUMN "pagos"."tasa"."fe_tasa" IS 'Fecha registro de la tasa';
COMMENT ON COLUMN "pagos"."tasa"."tx_observaciones" IS 'Observaciones en caso de aplicar al campo insertado o modificado';
COMMENT ON COLUMN "pagos"."tasa"."id_usuario" IS 'Id usuario que interviene en el registro';
COMMENT ON COLUMN "pagos"."tasa"."id_status" IS 'Estatus del registro actual';
COMMENT ON COLUMN "pagos"."tasa"."fe_creado" IS 'Fecha y hora de la creación del registro';
COMMENT ON COLUMN "pagos"."tasa"."fe_actualizado" IS 'Fecha y hora de actualización del registro';

-- ----------------------------
-- Records of tasa
-- ----------------------------
INSERT INTO "pagos"."tasa" VALUES ('1', '1', '24.20', '2018-06-08 00:00:00', 'N/A', '1', '1', '2018-06-08 00:00:00', null);

-- ----------------------------
-- Table structure for tipo_banco
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tipo_banco";
CREATE TABLE "pagos"."tipo_banco" (
"id_tipo_banco" int4 DEFAULT nextval('"pagos".tipo_banco_id_tipo_banco_seq'::regclass) NOT NULL,
"nb_tipo_banco" varchar(50) COLLATE "default",
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pagos"."tipo_banco" IS 'TABLA QUE CONTIENE TIPOS DE BANCO EXISTENTE (NACIONAL - INTEERNACIONAL )';
COMMENT ON COLUMN "pagos"."tipo_banco"."id_tipo_banco" IS 'IDENTIFICADOR ÚNICO DEL REGISTRO TABLA TIPO BANCO ';
COMMENT ON COLUMN "pagos"."tipo_banco"."nb_tipo_banco" IS 'NOMBRE DEL TIPO DE BANCO ';
COMMENT ON COLUMN "pagos"."tipo_banco"."tx_observaciones" IS 'Observaciones en caso de aplicar al campo insertado o modificado';
COMMENT ON COLUMN "pagos"."tipo_banco"."id_usuario" IS 'Id usuario que interviene en el registro';
COMMENT ON COLUMN "pagos"."tipo_banco"."id_status" IS 'Estatus del registro actual';
COMMENT ON COLUMN "pagos"."tipo_banco"."fe_creado" IS 'Fecha y hora de la creación del registro';
COMMENT ON COLUMN "pagos"."tipo_banco"."fe_actualizado" IS 'Fecha y hora de actualización del registro';

-- ----------------------------
-- Records of tipo_banco
-- ----------------------------
INSERT INTO "pagos"."tipo_banco" VALUES ('1', 'Nacional', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."tipo_banco" VALUES ('2', 'Internacional', 'N/A', '1', '1', '2018-06-08 00:00:00', null);

-- ----------------------------
-- Table structure for tipo_ente
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tipo_ente";
CREATE TABLE "pagos"."tipo_ente" (
"id_tipo_ente" int4 DEFAULT nextval('"pagos".tipo_ente_id_tipo_ente_seq'::regclass) NOT NULL,
"nb_tipo_ente" varchar(100) COLLATE "default" NOT NULL,
"id_clase_ente" int4 NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tipo_ente
-- ----------------------------
INSERT INTO "pagos"."tipo_ente" VALUES ('1', 'ALCALDIAS', '1', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."tipo_ente" VALUES ('2', 'GOBERNACIONES', '1', 'N/A', '1', '1', '2018-06-12 00:00:00', null);
INSERT INTO "pagos"."tipo_ente" VALUES ('3', 'MINISTERIOS', '1', 'N/A', '1', '1', '2018-06-12 00:00:00', null);

-- ----------------------------
-- Table structure for tipo_ingreso
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tipo_ingreso";
CREATE TABLE "pagos"."tipo_ingreso" (
"id_tipo_ingreso" int4 DEFAULT nextval('"pagos".tipo_ingreso_id_tipo_ingreso_seq'::regclass) NOT NULL,
"nb_tipo_ingreso" varchar(100) COLLATE "default",
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pagos"."tipo_ingreso" IS 'TABLA QUE CONTIENE TIPO DE INGRESO EXISTENTES';
COMMENT ON COLUMN "pagos"."tipo_ingreso"."id_tipo_ingreso" IS 'IDENTIFICADOR UNICO DEL REGISTRO';
COMMENT ON COLUMN "pagos"."tipo_ingreso"."nb_tipo_ingreso" IS 'NOMBRE DEL TIPO DE INGRESO';
COMMENT ON COLUMN "pagos"."tipo_ingreso"."tx_observaciones" IS 'Observaciones en caso de aplicar al campo insertado o modificado';
COMMENT ON COLUMN "pagos"."tipo_ingreso"."id_usuario" IS 'Id usuario que interviene en el registro';
COMMENT ON COLUMN "pagos"."tipo_ingreso"."id_status" IS 'Estatus del registro actual';
COMMENT ON COLUMN "pagos"."tipo_ingreso"."fe_creado" IS 'Fecha y hora de la creación del registro';
COMMENT ON COLUMN "pagos"."tipo_ingreso"."fe_actualizado" IS 'Fecha y hora de actualización del registro';

-- ----------------------------
-- Records of tipo_ingreso
-- ----------------------------
INSERT INTO "pagos"."tipo_ingreso" VALUES ('1', 'PDVSA', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."tipo_ingreso" VALUES ('2', 'VENTA DE ORO', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."tipo_ingreso" VALUES ('3', 'PRESTAMOS DE ORGANISMOS MULTILATERAL', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."tipo_ingreso" VALUES ('4', 'PRESTAMO DE PAÍS', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."tipo_ingreso" VALUES ('5', 'RETIRO DE CUENTAS COLECTORAS', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."tipo_ingreso" VALUES ('6', 'VENTA DE DIVISAS ORGANISMOS PÚBLICOS', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."tipo_ingreso" VALUES ('7', 'VENTA DE DIVISAS DICOM - PRIVADOS', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."tipo_ingreso" VALUES ('8', 'INGRESOS PROPIOS', 'N/A', '1', '1', '2018-06-08 00:00:00', null);

-- ----------------------------
-- Table structure for tipo_pago
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tipo_pago";
CREATE TABLE "pagos"."tipo_pago" (
"id_tipo_pago" int4 DEFAULT nextval('"pagos".tipo_pago_id_tipo_pago_seq'::regclass) NOT NULL,
"nb_tipo_pago" varchar(50) COLLATE "default",
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tipo_pago
-- ----------------------------
INSERT INTO "pagos"."tipo_pago" VALUES ('1', 'Total', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."tipo_pago" VALUES ('2', 'Parcial', 'N/A', '1', '1', '2018-06-08 00:00:00', null);

-- ----------------------------
-- Table structure for tr_bitacora
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tr_bitacora";
CREATE TABLE "pagos"."tr_bitacora" (
"id_bitacora" int4 DEFAULT nextval('"pagos".tr_bitacora_id_bitacora_seq'::regclass) NOT NULL,
"co_accion" varchar(50) COLLATE "default" NOT NULL,
"tx_tabla" varchar(100) COLLATE "default" NOT NULL,
"in_id_tabla" int4 NOT NULL,
"tx_old_valor" varchar(2000) COLLATE "default",
"tx_new_valor" varchar(2000) COLLATE "default",
"fe_accion" timestamp,
"id_usuario" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tr_bitacora
-- ----------------------------
INSERT INTO "pagos"."tr_bitacora" VALUES ('1', 'UPD', 'tipo_banco', '1', '(1,NACIONAL,N/A,1,1,"2018-06-08 00:00:00",)', '(1,Nacional,N/A,1,1,"2018-06-08 00:00:00",)', '2018-07-05 13:26:46', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('2', 'UPD', 'tipo_banco', '2', '(2,INTERNACIONAL,N/A,1,1,"2018-06-08 00:00:00",)', '(2,Internacional,N/A,1,1,"2018-06-08 00:00:00",)', '2018-07-05 13:26:54', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."users";
CREATE TABLE "pagos"."users" (
"id" int4 DEFAULT nextval('"pagos".users_id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"email" varchar(255) COLLATE "default" NOT NULL,
"password" varchar(255) COLLATE "default" NOT NULL,
"remember_token" varchar(100) COLLATE "default",
"created_at" timestamp,
"updated_at" timestamp
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "pagos"."users" VALUES ('1', 'luisa', 'lyustis@gmail.com', '$2y$10$6Qs4V0VTicMSgbL8crvEgef.TL5aOEDmuI/NkCrmOgADWwTlxSi66', 'PD3OMZX63KE6EPS3GPRpXjdMnWRBSIxg4ihU4ch6tGU6BjhM00Q4a7PUX6xf', null, '2018-06-09 15:32:29');
INSERT INTO "pagos"."users" VALUES ('4', 'carlos', 'cgranados@bandes.gob.ve', '$2y$10$6Qs4V0VTicMSgbL8crvEgef.TL5aOEDmuI/NkCrmOgADWwTlxSi66', '338W36NHAFmrSauuDL5L7awis4RxwmV95JR42bJUhnFeu8DoFDDWzQz2ylZ9', null, null);

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."usuario";
CREATE TABLE "pagos"."usuario" (
"id_usuario" int4 DEFAULT nextval('"pagos".usuario_id_usuario_seq'::regclass) NOT NULL,
"tx_usuario" varchar(50) COLLATE "default",
"tx_password" varchar(100) COLLATE "default",
"nu_cedula" int4,
"nb_nombre" varchar(50) COLLATE "default",
"nb_apellido" varchar(50) COLLATE "default",
"tx_observaciones" varchar(100) COLLATE "default",
"id_status" int4,
"fe_creado" timestamp,
"fe_actualizado" timestamp
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "pagos"."usuario"."id_usuario" IS 'Identificador único de la tabla Usuario';
COMMENT ON COLUMN "pagos"."usuario"."tx_usuario" IS 'Nombre del usuario ';
COMMENT ON COLUMN "pagos"."usuario"."tx_password" IS 'Password o clave del usuario';
COMMENT ON COLUMN "pagos"."usuario"."nu_cedula" IS 'Número Cédula';
COMMENT ON COLUMN "pagos"."usuario"."nb_nombre" IS 'Nombre del Usuario';
COMMENT ON COLUMN "pagos"."usuario"."nb_apellido" IS 'Apellidos del Usuario';
COMMENT ON COLUMN "pagos"."usuario"."tx_observaciones" IS 'Observaciones en caso de aplicar al campo insertado o modificado';
COMMENT ON COLUMN "pagos"."usuario"."id_status" IS 'Estatus del registro actual';
COMMENT ON COLUMN "pagos"."usuario"."fe_creado" IS 'Fecha y hora de la creación del registro';
COMMENT ON COLUMN "pagos"."usuario"."fe_actualizado" IS 'Fecha y hora de actualización del registro';

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO "pagos"."usuario" VALUES ('1', 'lyustis', '123456', '12345678', 'Luis ', 'Yustiz', null, '1', '2018-06-27 00:00:00', null);
INSERT INTO "pagos"."usuario" VALUES ('2', 'dramirez', '123456', '12980546', 'Dayana', 'Ramirez', null, '1', '2018-06-27 00:00:00', null);

-- ----------------------------
-- View structure for vw_banco
-- ----------------------------
CREATE OR REPLACE VIEW "pagos"."vw_banco" AS 
 SELECT ba.id_banco,
    ba.nb_banco,
    ba.id_tipo_banco,
    tb.nb_tipo_banco,
    ba.id_grupo_banco,
    gb.nb_grupo_banco,
    ba.tx_observaciones,
    ba.id_usuario,
    btrim((((us.nb_nombre)::text || ' '::text) || (us.nb_apellido)::text)) AS nb_usuario,
    ba.id_status,
    st.nb_status,
    ba.fe_creado,
    ba.fe_actualizado
   FROM ((((pagos.banco ba
     JOIN pagos.tipo_banco tb ON ((tb.id_tipo_banco = ba.id_tipo_banco)))
     JOIN pagos.grupo_banco gb ON ((gb.id_grupo_banco = ba.id_grupo_banco)))
     JOIN pagos.usuario us ON ((us.id_usuario = ba.id_usuario)))
     JOIN pagos.status st ON ((st.id_status = ba.id_status)));

-- ----------------------------
-- View structure for vw_bitacora
-- ----------------------------
CREATE OR REPLACE VIEW "pagos"."vw_bitacora" AS 
 SELECT b.co_accion,
    b.tx_tabla,
    b.in_id_tabla,
    b.tx_old_valor,
    b.tx_new_valor,
    b.fe_accion,
    b.id_usuario,
    btrim((((u.nb_nombre)::text || ' '::text) || (u.nb_apellido)::text)) AS nb_usuario
   FROM (pagos.tr_bitacora b
     JOIN pagos.usuario u ON ((b.id_usuario = u.id_usuario)));

-- ----------------------------
-- View structure for vw_segpago
-- ----------------------------
CREATE OR REPLACE VIEW "pagos"."vw_segpago" AS 
 SELECT s.tx_concepto,
    s.mo_solicitud,
    s.fe_solicitud,
    s.id_ente,
    e.nb_ente AS nb_ente_solic,
    s.id_moneda AS id_moneda_solic,
    ( SELECT m_1.nb_moneda
           FROM pagos.moneda m_1
          WHERE (m_1.id_moneda = s.id_moneda)) AS nb_moned_solic,
    s.id_status AS id_status_solic,
    ( SELECT st.nb_status
           FROM pagos.status st
          WHERE (st.id_status = s.id_status)) AS nb_status_solic,
    i.fe_instruccion,
    i.mo_instruccion,
    i.id_moneda AS id_moneda_inst,
    ( SELECT m_1.nb_moneda
           FROM pagos.moneda m_1
          WHERE (m_1.id_moneda = i.id_moneda)) AS nb_moned_inst,
    i.id_status AS id_status_inst,
    ( SELECT s_1.nb_status
           FROM pagos.status s_1
          WHERE (s_1.id_status = i.id_status)) AS nb_status_inst,
    i.id_esquema,
    ( SELECT e_1.nb_esquema
           FROM pagos.esquema e_1
          WHERE (e_1.id_esquema = i.id_esquema)) AS nb_esqma_inst,
    i.nu_esquema,
    p.mo_tasa,
    p.mo_final_pago,
    p.fe_pago,
    p.id_banco AS id_banco_pago,
    ( SELECT b.nb_banco
           FROM pagos.banco b
          WHERE (b.id_banco = p.id_banco)) AS nb_banco_pago,
    p.id_moneda AS id_moneda_pago,
    ( SELECT m_1.nb_moneda
           FROM pagos.moneda m_1
          WHERE (m_1.id_moneda = p.id_moneda)) AS nb_moneda_pago,
    p.id_tipo_pago,
    ( SELECT tp.nb_tipo_pago
           FROM pagos.tipo_pago tp
          WHERE (tp.id_tipo_pago = p.id_tipo_pago)) AS nb_tppago_pago,
    p.id_status AS id_status_pago,
    ( SELECT s_1.nb_status
           FROM pagos.status s_1
          WHERE (s_1.id_status = p.id_status)) AS nb_status_pag,
    ep.id_banco,
    ( SELECT b.nb_banco
           FROM pagos.banco b
          WHERE (b.id_banco = ep.id_banco)) AS nb_bco_ejepag,
    ep.id_etapa_envio,
    ( SELECT ee.nb_etapa_envio
           FROM pagos.etapa_envio ee
          WHERE (ee.id_etapa_envio = ep.id_etapa_envio)) AS nb_etap_env,
    ep.id_status AS id_status_ejpg,
    ( SELECT s_1.nb_status
           FROM pagos.status s_1
          WHERE (s_1.id_status = ep.id_status)) AS nb_status_ejp
   FROM (((((pagos.solicitud s
     JOIN pagos.instruccion i ON ((s.id_solicitud = i.id_solicitud)))
     JOIN pagos.ente e ON ((s.id_ente = e.id_ente)))
     JOIN pagos.moneda m ON ((s.id_moneda = m.id_moneda)))
     JOIN pagos.pago p ON ((i.id_instruccion = p.id_instruccion)))
     JOIN pagos.ejecucion_pago ep ON ((p.id_pago = ep.id_pago)));

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "pagos"."ejecucion_pago_id_ejecucion_pago_seq" OWNED BY "ejecucion_pago"."id_ejecucion_pago";
ALTER SEQUENCE "pagos"."tr_bitacora_id_bitacora_seq" OWNED BY "tr_bitacora"."id_bitacora";

-- ----------------------------
-- Triggers structure for table banco
-- ----------------------------
CREATE TRIGGER "trg_tr_banco" AFTER INSERT OR UPDATE ON "pagos"."banco"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table banco
-- ----------------------------
ALTER TABLE "pagos"."banco" ADD UNIQUE ("nb_banco");

-- ----------------------------
-- Primary Key structure for table banco
-- ----------------------------
ALTER TABLE "pagos"."banco" ADD PRIMARY KEY ("id_banco");

-- ----------------------------
-- Triggers structure for table categoria
-- ----------------------------
CREATE TRIGGER "trg_tr_categoria" AFTER INSERT OR UPDATE ON "pagos"."categoria"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table categoria
-- ----------------------------
ALTER TABLE "pagos"."categoria" ADD UNIQUE ("nb_categoria");

-- ----------------------------
-- Primary Key structure for table categoria
-- ----------------------------
ALTER TABLE "pagos"."categoria" ADD PRIMARY KEY ("id_categoria");

-- ----------------------------
-- Triggers structure for table clase_ente
-- ----------------------------
CREATE TRIGGER "trg_tr_clase_ente" AFTER INSERT OR UPDATE ON "pagos"."clase_ente"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table clase_ente
-- ----------------------------
ALTER TABLE "pagos"."clase_ente" ADD UNIQUE ("nb_clase_ente");

-- ----------------------------
-- Primary Key structure for table clase_ente
-- ----------------------------
ALTER TABLE "pagos"."clase_ente" ADD PRIMARY KEY ("id_clase_ente");

-- ----------------------------
-- Triggers structure for table cuenta
-- ----------------------------
CREATE TRIGGER "trg_tr_cuenta" AFTER INSERT OR UPDATE ON "pagos"."cuenta"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Primary Key structure for table cuenta
-- ----------------------------
ALTER TABLE "pagos"."cuenta" ADD PRIMARY KEY ("id_cuenta");

-- ----------------------------
-- Triggers structure for table det_cuenta
-- ----------------------------
CREATE TRIGGER "trg_tr_det_cuenta" AFTER INSERT OR UPDATE ON "pagos"."det_cuenta"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Primary Key structure for table det_cuenta
-- ----------------------------
ALTER TABLE "pagos"."det_cuenta" ADD PRIMARY KEY ("id_det_cuenta");

-- ----------------------------
-- Triggers structure for table ejecucion_pago
-- ----------------------------
CREATE TRIGGER "trg_tr_ejecucion_pago" AFTER INSERT OR UPDATE ON "pagos"."ejecucion_pago"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();
CREATE TRIGGER "trg_tr_ejpago_status" AFTER INSERT OR UPDATE ON "pagos"."ejecucion_pago"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_insupd_ejpago_status"();

-- ----------------------------
-- Primary Key structure for table ejecucion_pago
-- ----------------------------
ALTER TABLE "pagos"."ejecucion_pago" ADD PRIMARY KEY ("id_ejecucion_pago");

-- ----------------------------
-- Triggers structure for table ente
-- ----------------------------
CREATE TRIGGER "trg_tr_ente" AFTER INSERT OR UPDATE ON "pagos"."ente"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table ente
-- ----------------------------
ALTER TABLE "pagos"."ente" ADD UNIQUE ("nb_ente", "id_grupo_ente");

-- ----------------------------
-- Primary Key structure for table ente
-- ----------------------------
ALTER TABLE "pagos"."ente" ADD PRIMARY KEY ("id_ente");

-- ----------------------------
-- Triggers structure for table esquema
-- ----------------------------
CREATE TRIGGER "trg_tr_esquema" AFTER INSERT OR UPDATE ON "pagos"."esquema"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table esquema
-- ----------------------------
ALTER TABLE "pagos"."esquema" ADD UNIQUE ("nb_esquema");

-- ----------------------------
-- Primary Key structure for table esquema
-- ----------------------------
ALTER TABLE "pagos"."esquema" ADD PRIMARY KEY ("id_esquema");

-- ----------------------------
-- Triggers structure for table etapa_envio
-- ----------------------------
CREATE TRIGGER "trg_tr_etapa_envio" AFTER INSERT OR UPDATE ON "pagos"."etapa_envio"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table etapa_envio
-- ----------------------------
ALTER TABLE "pagos"."etapa_envio" ADD UNIQUE ("nb_etapa_envio");

-- ----------------------------
-- Primary Key structure for table etapa_envio
-- ----------------------------
ALTER TABLE "pagos"."etapa_envio" ADD PRIMARY KEY ("id_etapa_envio");

-- ----------------------------
-- Triggers structure for table grupo_banco
-- ----------------------------
CREATE TRIGGER "trg_tr_grupo_banco" AFTER INSERT OR UPDATE ON "pagos"."grupo_banco"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table grupo_banco
-- ----------------------------
ALTER TABLE "pagos"."grupo_banco" ADD UNIQUE ("nb_grupo_banco");

-- ----------------------------
-- Primary Key structure for table grupo_banco
-- ----------------------------
ALTER TABLE "pagos"."grupo_banco" ADD PRIMARY KEY ("id_grupo_banco");

-- ----------------------------
-- Triggers structure for table grupo_ente
-- ----------------------------
CREATE TRIGGER "trg_tr_grupo_ente" AFTER INSERT OR UPDATE ON "pagos"."grupo_ente"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table grupo_ente
-- ----------------------------
ALTER TABLE "pagos"."grupo_ente" ADD UNIQUE ("nb_grupo_ente");

-- ----------------------------
-- Primary Key structure for table grupo_ente
-- ----------------------------
ALTER TABLE "pagos"."grupo_ente" ADD PRIMARY KEY ("id_grupo_ente");

-- ----------------------------
-- Triggers structure for table grupo_financiero
-- ----------------------------
CREATE TRIGGER "trg_tr_grupo_financiero" AFTER INSERT OR UPDATE ON "pagos"."grupo_financiero"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table grupo_financiero
-- ----------------------------
ALTER TABLE "pagos"."grupo_financiero" ADD UNIQUE ("nb_grupo_financiero");

-- ----------------------------
-- Primary Key structure for table grupo_financiero
-- ----------------------------
ALTER TABLE "pagos"."grupo_financiero" ADD PRIMARY KEY ("id_grupo_financiero");

-- ----------------------------
-- Triggers structure for table grupo_status
-- ----------------------------
CREATE TRIGGER "trg_tr_grupo_status" AFTER INSERT OR UPDATE ON "pagos"."grupo_status"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table grupo_status
-- ----------------------------
ALTER TABLE "pagos"."grupo_status" ADD UNIQUE ("nb_grupo");

-- ----------------------------
-- Primary Key structure for table grupo_status
-- ----------------------------
ALTER TABLE "pagos"."grupo_status" ADD PRIMARY KEY ("id_grupo_status");

-- ----------------------------
-- Triggers structure for table ingreso
-- ----------------------------
CREATE TRIGGER "trg_cuenta_ins" AFTER INSERT OR UPDATE ON "pagos"."ingreso"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_upd_cuenta"();
CREATE TRIGGER "trg_ingr_mov" AFTER INSERT OR UPDATE ON "pagos"."ingreso"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_insupd_ing_movimiento"();
CREATE TRIGGER "trg_tr_ingreso" AFTER INSERT OR UPDATE ON "pagos"."ingreso"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Primary Key structure for table ingreso
-- ----------------------------
ALTER TABLE "pagos"."ingreso" ADD PRIMARY KEY ("id_ingreso");

-- ----------------------------
-- Triggers structure for table instruccion
-- ----------------------------
CREATE TRIGGER "trg_tr_inst_cuenta" AFTER INSERT OR UPDATE ON "pagos"."instruccion"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_upd_inst_cuenta"();
CREATE TRIGGER "trg_tr_instruccion" AFTER INSERT OR UPDATE ON "pagos"."instruccion"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Primary Key structure for table instruccion
-- ----------------------------
ALTER TABLE "pagos"."instruccion" ADD PRIMARY KEY ("id_instruccion");

-- ----------------------------
-- Triggers structure for table moneda
-- ----------------------------
CREATE TRIGGER "trg_tr_moneda" AFTER INSERT OR UPDATE ON "pagos"."moneda"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table moneda
-- ----------------------------
ALTER TABLE "pagos"."moneda" ADD UNIQUE ("nb_moneda");

-- ----------------------------
-- Primary Key structure for table moneda
-- ----------------------------
ALTER TABLE "pagos"."moneda" ADD PRIMARY KEY ("id_moneda");

-- ----------------------------
-- Triggers structure for table pago
-- ----------------------------
CREATE TRIGGER "trg_pago_mov" AFTER INSERT OR UPDATE ON "pagos"."pago"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_upd_movimiento"();
CREATE TRIGGER "trg_tr_pago" AFTER INSERT OR UPDATE ON "pagos"."pago"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();
CREATE TRIGGER "trg_tr_pago_cuenta" AFTER INSERT OR UPDATE ON "pagos"."pago"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_upd_pago_cuenta"();

-- ----------------------------
-- Primary Key structure for table pago
-- ----------------------------
ALTER TABLE "pagos"."pago" ADD PRIMARY KEY ("id_pago");

-- ----------------------------
-- Indexes structure for table password_resets
-- ----------------------------
CREATE INDEX "password_resets_email_index" ON "pagos"."password_resets" USING btree (email);

-- ----------------------------
-- Triggers structure for table solicitud
-- ----------------------------
CREATE TRIGGER "trg_tr_solicitud" AFTER INSERT OR UPDATE ON "pagos"."solicitud"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Primary Key structure for table solicitud
-- ----------------------------
ALTER TABLE "pagos"."solicitud" ADD PRIMARY KEY ("id_solicitud");

-- ----------------------------
-- Triggers structure for table status
-- ----------------------------
CREATE TRIGGER "trg_tr_status" AFTER INSERT OR UPDATE ON "pagos"."status"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table status
-- ----------------------------
ALTER TABLE "pagos"."status" ADD UNIQUE ("nb_secundario", "co_status");

-- ----------------------------
-- Primary Key structure for table status
-- ----------------------------
ALTER TABLE "pagos"."status" ADD PRIMARY KEY ("id_status");

-- ----------------------------
-- Triggers structure for table tasa
-- ----------------------------
CREATE TRIGGER "trg_tr_tasa" AFTER INSERT OR UPDATE ON "pagos"."tasa"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Primary Key structure for table tasa
-- ----------------------------
ALTER TABLE "pagos"."tasa" ADD PRIMARY KEY ("id_tasa");

-- ----------------------------
-- Triggers structure for table tipo_banco
-- ----------------------------
CREATE TRIGGER "trg_tipo_banco" AFTER INSERT OR UPDATE ON "pagos"."tipo_banco"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table tipo_banco
-- ----------------------------
ALTER TABLE "pagos"."tipo_banco" ADD UNIQUE ("nb_tipo_banco");

-- ----------------------------
-- Primary Key structure for table tipo_banco
-- ----------------------------
ALTER TABLE "pagos"."tipo_banco" ADD PRIMARY KEY ("id_tipo_banco");

-- ----------------------------
-- Triggers structure for table tipo_ente
-- ----------------------------
CREATE TRIGGER "trg_tipo_ente" AFTER INSERT OR UPDATE ON "pagos"."tipo_ente"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table tipo_ente
-- ----------------------------
ALTER TABLE "pagos"."tipo_ente" ADD UNIQUE ("nb_tipo_ente");

-- ----------------------------
-- Primary Key structure for table tipo_ente
-- ----------------------------
ALTER TABLE "pagos"."tipo_ente" ADD PRIMARY KEY ("id_tipo_ente");

-- ----------------------------
-- Triggers structure for table tipo_ingreso
-- ----------------------------
CREATE TRIGGER "trg_tipo_ingreso" AFTER INSERT OR UPDATE ON "pagos"."tipo_ingreso"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();
CREATE TRIGGER "trg_tpingresoo" AFTER INSERT OR UPDATE ON "pagos"."tipo_ingreso"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table tipo_ingreso
-- ----------------------------
ALTER TABLE "pagos"."tipo_ingreso" ADD UNIQUE ("nb_tipo_ingreso");

-- ----------------------------
-- Primary Key structure for table tipo_ingreso
-- ----------------------------
ALTER TABLE "pagos"."tipo_ingreso" ADD PRIMARY KEY ("id_tipo_ingreso");

-- ----------------------------
-- Triggers structure for table tipo_pago
-- ----------------------------
CREATE TRIGGER "trg_tipo_pago" AFTER INSERT OR UPDATE ON "pagos"."tipo_pago"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table tipo_pago
-- ----------------------------
ALTER TABLE "pagos"."tipo_pago" ADD UNIQUE ("nb_tipo_pago");

-- ----------------------------
-- Primary Key structure for table tipo_pago
-- ----------------------------
ALTER TABLE "pagos"."tipo_pago" ADD PRIMARY KEY ("id_tipo_pago");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "pagos"."users" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Triggers structure for table usuario
-- ----------------------------
CREATE TRIGGER "trg_usuario" AFTER INSERT OR UPDATE ON "pagos"."usuario"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table usuario
-- ----------------------------
ALTER TABLE "pagos"."usuario" ADD UNIQUE ("tx_usuario", "nu_cedula", "id_status");

-- ----------------------------
-- Primary Key structure for table usuario
-- ----------------------------
ALTER TABLE "pagos"."usuario" ADD PRIMARY KEY ("id_usuario");
