/*
Navicat PGSQL Data Transfer

Source Server         : local
Source Server Version : 90601
Source Host           : localhost:5432
Source Database       : postgres
Source Schema         : pagos

Target Server Type    : PGSQL
Target Server Version : 90601
File Encoding         : 65001

Date: 2018-06-17 21:01:15
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
 START 6
 CACHE 1;
SELECT setval('"pagos"."categoria_id_categoria_seq"', 6, true);

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
 START 2
 CACHE 1;
SELECT setval('"pagos"."cuenta_id_cuenta_seq"', 2, true);

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
-- Sequence structure for ejecucion_pago_id_ejecucion_seq
-- ----------------------------
DROP SEQUENCE "pagos"."ejecucion_pago_id_ejecucion_seq";
CREATE SEQUENCE "pagos"."ejecucion_pago_id_ejecucion_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"pagos"."ejecucion_pago_id_ejecucion_seq"', 3, true);

-- ----------------------------
-- Sequence structure for ente_id_ente_seq
-- ----------------------------
DROP SEQUENCE "pagos"."ente_id_ente_seq";
CREATE SEQUENCE "pagos"."ente_id_ente_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;
SELECT setval('"pagos"."ente_id_ente_seq"', 8, true);

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
 START 2
 CACHE 1;
SELECT setval('"pagos"."grupo_status_id_grupo_status_seq"', 2, true);

-- ----------------------------
-- Sequence structure for ingreso_id_ingreso_seq
-- ----------------------------
DROP SEQUENCE "pagos"."ingreso_id_ingreso_seq";
CREATE SEQUENCE "pagos"."ingreso_id_ingreso_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;
SELECT setval('"pagos"."ingreso_id_ingreso_seq"', 4, true);

-- ----------------------------
-- Sequence structure for instruccion_id_instruccion_seq
-- ----------------------------
DROP SEQUENCE "pagos"."instruccion_id_instruccion_seq";
CREATE SEQUENCE "pagos"."instruccion_id_instruccion_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"pagos"."instruccion_id_instruccion_seq"', 3, true);

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
 START 1
 CACHE 1;
SELECT setval('"pagos"."pagos_id_pago_seq"', 1, true);

-- ----------------------------
-- Sequence structure for solicitud_id_solicitud_seq
-- ----------------------------
DROP SEQUENCE "pagos"."solicitud_id_solicitud_seq";
CREATE SEQUENCE "pagos"."solicitud_id_solicitud_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;
SELECT setval('"pagos"."solicitud_id_solicitud_seq"', 4, true);

-- ----------------------------
-- Sequence structure for status_id_status_seq
-- ----------------------------
DROP SEQUENCE "pagos"."status_id_status_seq";
CREATE SEQUENCE "pagos"."status_id_status_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"pagos"."status_id_status_seq"', 2, true);

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
 START 1
 CACHE 1;

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
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6),
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
INSERT INTO "pagos"."banco" VALUES ('17', 'PRUEBA BANCO', '1', 'prueba', '1', '1', '2018-06-10 00:57:40', '2018-06-17 21:20:40', '4');

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
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pagos"."categoria" IS 'Categoria del pago generado';
COMMENT ON COLUMN "pagos"."categoria"."id_categoria" IS 'Identificador único del registro';

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO "pagos"."categoria" VALUES ('1', 'ALIMENTOS', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."categoria" VALUES ('2', 'CLAP', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."categoria" VALUES ('3', 'FANB', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."categoria" VALUES ('4', 'DEUDA', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."categoria" VALUES ('5', 'BILLETES', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."categoria" VALUES ('6', 'MEDICAMENTOS', 'N/A', '1', '1', '2018-06-08 00:00:00', null);

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
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
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
"tx_observaciones" varchar(100) COLLATE "default",
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of cuenta
-- ----------------------------
INSERT INTO "pagos"."cuenta" VALUES ('1', '1', '32657658.00', '76765873.00', null, '1', '1', null, null);
INSERT INTO "pagos"."cuenta" VALUES ('2', '2', '45343663.00', '354534345.00', null, '1', '1', null, null);

-- ----------------------------
-- Table structure for det_cuenta
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."det_cuenta";
CREATE TABLE "pagos"."det_cuenta" (
"id_det_cuenta" int4 DEFAULT nextval('"pagos".det_cuenta_id_det_cuenta_seq'::regclass) NOT NULL,
"id_cuenta" int4,
"nu_cuenta" float8,
"mo_monto" float8,
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
"id_ejecucion" int4 DEFAULT nextval('"pagos".ejecucion_pago_id_ejecucion_seq'::regclass) NOT NULL,
"id_pago" int4 NOT NULL,
"id_banco" int4 NOT NULL,
"fe_envio_inst" timestamp(6),
"id_etapa_envio" int4 NOT NULL,
"tx_observacion" varchar(100) COLLATE "default",
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ejecucion_pago
-- ----------------------------
INSERT INTO "pagos"."ejecucion_pago" VALUES ('1', '1', '5', '2018-07-12 00:00:00', '1', null, '1', '1', '2018-06-12 00:00:00', null);
INSERT INTO "pagos"."ejecucion_pago" VALUES ('2', '1', '3', '2018-07-12 00:00:00', '2', null, '1', '1', '2018-07-12 00:00:00', null);
INSERT INTO "pagos"."ejecucion_pago" VALUES ('3', '1', '2', '2018-08-12 00:00:00', '3', null, '1', '1', '2018-07-12 00:00:00', null);

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
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
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

-- ----------------------------
-- Table structure for esquema
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."esquema";
CREATE TABLE "pagos"."esquema" (
"id_esquema" int4 DEFAULT nextval('"pagos".esquema_id_esquema_seq'::regclass) NOT NULL,
"nb_esquema" varchar(50) COLLATE "default" NOT NULL,
"tx_requerimiento" varchar(50) COLLATE "default" NOT NULL,
"id_esquema_padre" varchar(50) COLLATE "default" NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
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
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
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
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
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
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
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
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
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
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
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
INSERT INTO "pagos"."grupo_status" VALUES ('1', 'INTRUCCIÓN', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."grupo_status" VALUES ('2', 'SOLICITUD', 'N/A', '1', '1', '2018-06-08 00:00:00', null);

-- ----------------------------
-- Table structure for ingreso
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."ingreso";
CREATE TABLE "pagos"."ingreso" (
"id_ingreso" int4 DEFAULT nextval('"pagos".ingreso_id_ingreso_seq'::regclass) NOT NULL,
"id_tipo_ingreso" int4,
"id_ente" int4,
"id_moneda" int4,
"mo_ingreso" numeric,
"id_tasa" int4,
"fe_ingreso" int4,
"tx_observaciones" varchar(100) COLLATE "default",
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6),
"id_banco" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ingreso
-- ----------------------------
INSERT INTO "pagos"."ingreso" VALUES ('1', '1', '1', '1', '5000.00', '1', '20180501', 'ninguna', '1', '1', '2018-01-01 00:00:00', '2018-01-01 00:00:00', '1');
INSERT INTO "pagos"."ingreso" VALUES ('2', '2', '1', '2', '3455.55', '2', '20180501', 'ninguna', '1', '1', null, null, '1');
INSERT INTO "pagos"."ingreso" VALUES ('3', '3', '2', '2', '57687.66', '1', '20180602', null, '1', '1', null, null, '1');
INSERT INTO "pagos"."ingreso" VALUES ('4', '4', '3', '3', '54545.98', '2', '20180602', null, '1', '1', null, null, '1');

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
"fe_instruccion" timestamp(6),
"mo_instruccion" float8,
"id_moneda" int4 NOT NULL,
"tx_observacion" varchar(100) COLLATE "default",
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of instruccion
-- ----------------------------
INSERT INTO "pagos"."instruccion" VALUES ('1', '1', 'lanchas', '1', 'nro001', 'ofi-001', 't', '2018-02-01 00:00:00', '5635736', '1', null, '1', '1', null, null);
INSERT INTO "pagos"."instruccion" VALUES ('3', '1', 'maiz', '1', 'voi 2', 'ofi2', 't', '2018-06-01 00:00:00', '797867.02', '1', null, '1', '1', null, null);

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
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
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
-- Table structure for pagos
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."pagos";
CREATE TABLE "pagos"."pagos" (
"id_pago" int4 DEFAULT nextval('"pagos".pagos_id_pago_seq'::regclass) NOT NULL,
"id_instruccion" int4 NOT NULL,
"fe_liq_bcv" timestamp(6),
"id_banco" int4 NOT NULL,
"fe_pago" timestamp(6),
"id_moneda" int4 NOT NULL,
"id_tasa" int4 NOT NULL,
"mo_final_pago" float8,
"id_tipo_pago" int4 NOT NULL,
"tx_observacion" varchar(100) COLLATE "default",
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of pagos
-- ----------------------------
INSERT INTO "pagos"."pagos" VALUES ('1', '3', '2018-07-12 00:00:00', '2', '2018-06-12 00:00:00', '3', '1', '5682535.89', '1', null, '1', '1', '2018-06-12 00:00:00', null);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."password_resets";
CREATE TABLE "pagos"."password_resets" (
"email" varchar(255) COLLATE "default" NOT NULL,
"token" varchar(255) COLLATE "default" NOT NULL,
"created_at" timestamp(6)
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
"fe_solicitud" timestamp(6),
"id_ente" int4 NOT NULL,
"id_moneda" int4 NOT NULL,
"id_categoria" int4 NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of solicitud
-- ----------------------------
INSERT INTO "pagos"."solicitud" VALUES ('1', '0001', 'MAIZ BLANCO', '3242535.89', '2018-06-01 00:00:00', '1', '1', '1', 'N/A', '1', '1', null, null);
INSERT INTO "pagos"."solicitud" VALUES ('2', '0201', 'PARACAIDAS', '5654654.43', '2018-06-02 00:00:00', '2', '2', '3', 'N/A', '1', '1', null, null);
INSERT INTO "pagos"."solicitud" VALUES ('3', '0303', 'AMBULANCIA', '232535.23', '2018-06-02 00:00:00', '3', '1', '3', 'N/A', '1', '1', null, null);
INSERT INTO "pagos"."solicitud" VALUES ('4', '0004', 'ARROZ', '433466.00', '2018-08-01 00:00:00', '3', '1', '1', 'N/A', '1', '1', null, null);

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."status";
CREATE TABLE "pagos"."status" (
"id_status" int4 DEFAULT nextval('"pagos".status_id_status_seq'::regclass) NOT NULL,
"nb_status" varchar(150) COLLATE "default",
"co_status" varchar(10) COLLATE "default",
"nb_status_secundario" varchar(50) COLLATE "default",
"id_grupo" int4 NOT NULL,
"bo_status" bool NOT NULL,
"id_padre" int4,
"tx_observacion" varchar(150) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pagos"."status" IS 'Tabla para los estatus de los sistemas ';
COMMENT ON COLUMN "pagos"."status"."id_status" IS 'Identificacdor único de la tabla Status';
COMMENT ON COLUMN "pagos"."status"."nb_status" IS 'Nombre del status';
COMMENT ON COLUMN "pagos"."status"."co_status" IS 'código del segundo estatus secundario';
COMMENT ON COLUMN "pagos"."status"."nb_status_secundario" IS 'Nombre del estatus secundario';
COMMENT ON COLUMN "pagos"."status"."id_grupo" IS 'Identificador de la tabla grupo';
COMMENT ON COLUMN "pagos"."status"."bo_status" IS 'Id status detalle';
COMMENT ON COLUMN "pagos"."status"."id_padre" IS 'Estatus principal a quien pertenece';
COMMENT ON COLUMN "pagos"."status"."tx_observacion" IS 'Observación del registro estatus';
COMMENT ON COLUMN "pagos"."status"."id_usuario" IS 'id del usuario que realiza la acción';
COMMENT ON COLUMN "pagos"."status"."fe_creado" IS 'Fecha y hora de la creación del registro';
COMMENT ON COLUMN "pagos"."status"."fe_actualizado" IS 'Fecha y hora de modificación del registro';

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO "pagos"."status" VALUES ('1', 'ACTIVO', 'AING', 'ACTIVO INGRESO', '1', 't', '1', 'N/A', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."status" VALUES ('2', 'INACTIVO', 'IING', 'INACTIVO ONGRESO', '1', 't', '1', 'N/A', '1', '2018-06-08 00:00:00', null);

-- ----------------------------
-- Table structure for tasa
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tasa";
CREATE TABLE "pagos"."tasa" (
"id_tasa" int4 DEFAULT nextval('"pagos".tasa_id_tasa_seq'::regclass) NOT NULL,
"id_moneda" int4,
"mo_tasa" numeric(10,2),
"fe_tasa" timestamp(6),
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
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
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
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
INSERT INTO "pagos"."tipo_banco" VALUES ('1', 'NACIONAL', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."tipo_banco" VALUES ('2', 'INTERNACIONAL', 'N/A', '1', '1', '2018-06-08 00:00:00', null);

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
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
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
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
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
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tipo_pago
-- ----------------------------
INSERT INTO "pagos"."tipo_pago" VALUES ('1', 'TOTAL', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."tipo_pago" VALUES ('2', 'PARCIAL', 'N/A', '1', '1', '2018-06-08 00:00:00', null);

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
"created_at" timestamp(6),
"updated_at" timestamp(6)
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
"fe_creado" timestamp(6),
"fe_actualizado" timestamp(6)
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

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "pagos"."det_cuenta_id_det_cuenta_seq" OWNED BY "det_cuenta"."id_det_cuenta";
ALTER SEQUENCE "pagos"."ejecucion_pago_id_ejecucion_seq" OWNED BY "ejecucion_pago"."id_ejecucion";
ALTER SEQUENCE "pagos"."pagos_id_pago_seq" OWNED BY "pagos"."id_pago";

-- ----------------------------
-- Primary Key structure for table banco
-- ----------------------------
ALTER TABLE "pagos"."banco" ADD PRIMARY KEY ("id_banco");

-- ----------------------------
-- Primary Key structure for table categoria
-- ----------------------------
ALTER TABLE "pagos"."categoria" ADD PRIMARY KEY ("id_categoria");

-- ----------------------------
-- Primary Key structure for table clase_ente
-- ----------------------------
ALTER TABLE "pagos"."clase_ente" ADD PRIMARY KEY ("id_clase_ente");

-- ----------------------------
-- Primary Key structure for table det_cuenta
-- ----------------------------
ALTER TABLE "pagos"."det_cuenta" ADD PRIMARY KEY ("id_det_cuenta");

-- ----------------------------
-- Primary Key structure for table ejecucion_pago
-- ----------------------------
ALTER TABLE "pagos"."ejecucion_pago" ADD PRIMARY KEY ("id_ejecucion");

-- ----------------------------
-- Primary Key structure for table ente
-- ----------------------------
ALTER TABLE "pagos"."ente" ADD PRIMARY KEY ("id_ente");

-- ----------------------------
-- Primary Key structure for table etapa_envio
-- ----------------------------
ALTER TABLE "pagos"."etapa_envio" ADD PRIMARY KEY ("id_etapa_envio");

-- ----------------------------
-- Primary Key structure for table grupo_ente
-- ----------------------------
ALTER TABLE "pagos"."grupo_ente" ADD PRIMARY KEY ("id_grupo_ente");

-- ----------------------------
-- Primary Key structure for table grupo_financiero
-- ----------------------------
ALTER TABLE "pagos"."grupo_financiero" ADD PRIMARY KEY ("id_grupo_financiero");

-- ----------------------------
-- Primary Key structure for table grupo_status
-- ----------------------------
ALTER TABLE "pagos"."grupo_status" ADD PRIMARY KEY ("id_grupo_status");

-- ----------------------------
-- Primary Key structure for table ingreso
-- ----------------------------
ALTER TABLE "pagos"."ingreso" ADD PRIMARY KEY ("id_ingreso");

-- ----------------------------
-- Primary Key structure for table moneda
-- ----------------------------
ALTER TABLE "pagos"."moneda" ADD PRIMARY KEY ("id_moneda");

-- ----------------------------
-- Primary Key structure for table pagos
-- ----------------------------
ALTER TABLE "pagos"."pagos" ADD PRIMARY KEY ("id_pago");

-- ----------------------------
-- Indexes structure for table password_resets
-- ----------------------------
CREATE INDEX "password_resets_email_index" ON "pagos"."password_resets" USING btree (email);

-- ----------------------------
-- Primary Key structure for table solicitud
-- ----------------------------
ALTER TABLE "pagos"."solicitud" ADD PRIMARY KEY ("id_solicitud");

-- ----------------------------
-- Primary Key structure for table status
-- ----------------------------
ALTER TABLE "pagos"."status" ADD PRIMARY KEY ("id_status");

-- ----------------------------
-- Primary Key structure for table tasa
-- ----------------------------
ALTER TABLE "pagos"."tasa" ADD PRIMARY KEY ("id_tasa");

-- ----------------------------
-- Primary Key structure for table tipo_banco
-- ----------------------------
ALTER TABLE "pagos"."tipo_banco" ADD PRIMARY KEY ("id_tipo_banco");

-- ----------------------------
-- Primary Key structure for table tipo_ente
-- ----------------------------
ALTER TABLE "pagos"."tipo_ente" ADD PRIMARY KEY ("id_tipo_ente");

-- ----------------------------
-- Primary Key structure for table tipo_ingreso
-- ----------------------------
ALTER TABLE "pagos"."tipo_ingreso" ADD PRIMARY KEY ("id_tipo_ingreso");

-- ----------------------------
-- Primary Key structure for table tipo_pago
-- ----------------------------
ALTER TABLE "pagos"."tipo_pago" ADD PRIMARY KEY ("id_tipo_pago");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "pagos"."users" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table usuario
-- ----------------------------
ALTER TABLE "pagos"."usuario" ADD PRIMARY KEY ("id_usuario");
