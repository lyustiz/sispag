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

Date: 2018-06-29 15:39:04
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
 START 2
 CACHE 1;
SELECT setval('"pagos"."ejecucion_pago_id_ejecucion_pago_seq"', 2, true);

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
-- Sequence structure for menu_id_menu_seq
-- ----------------------------
DROP SEQUENCE "pagos"."menu_id_menu_seq";
CREATE SEQUENCE "pagos"."menu_id_menu_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;
SELECT setval('"pagos"."menu_id_menu_seq"', 4, true);

-- ----------------------------
-- Sequence structure for modulo_id_modulo_seq
-- ----------------------------
DROP SEQUENCE "pagos"."modulo_id_modulo_seq";
CREATE SEQUENCE "pagos"."modulo_id_modulo_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"pagos"."modulo_id_modulo_seq"', 1, true);

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
-- Sequence structure for movimiento_id_movimiento_seq
-- ----------------------------
DROP SEQUENCE "pagos"."movimiento_id_movimiento_seq";
CREATE SEQUENCE "pagos"."movimiento_id_movimiento_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 22
 CACHE 1;
SELECT setval('"pagos"."movimiento_id_movimiento_seq"', 22, true);

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
-- Sequence structure for permiso_id_permiso_seq
-- ----------------------------
DROP SEQUENCE "pagos"."permiso_id_permiso_seq";
CREATE SEQUENCE "pagos"."permiso_id_permiso_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;
SELECT setval('"pagos"."permiso_id_permiso_seq"', 8, true);

-- ----------------------------
-- Sequence structure for rol_id_rol_seq
-- ----------------------------
DROP SEQUENCE "pagos"."rol_id_rol_seq";
CREATE SEQUENCE "pagos"."rol_id_rol_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"pagos"."rol_id_rol_seq"', 3, true);

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
-- Sequence structure for tipo_ingresoo_id_tpingreso_seq
-- ----------------------------
DROP SEQUENCE "pagos"."tipo_ingresoo_id_tpingreso_seq";
CREATE SEQUENCE "pagos"."tipo_ingresoo_id_tpingreso_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"pagos"."tipo_ingresoo_id_tpingreso_seq"', 1, true);

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
 START 221
 CACHE 1;
SELECT setval('"pagos"."tr_bitacora_id_bitacora_seq"', 221, true);

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
-- Sequence structure for usurol_id_usurol_seq
-- ----------------------------
DROP SEQUENCE "pagos"."usurol_id_usurol_seq";
CREATE SEQUENCE "pagos"."usurol_id_usurol_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"pagos"."usurol_id_usurol_seq"', 2, true);

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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0),
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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
"fe_creado" timestamp,
"fe_actualizado" timestamp
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
"fe_envio_inst" timestamp(0),
"id_etapa_envio" int4 NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default",
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
"id_esquema_padre" varchar(50) COLLATE "default" NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
"fe_ingreso" timestamp(0),
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0),
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
"fe_instruccion" timestamp(0),
"mo_instruccion" numeric(15,2),
"id_moneda" int4 NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default",
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of instruccion
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."menu";
CREATE TABLE "pagos"."menu" (
"id_menu" int4 DEFAULT nextval('"pagos".menu_id_menu_seq'::regclass) NOT NULL,
"id_modulo" int4 NOT NULL,
"nb_menu" varchar(50) COLLATE "default" NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO "pagos"."menu" VALUES ('1', '1', 'Ingreso', 'N/A', '1', '1', '2018-06-27 00:00:00', null);
INSERT INTO "pagos"."menu" VALUES ('2', '1', 'Solicitud', 'N/A', '1', '1', '2018-06-27 00:00:00', null);
INSERT INTO "pagos"."menu" VALUES ('3', '1', 'Instrucción', 'N/A', '1', '1', '2018-06-27 00:00:00', null);
INSERT INTO "pagos"."menu" VALUES ('4', '1', 'Pagos', 'N/A', '1', '1', '2018-06-27 00:00:00', null);

-- ----------------------------
-- Table structure for modulo
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."modulo";
CREATE TABLE "pagos"."modulo" (
"id_modulo" int4 DEFAULT nextval('"pagos".modulo_id_modulo_seq'::regclass) NOT NULL,
"nb_modulo" varchar(50) COLLATE "default" NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of modulo
-- ----------------------------
INSERT INTO "pagos"."modulo" VALUES ('1', 'Pagos', 'N/A', '1', '1', '2018-06-27 00:00:00', null);

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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
-- Table structure for movimiento
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."movimiento";
CREATE TABLE "pagos"."movimiento" (
"id_movimiento" int4 DEFAULT nextval('"pagos".movimiento_id_movimiento_seq'::regclass) NOT NULL,
"nu_movimiento" int4 NOT NULL,
"nb_modulo" varchar(50) COLLATE "default" NOT NULL,
"tx_tipomov" varchar(50) COLLATE "default",
"mo_movimiento" numeric(15,2),
"fe_movimiento" timestamp(0),
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of movimiento
-- ----------------------------

-- ----------------------------
-- Table structure for pago
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."pago";
CREATE TABLE "pagos"."pago" (
"id_pago" int4 DEFAULT nextval('"pagos".pagos_id_pago_seq'::regclass) NOT NULL,
"id_instruccion" int4 NOT NULL,
"fe_liq_bcv" timestamp(0),
"id_banco" int4 NOT NULL,
"fe_pago" timestamp(0),
"id_moneda" int4 NOT NULL,
"mo_tasa" numeric(5,2) NOT NULL,
"mo_final_pago" numeric(15,2),
"id_tipo_pago" int4 NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default",
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
"created_at" timestamp(0)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO "pagos"."password_resets" VALUES ('cgranados@bandes.gob.ve', '$2y$10$p2uwRfD7RATtuCoCkAdA7.Mi0EW2R7pq.aibKIXXmy8MDuZPIquzW', '2018-06-11 12:19:36');
INSERT INTO "pagos"."password_resets" VALUES ('lyustis@gmail.com', '$2y$10$bkbN9hwCGmzhPhIbClz8gexKRa8Gwx5NcWrhCsyLXM430lYQA7VbK', '2018-06-08 03:41:35');

-- ----------------------------
-- Table structure for permiso
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."permiso";
CREATE TABLE "pagos"."permiso" (
"id_permiso" int4 DEFAULT nextval('"pagos".permiso_id_permiso_seq'::regclass) NOT NULL,
"id_rol" int4 NOT NULL,
"id_menu" int4 NOT NULL,
"bo_create" bool,
"bo_update" bool,
"bo_read" bool,
"bo_delete" bool,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of permiso
-- ----------------------------
INSERT INTO "pagos"."permiso" VALUES ('1', '3', '1', 't', 't', 't', 't', 'N/A', '1', '1', '2018-06-27 00:00:00', null);
INSERT INTO "pagos"."permiso" VALUES ('2', '3', '2', 't', 't', 't', 't', 'N/A', '1', '1', '2018-06-27 00:00:00', null);
INSERT INTO "pagos"."permiso" VALUES ('3', '3', '3', 't', 't', 't', 't', 'N/A', '1', '1', '2018-06-27 00:00:00', null);
INSERT INTO "pagos"."permiso" VALUES ('4', '3', '4', 't', 't', 't', 't', 'N/A', '1', '1', '2018-06-27 00:00:00', null);
INSERT INTO "pagos"."permiso" VALUES ('5', '1', '1', 't', 't', 't', 't', 'N/A', '1', '1', '2018-06-27 00:00:00', null);
INSERT INTO "pagos"."permiso" VALUES ('6', '1', '2', 't', 't', 't', 't', 'N/A', '1', '1', '2018-06-27 00:00:00', null);
INSERT INTO "pagos"."permiso" VALUES ('7', '2', '3', 't', 't', 't', 't', 'N/A', '1', '1', '2018-06-27 00:00:00', null);
INSERT INTO "pagos"."permiso" VALUES ('8', '2', '4', 't', 't', 't', 't', 'N/A', '1', '1', '2018-06-27 00:00:00', null);

-- ----------------------------
-- Table structure for rol
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."rol";
CREATE TABLE "pagos"."rol" (
"id_rol" int4 DEFAULT nextval('"pagos".rol_id_rol_seq'::regclass) NOT NULL,
"nb_rol" varchar(50) COLLATE "default" NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of rol
-- ----------------------------
INSERT INTO "pagos"."rol" VALUES ('1', 'Analista', 'N/A', '1', '1', '2018-06-27 00:00:00', null);
INSERT INTO "pagos"."rol" VALUES ('2', 'Supervisor', 'N/A', '1', '1', '2018-06-27 00:00:00', null);
INSERT INTO "pagos"."rol" VALUES ('3', 'Administrador', 'N/A', '1', '1', '2018-06-27 00:00:00', null);

-- ----------------------------
-- Table structure for solicitud
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."solicitud";
CREATE TABLE "pagos"."solicitud" (
"id_solicitud" int4 DEFAULT nextval('"pagos".solicitud_id_solicitud_seq'::regclass) NOT NULL,
"nu_solicitud" varchar(25) COLLATE "default",
"tx_concepto" varchar(200) COLLATE "default",
"mo_solicitud" numeric(15,2),
"fe_solicitud" timestamp(0),
"id_ente" int4 NOT NULL,
"id_moneda" int4 NOT NULL,
"id_categoria" int4 NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0),
"bo_credito" bool,
"bo_debito" bool
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
INSERT INTO "pagos"."status" VALUES ('1', 'Activo', 'AING', 'Activo (Ingreso)', '4', 't', '0', 'N/A', '1', '2018-06-08 00:00:00', null, 't', null);
INSERT INTO "pagos"."status" VALUES ('2', 'Inactivo', 'IING', 'Inactivo (Ingreso)', '4', 't', '0', 'N/A', '1', '2018-06-08 00:00:00', null, null, null);
INSERT INTO "pagos"."status" VALUES ('4', 'Toda la documentación en regla', 'TDERSOL', 'Documentación en regla (solicitud)', '2', 't', '0', 'N/A', '1', '2018-06-20 00:00:00', null, null, null);
INSERT INTO "pagos"."status" VALUES ('6', 'A la espera de documentación', 'AEDSOL', 'A la espera de documentación (solicitud)', '2', 't', '0', 'N/A', '1', '2018-06-20 00:00:00', null, null, null);
INSERT INTO "pagos"."status" VALUES ('8', 'A la espera de documentación', 'AEDINST', 'A la espera de documentación (instrución)', '1', 't', '0', 'N/A', '1', '2018-06-20 00:00:00', null, null, null);
INSERT INTO "pagos"."status" VALUES ('9', 'Documentación en regla en proceso de instrucción', 'TDERINST', 'Documentación en regla en proceso de instrucción (', '1', 't', '0', 'N/A', '1', '2018-06-20 00:00:00', null, null, null);
INSERT INTO "pagos"."status" VALUES ('10', 'En Tránsito', 'ETPAG', 'En Tránsito (pago)', '3', 't', '0', 'N/A', '1', '2018-06-20 00:00:00', null, null, null);
INSERT INTO "pagos"."status" VALUES ('11', 'Devuelto', 'DEVPAG', 'Devuelto (pago)', '3', 't', '0', 'N/A', '1', '2018-06-20 00:00:00', null, null, null);
INSERT INTO "pagos"."status" VALUES ('12', 'Anulado', 'ANUPAG', 'Anulado (pago)', '3', 't', '0', 'N/A', '1', '2018-06-20 00:00:00', null, null, null);
INSERT INTO "pagos"."status" VALUES ('13', 'Acreditado', 'ACRPAG', 'Acreditado (pago)', '3', 't', '0', 'N/A', '1', '2018-06-20 00:00:00', null, null, 't');
INSERT INTO "pagos"."status" VALUES ('15', 'Políticas internas', 'PIPAGDE', 'Políticas internas (devuelto)', '3', 't', '11', 'N/A', '1', '2018-06-20 00:00:00', null, null, null);
INSERT INTO "pagos"."status" VALUES ('16', 'Coordenadas erradas', 'CEPAGDE', 'Coordenadas erradas (devuelto)', '3', 't', '11', 'N/A', '1', '2018-06-20 00:00:00', null, null, null);
INSERT INTO "pagos"."status" VALUES ('17', 'Documentación incompleta', 'DIPAGDE', 'Documentación incompleta devuelto', '3', 't', '11', 'N/A', '1', '2018-06-20 00:00:00', null, null, null);
INSERT INTO "pagos"."status" VALUES ('18', 'Políticas internas', 'PIPAGAN', 'Políticas internas (anulado)', '3', 't', '12', 'N/A', '1', '2018-06-20 00:00:00', null, null, null);
INSERT INTO "pagos"."status" VALUES ('20', 'Coordenadas erradas', 'CEPAGAN', 'Coordenadas erradas anulado', '3', 't', '12', 'N/A', '1', '2018-06-20 00:00:00', null, null, null);
INSERT INTO "pagos"."status" VALUES ('21', 'Documentación incompleta', 'DIPAGAN', 'Documentación incompleta (anulado)', '3', 't', '12', 'N/A', '1', '2018-06-20 00:00:00', null, null, null);
INSERT INTO "pagos"."status" VALUES ('22', 'Activo', 'ACT', 'Activo', '5', 't', '0', 'N/A', '1', '2018-06-25 00:00:00', null, 'f', 'f');
INSERT INTO "pagos"."status" VALUES ('23', 'Inactivo', 'INAC', 'Inactivo', '5', 't', '0', 'N/A', '1', '2018-06-25 00:00:00', null, 'f', 'f');
INSERT INTO "pagos"."status" VALUES ('24', 'Anulado', 'ANU', 'Anulado', '5', 't', '0', 'N/A', '1', '2018-06-25 00:00:00', null, 'f', 'f');
INSERT INTO "pagos"."status" VALUES ('26', 'Cancelado', 'CAN', 'Cancelado', '5', 't', '0', 'N/A', '1', '2018-06-25 00:00:00', null, 'f', 'f');

-- ----------------------------
-- Table structure for tasa
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tasa";
CREATE TABLE "pagos"."tasa" (
"id_tasa" int4 DEFAULT nextval('"pagos".tasa_id_tasa_seq'::regclass) NOT NULL,
"id_moneda" int4,
"mo_tasa" numeric(5,2),
"fe_tasa" timestamp(0),
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
-- Table structure for tipo_ingresoo
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tipo_ingresoo";
CREATE TABLE "pagos"."tipo_ingresoo" (
"id_tpingreso" int4 DEFAULT nextval('"pagos".tipo_ingresoo_id_tpingreso_seq'::regclass) NOT NULL,
"nb_tpingreso" varchar(100) COLLATE "default",
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4,
"id_status" int4,
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tipo_ingresoo
-- ----------------------------
INSERT INTO "pagos"."tipo_ingresoo" VALUES ('1', 'PRUEBA', 'N/A', '1', '1', '2018-06-25 00:00:00', null);

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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tipo_pago
-- ----------------------------
INSERT INTO "pagos"."tipo_pago" VALUES ('1', 'TOTAL', 'N/A', '1', '1', '2018-06-08 00:00:00', null);
INSERT INTO "pagos"."tipo_pago" VALUES ('2', 'PARCIAL', 'N/A', '1', '1', '2018-06-08 00:00:00', null);

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
"fe_accion" timestamp(0),
"id_usuario" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tr_bitacora
-- ----------------------------
INSERT INTO "pagos"."tr_bitacora" VALUES ('182', 'INS', 'usuario', '1', null, '(1,lyustis,123456,12345678,"Luis ",Yustiz,,1,"2018-06-27 00:00:00",)', '2018-06-27 11:17:51.894531', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('183', 'INS', 'usuario', '2', null, '(2,dramirez,123456,12980546,Dayana,Ramirez,,1,"2018-06-27 00:00:00",)', '2018-06-27 11:18:40.958984', '2');
INSERT INTO "pagos"."tr_bitacora" VALUES ('184', 'INS', 'cuenta', '1149', null, '(1149,1,3000.00,0.00,0.00,3000.00,,1,1,"2018-06-27 12:13:09.048828",)', '2018-06-27 12:13:09.048828', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('185', 'INS', 'ingreso', '26', null, '(26,1,1,1,3000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '2018-06-27 12:13:09.048828', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('186', 'UPD', 'cuenta', '1149', '(1149,1,3000.00,0.00,0.00,3000.00,,1,1,"2018-06-27 12:13:09.048828",)', '(1149,1,5000.00,0.00,0.00,5000.00,N/A,1,1,"2018-06-27 12:13:09.048828","2018-06-27 12:14:44.346679")', '2018-06-27 12:14:44.346679', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('187', 'UPD', 'ingreso', '26', '(26,1,1,1,3000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '(26,1,1,1,2000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '2018-06-27 12:14:44.346679', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('188', 'UPD', 'cuenta', '1149', '(1149,1,5000.00,0.00,0.00,5000.00,N/A,1,1,"2018-06-27 12:13:09.048828","2018-06-27 12:14:44.346679")', '(1149,1,3000.00,0.00,0.00,3000.00,N/A,1,1,"2018-06-27 12:13:09.048828","2018-06-27 12:24:13.527343")', '2018-06-27 12:24:13.527343', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('189', 'UPD', 'ingreso', '26', '(26,1,1,1,2000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '(26,1,1,1,3000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '2018-06-27 12:24:13.527343', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('190', 'UPD', 'cuenta', '1149', '(1149,1,3000.00,0.00,0.00,3000.00,N/A,1,1,"2018-06-27 12:13:09.048828","2018-06-27 12:24:13.527343")', '(1149,1,5000.00,0.00,0.00,5000.00,N/A,1,1,"2018-06-27 12:13:09.048828","2018-06-27 12:24:51.595703")', '2018-06-27 12:24:51.595703', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('191', 'UPD', 'ingreso', '26', '(26,1,1,1,3000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '(26,1,1,1,5000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '2018-06-27 12:24:51.595703', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('193', 'UPD', 'cuenta', '1149', '(1149,1,5000.00,0.00,0.00,5000.00,N/A,1,1,"2018-06-27 12:13:09.048828","2018-06-27 12:24:51.595703")', '(1149,1,4000.00,0.00,0.00,4000.00,N/A,1,1,"2018-06-27 12:13:09.048828","2018-06-27 14:25:32.063476")', '2018-06-27 14:25:32.063476', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('194', 'UPD', 'ingreso', '26', '(26,1,1,1,5000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '(26,1,1,1,4000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '2018-06-27 14:25:32.063476', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('195', 'UPD', 'cuenta', '1149', '(1149,1,4000.00,0.00,0.00,4000.00,N/A,1,1,"2018-06-27 12:13:09.048828","2018-06-27 14:25:32.063476")', '(1149,1,4550.00,0.00,0.00,4550.00,pba,1,1,"2018-06-27 12:13:09.048828","2018-06-27 14:26:49.90039")', '2018-06-27 14:26:49.90039', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('196', 'UPD', 'ingreso', '26', '(26,1,1,1,4000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '(26,1,1,1,4550.00,2.00,"2018-06-27 00:00:00",pba,1,1,"2018-06-27 00:00:00",,10)', '2018-06-27 14:26:49.90039', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('197', 'INS', 'solicitud', '12', null, '(12,0001,PARACAIDAS,2000.00,"2018-06-27 00:00:00",1,1,3,"SOLICITUD 1",1,1,"2018-06-27 00:00:00",)', '2018-06-27 14:31:48.623046', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('198', 'UPD', 'cuenta', '1149', '(1149,1,4550.00,0.00,0.00,4550.00,pba,1,1,"2018-06-27 12:13:09.048828","2018-06-27 14:26:49.90039")', '(1149,1,4000.00,0.00,0.00,4000.00,pba,1,1,"2018-06-27 12:13:09.048828","2018-06-27 14:32:50.898437")', '2018-06-27 14:32:50.898437', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('199', 'UPD', 'ingreso', '26', '(26,1,1,1,4550.00,2.00,"2018-06-27 00:00:00",pba,1,1,"2018-06-27 00:00:00",,10)', '(26,1,1,1,4000.00,2.00,"2018-06-27 00:00:00",pba,1,1,"2018-06-27 00:00:00",,10)', '2018-06-27 14:32:50.898437', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('200', 'UPD', 'cuenta', '1149', '(1149,1,4000.00,0.00,0.00,4000.00,pba,1,1,"2018-06-27 12:13:09.048828","2018-06-27 14:32:50.898437")', '(1149,1,2000.00,2000.00,0.00,4000.00,INSTRUCCION1,1,1,"2018-06-27 12:13:09.048828","2018-06-27 14:35:24.360351")', '2018-06-27 14:35:24.360351', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('201', 'INS', 'instruccion', '17', null, '(17,12,PARACAIDAS,1,"VOI 1",,t,"2018-06-30 00:00:00",2000.00,1,INSTRUCCION1,1,1,"2018-06-27 00:00:00",)', '2018-06-27 14:35:24.360351', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('202', 'UPD', 'cuenta', '1149', '(1149,1,2000.00,2000.00,0.00,4000.00,INSTRUCCION1,1,1,"2018-06-27 12:13:09.048828","2018-06-27 14:35:24.360351")', '(1149,1,1000.00,3000.00,0.00,4000.00,INSTRUCCION1,1,1,"2018-06-27 12:13:09.048828","2018-06-27 16:22:01.55371")', '2018-06-27 16:22:01.55371', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('203', 'UPD', 'instruccion', '17', '(17,12,PARACAIDAS,1,"VOI 1",,t,"2018-06-30 00:00:00",2000.00,1,INSTRUCCION1,1,1,"2018-06-27 00:00:00",)', '(17,12,PARACAIDAS,1,"VOI 1",,t,"2018-06-30 00:00:00",3000.00,1,INSTRUCCION1,1,1,"2018-06-27 00:00:00",)', '2018-06-27 16:22:01.55371', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('204', 'INS', 'pago', '12', null, '(12,17,"2018-06-27 00:00:00",7,"2018-06-30 00:00:00",1,2.00,3000.00,1,,1,1,"2018-06-27 00:00:00",)', '2018-06-27 16:51:44.989257', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('205', 'INS', 'pago', '13', null, '(13,17,"2018-06-27 00:00:00",7,"3018-06-30 00:00:00",1,2.00,3000.00,1,,1,13,"2018-06-27 00:00:00",)', '2018-06-27 16:54:12.234375', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('206', 'UPD', 'cuenta', '1149', '(1149,1,1000.00,3000.00,0.00,4000.00,INSTRUCCION1,1,1,"2018-06-27 12:13:09.048828","2018-06-27 16:22:01.55371")', '(1149,1,1000.00,0.00,0.00,1000.00,,1,13,"2018-06-27 12:13:09.048828","2018-06-27 16:54:12.234375")', '2018-06-27 16:54:12.234375', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('207', 'INS', 'cuenta', '1150', null, '(1150,1,5000.00,0.00,0.00,5000.00,,1,1,"2018-06-29 13:31:26.731445",)', '2018-06-29 13:31:26.731445', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('208', 'INS', 'ingreso', '27', null, '(27,1,1,1,5000.00,2.00,"2018-06-29 00:00:00",N/A,1,1,"2018-06-29 00:00:00",,10)', '2018-06-29 13:31:26.731445', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('209', 'INS', 'cuenta', '1151', null, '(1151,2,4000.00,0.00,0.00,4000.00,,1,1,"2018-06-29 13:32:36.374023",)', '2018-06-29 13:32:36.374023', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('210', 'INS', 'ingreso', '28', null, '(28,2,1,2,4000.00,2.00,"2018-06-29 00:00:00",N/A,1,1,"2018-06-29 00:00:00",,)', '2018-06-29 13:32:36.374023', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('211', 'UPD', 'cuenta', '1150', '(1150,1,5000.00,0.00,0.00,5000.00,,1,1,"2018-06-29 13:31:26.731445",)', '(1150,1,1000.00,4000.00,0.00,5000.00,,1,1,"2018-06-29 13:31:26.731445","2018-06-29 13:34:55.729492")', '2018-06-29 13:34:55.729492', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('212', 'INS', 'instruccion', '18', null, '(18,1,pba,1,voi1,,t,"2018-06-29 00:00:00",4000.00,1,,1,1,"2018-06-29 00:00:00",)', '2018-06-29 13:34:55.729492', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('213', 'INS', 'pago', '14', null, '(14,18,"2018-06-27 00:00:00",7,"2018-06-27 00:00:00",2,2.00,1000.00,2,,1,1,"2018-06-27 00:00:00",)', '2018-06-29 15:23:53.436523', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('214', 'UPD', 'cuenta', '1150', '(1150,1,1000.00,4000.00,0.00,5000.00,,1,1,"2018-06-29 13:31:26.731445","2018-06-29 13:34:55.729492")', '(1150,1,5000.00,0.00,0.00,5000.00,,1,1,"2018-06-29 13:31:26.731445","2018-06-29 15:23:53.436523")', '2018-06-29 15:23:53.436523', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('215', 'UPD', 'cuenta', '1151', '(1151,2,4000.00,0.00,0.00,4000.00,,1,1,"2018-06-29 13:32:36.374023",)', '(1151,2,3000.00,1000.00,0.00,4000.00,,1,1,"2018-06-29 13:32:36.374023","2018-06-29 15:23:53.436523")', '2018-06-29 15:23:53.436523', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('216', 'INS', 'ejecucion_pago', '14', null, '(1,14,1,"2018-06-27 00:00:00",3,,1,13,"2018-06-27 00:00:00",)', '2018-06-29 15:27:00.629882', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('217', 'UPD', 'pago', '14', '(14,18,"2018-06-27 00:00:00",7,"2018-06-27 00:00:00",2,2.00,1000.00,2,,1,1,"2018-06-27 00:00:00",)', '(14,18,"2018-06-27 00:00:00",7,"2018-06-27 00:00:00",2,2.00,1000.00,2,,1,13,"2018-06-27 00:00:00","2018-06-29 15:27:00.629882")', '2018-06-29 15:27:00.629882', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('218', 'UPD', 'ejecucion_pago', '14', '(1,14,1,"2018-06-27 00:00:00",3,,1,13,"2018-06-27 00:00:00",)', '(1,14,1,"2018-06-27 00:00:00",3,,1,2,"2018-06-27 00:00:00",)', '2018-06-29 15:32:49.570312', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('219', 'UPD', 'pago', '14', '(14,18,"2018-06-27 00:00:00",7,"2018-06-27 00:00:00",2,2.00,1000.00,2,,1,13,"2018-06-27 00:00:00","2018-06-29 15:27:00.629882")', '(14,18,"2018-06-27 00:00:00",7,"2018-06-27 00:00:00",2,2.00,1000.00,2,,1,2,"2018-06-27 00:00:00","2018-06-29 15:32:49.570312")', '2018-06-29 15:32:49.570312', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('220', 'UPD', 'ejecucion_pago', '14', '(1,14,1,"2018-06-27 00:00:00",3,,1,2,"2018-06-27 00:00:00",)', '(1,14,1,"2018-06-27 00:00:00",3,,1,13,"2018-06-27 00:00:00",)', '2018-06-29 15:33:14.799804', '1');
INSERT INTO "pagos"."tr_bitacora" VALUES ('221', 'UPD', 'pago', '14', '(14,18,"2018-06-27 00:00:00",7,"2018-06-27 00:00:00",2,2.00,1000.00,2,,1,2,"2018-06-27 00:00:00","2018-06-29 15:32:49.570312")', '(14,18,"2018-06-27 00:00:00",7,"2018-06-27 00:00:00",2,2.00,1000.00,2,,1,13,"2018-06-27 00:00:00","2018-06-29 15:33:14.799804")', '2018-06-29 15:33:14.799804', '1');

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
"created_at" timestamp(0),
"updated_at" timestamp(0)
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
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
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
-- Table structure for usurol
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."usurol";
CREATE TABLE "pagos"."usurol" (
"id_usurol" int4 DEFAULT nextval('"pagos".usurol_id_usurol_seq'::regclass) NOT NULL,
"id_usuariop" int4 NOT NULL,
"id_rol" int4 NOT NULL,
"tx_observaciones" varchar(100) COLLATE "default" DEFAULT 'N/A'::character varying,
"id_usuario" int4 NOT NULL,
"id_status" int4 NOT NULL,
"fe_creado" timestamp(0),
"fe_actualizado" timestamp(0)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of usurol
-- ----------------------------
INSERT INTO "pagos"."usurol" VALUES ('1', '1', '3', 'N/A', '1', '1', '2018-06-27 00:00:00', null);
INSERT INTO "pagos"."usurol" VALUES ('2', '2', '1', 'N/A', '1', '1', '2018-06-27 00:00:00', null);

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "pagos"."ejecucion_pago_id_ejecucion_pago_seq" OWNED BY "ejecucion_pago"."id_ejecucion_pago";
ALTER SEQUENCE "pagos"."menu_id_menu_seq" OWNED BY "menu"."id_menu";
ALTER SEQUENCE "pagos"."modulo_id_modulo_seq" OWNED BY "modulo"."id_modulo";
ALTER SEQUENCE "pagos"."movimiento_id_movimiento_seq" OWNED BY "movimiento"."id_movimiento";
ALTER SEQUENCE "pagos"."permiso_id_permiso_seq" OWNED BY "permiso"."id_permiso";
ALTER SEQUENCE "pagos"."rol_id_rol_seq" OWNED BY "rol"."id_rol";
ALTER SEQUENCE "pagos"."tipo_ingresoo_id_tpingreso_seq" OWNED BY "tipo_ingresoo"."id_tpingreso";
ALTER SEQUENCE "pagos"."tr_bitacora_id_bitacora_seq" OWNED BY "tr_bitacora"."id_bitacora";
ALTER SEQUENCE "pagos"."usurol_id_usurol_seq" OWNED BY "usurol"."id_usurol";

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
-- Uniques structure for table menu
-- ----------------------------
ALTER TABLE "pagos"."menu" ADD UNIQUE ("nb_menu");

-- ----------------------------
-- Primary Key structure for table menu
-- ----------------------------
ALTER TABLE "pagos"."menu" ADD PRIMARY KEY ("id_menu");

-- ----------------------------
-- Uniques structure for table modulo
-- ----------------------------
ALTER TABLE "pagos"."modulo" ADD UNIQUE ("nb_modulo");

-- ----------------------------
-- Primary Key structure for table modulo
-- ----------------------------
ALTER TABLE "pagos"."modulo" ADD PRIMARY KEY ("id_modulo");

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
-- Primary Key structure for table movimiento
-- ----------------------------
ALTER TABLE "pagos"."movimiento" ADD PRIMARY KEY ("id_movimiento");

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
-- Primary Key structure for table permiso
-- ----------------------------
ALTER TABLE "pagos"."permiso" ADD PRIMARY KEY ("id_permiso");

-- ----------------------------
-- Uniques structure for table rol
-- ----------------------------
ALTER TABLE "pagos"."rol" ADD UNIQUE ("nb_rol");

-- ----------------------------
-- Primary Key structure for table rol
-- ----------------------------
ALTER TABLE "pagos"."rol" ADD PRIMARY KEY ("id_rol");

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
-- Uniques structure for table tipo_ingresoo
-- ----------------------------
ALTER TABLE "pagos"."tipo_ingresoo" ADD UNIQUE ("nb_tpingreso");

-- ----------------------------
-- Primary Key structure for table tipo_ingresoo
-- ----------------------------
ALTER TABLE "pagos"."tipo_ingresoo" ADD PRIMARY KEY ("id_tpingreso");

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
-- Primary Key structure for table tr_bitacora
-- ----------------------------
ALTER TABLE "pagos"."tr_bitacora" ADD PRIMARY KEY ("id_bitacora");

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

-- ----------------------------
-- Uniques structure for table usurol
-- ----------------------------
ALTER TABLE "pagos"."usurol" ADD UNIQUE ("id_usuariop", "id_rol");

-- ----------------------------
-- Primary Key structure for table usurol
-- ----------------------------
ALTER TABLE "pagos"."usurol" ADD PRIMARY KEY ("id_usurol");
