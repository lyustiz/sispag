/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : PostgreSQL
 Source Server Version : 100001
 Source Host           : localhost:5432
 Source Catalog        : postgres
 Source Schema         : pagos

 Target Server Type    : PostgreSQL
 Target Server Version : 100001
 File Encoding         : 65001

 Date: 24/06/2018 23:23:57
*/


-- ----------------------------
-- Sequence structure for banco_id_banco_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."banco_id_banco_seq";
CREATE SEQUENCE "pagos"."banco_id_banco_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 20
CACHE 1;

-- ----------------------------
-- Sequence structure for categoria_id_categoria_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."categoria_id_categoria_seq";
CREATE SEQUENCE "pagos"."categoria_id_categoria_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 10
CACHE 1;

-- ----------------------------
-- Sequence structure for clase_ente_id_clase_ente_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."clase_ente_id_clase_ente_seq";
CREATE SEQUENCE "pagos"."clase_ente_id_clase_ente_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 2
CACHE 1;

-- ----------------------------
-- Sequence structure for cuenta_id_cuenta_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."cuenta_id_cuenta_seq";
CREATE SEQUENCE "pagos"."cuenta_id_cuenta_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 2
CACHE 1;

-- ----------------------------
-- Sequence structure for det_cuenta_id_det_cuenta_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."det_cuenta_id_det_cuenta_seq";
CREATE SEQUENCE "pagos"."det_cuenta_id_det_cuenta_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ejecucion_pago_id_ejecucion_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."ejecucion_pago_id_ejecucion_seq";
CREATE SEQUENCE "pagos"."ejecucion_pago_id_ejecucion_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 17
CACHE 1;

-- ----------------------------
-- Sequence structure for ente_id_ente_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."ente_id_ente_seq";
CREATE SEQUENCE "pagos"."ente_id_ente_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 15
CACHE 1;

-- ----------------------------
-- Sequence structure for esquema_id_esquema_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."esquema_id_esquema_seq";
CREATE SEQUENCE "pagos"."esquema_id_esquema_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 8
CACHE 1;

-- ----------------------------
-- Sequence structure for etapa_envio_id_etapa_envio_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."etapa_envio_id_etapa_envio_seq";
CREATE SEQUENCE "pagos"."etapa_envio_id_etapa_envio_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 3
CACHE 1;

-- ----------------------------
-- Sequence structure for grupo_banco_id_grupo_banco_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."grupo_banco_id_grupo_banco_seq";
CREATE SEQUENCE "pagos"."grupo_banco_id_grupo_banco_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 4
CACHE 1;

-- ----------------------------
-- Sequence structure for grupo_ente_id_grupo_ente_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."grupo_ente_id_grupo_ente_seq";
CREATE SEQUENCE "pagos"."grupo_ente_id_grupo_ente_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5
CACHE 1;

-- ----------------------------
-- Sequence structure for grupo_financiero_id_grupo_financiero_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."grupo_financiero_id_grupo_financiero_seq";
CREATE SEQUENCE "pagos"."grupo_financiero_id_grupo_financiero_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 4
CACHE 1;

-- ----------------------------
-- Sequence structure for grupo_status_id_grupo_status_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."grupo_status_id_grupo_status_seq";
CREATE SEQUENCE "pagos"."grupo_status_id_grupo_status_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 2
CACHE 1;

-- ----------------------------
-- Sequence structure for ingreso_id_ingreso_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."ingreso_id_ingreso_seq";
CREATE SEQUENCE "pagos"."ingreso_id_ingreso_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 8
CACHE 1;

-- ----------------------------
-- Sequence structure for instruccion_id_instruccion_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."instruccion_id_instruccion_seq";
CREATE SEQUENCE "pagos"."instruccion_id_instruccion_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 9
CACHE 1;

-- ----------------------------
-- Sequence structure for moneda_id_moneda_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."moneda_id_moneda_seq";
CREATE SEQUENCE "pagos"."moneda_id_moneda_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5
CACHE 1;

-- ----------------------------
-- Sequence structure for pagos_id_pago_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."pagos_id_pago_seq";
CREATE SEQUENCE "pagos"."pagos_id_pago_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 9
CACHE 1;

-- ----------------------------
-- Sequence structure for solicitud_id_solicitud_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."solicitud_id_solicitud_seq";
CREATE SEQUENCE "pagos"."solicitud_id_solicitud_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 6
CACHE 1;

-- ----------------------------
-- Sequence structure for status_id_status_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."status_id_status_seq";
CREATE SEQUENCE "pagos"."status_id_status_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 21
CACHE 1;

-- ----------------------------
-- Sequence structure for tasa_id_tasa_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."tasa_id_tasa_seq";
CREATE SEQUENCE "pagos"."tasa_id_tasa_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tipo_banco_id_tipo_banco_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."tipo_banco_id_tipo_banco_seq";
CREATE SEQUENCE "pagos"."tipo_banco_id_tipo_banco_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 2
CACHE 1;

-- ----------------------------
-- Sequence structure for tipo_ente_id_tipo_ente_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."tipo_ente_id_tipo_ente_seq";
CREATE SEQUENCE "pagos"."tipo_ente_id_tipo_ente_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 3
CACHE 1;

-- ----------------------------
-- Sequence structure for tipo_ingreso_id_tipo_ingreso_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."tipo_ingreso_id_tipo_ingreso_seq";
CREATE SEQUENCE "pagos"."tipo_ingreso_id_tipo_ingreso_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 8
CACHE 1;

-- ----------------------------
-- Sequence structure for tipo_pago_id_tipo_pago_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."tipo_pago_id_tipo_pago_seq";
CREATE SEQUENCE "pagos"."tipo_pago_id_tipo_pago_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 2
CACHE 1;

-- ----------------------------
-- Sequence structure for tr_bitacora_id_bitacora_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."tr_bitacora_id_bitacora_seq";
CREATE SEQUENCE "pagos"."tr_bitacora_id_bitacora_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 128
CACHE 1;

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."users_id_seq";
CREATE SEQUENCE "pagos"."users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 4
CACHE 1;

-- ----------------------------
-- Sequence structure for usuario_id_usuario_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."usuario_id_usuario_seq";
CREATE SEQUENCE "pagos"."usuario_id_usuario_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for banco
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."banco";
CREATE TABLE "pagos"."banco" (
  "id_banco" int4 NOT NULL DEFAULT nextval('"pagos".banco_id_banco_seq'::regclass),
  "nb_banco" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "id_tipo_banco" int4 NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6),
  "id_grupo_banco" int4
)
;

-- ----------------------------
-- Records of banco
-- ----------------------------
INSERT INTO "pagos"."banco" VALUES (1, 'BANDES', 1, 'N/A', 1, 1, '2018-06-08 00:00:00', NULL, 4);
INSERT INTO "pagos"."banco" VALUES (4, 'FONDEN', 1, 'N/A', 1, 1, '2018-06-08 00:00:00', NULL, 4);
INSERT INTO "pagos"."banco" VALUES (7, 'BCV', 1, 'N/A', 1, 1, '2018-06-08 00:00:00', NULL, 4);
INSERT INTO "pagos"."banco" VALUES (8, 'NOVO BANCO', 2, 'N/A', 1, 1, '2018-06-08 00:00:00', NULL, 1);
INSERT INTO "pagos"."banco" VALUES (9, 'GAZPROM BANK', 2, 'N/A', 1, 1, '2018-06-08 00:00:00', NULL, 1);
INSERT INTO "pagos"."banco" VALUES (10, 'NOOR CAPITAL', 2, 'N/A', 1, 1, '2018-06-08 00:00:00', NULL, 1);
INSERT INTO "pagos"."banco" VALUES (11, 'ZIRAAT BANKASI', 2, 'N/A', 1, 1, '2018-06-08 00:00:00', NULL, 1);
INSERT INTO "pagos"."banco" VALUES (12, 'EVROFINANCE MOSNARBANK', 2, 'N/A', 1, 1, '2018-06-08 00:00:00', NULL, 1);
INSERT INTO "pagos"."banco" VALUES (13, 'BPM ', 2, 'N/A', 1, 1, '2018-06-08 00:00:00', NULL, 1);
INSERT INTO "pagos"."banco" VALUES (14, 'MONDIAL BANK', 2, 'N/A', 1, 1, '2018-06-08 00:00:00', NULL, 1);
INSERT INTO "pagos"."banco" VALUES (15, 'FAISAL BANK', 2, 'N/A', 1, 1, '2018-06-08 00:00:00', NULL, 1);
INSERT INTO "pagos"."banco" VALUES (16, 'KUNLUN', 2, 'N/A', 1, 1, '2018-06-08 00:00:00', NULL, 1);
INSERT INTO "pagos"."banco" VALUES (5, 'BANCO DE VENEZUELA', 1, NULL, 1, 1, '2018-06-08 00:00:00', '2018-06-24 14:38:01', 4);
INSERT INTO "pagos"."banco" VALUES (6, 'BANCO DEL TESORO', 1, 'N/A', 1, 1, '2018-06-08 00:00:00', '2018-06-24 14:38:19', 4);

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."categoria";
CREATE TABLE "pagos"."categoria" (
  "id_categoria" int4 NOT NULL DEFAULT nextval('"pagos".categoria_id_categoria_seq'::regclass),
  "nb_categoria" varchar(50) COLLATE "pg_catalog"."default",
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;
COMMENT ON COLUMN "pagos"."categoria"."id_categoria" IS 'Identificador único del registro';
COMMENT ON TABLE "pagos"."categoria" IS 'Categoria del pago generado';

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO "pagos"."categoria" VALUES (1, 'Aimentos', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."categoria" VALUES (2, 'Clap', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."categoria" VALUES (3, 'Fanb', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."categoria" VALUES (4, 'Deuda', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."categoria" VALUES (5, 'Blletes', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."categoria" VALUES (6, 'Medicamentos', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);

-- ----------------------------
-- Table structure for clase_ente
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."clase_ente";
CREATE TABLE "pagos"."clase_ente" (
  "id_clase_ente" int4 NOT NULL DEFAULT nextval('"pagos".clase_ente_id_clase_ente_seq'::regclass),
  "nb_clase_ente" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of clase_ente
-- ----------------------------
INSERT INTO "pagos"."clase_ente" VALUES (1, 'PUBLICO', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."clase_ente" VALUES (2, 'PRIVADO', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);

-- ----------------------------
-- Table structure for cuenta
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."cuenta";
CREATE TABLE "pagos"."cuenta" (
  "id_cuenta" int4 NOT NULL DEFAULT nextval('"pagos".cuenta_id_cuenta_seq'::regclass),
  "id_moneda" int4,
  "mo_disponible" numeric(15,2),
  "mo_instruido" numeric(15,2),
  "mo_aprobado" numeric(15,2),
  "mo_total" numeric(15,2),
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Table structure for det_cuenta
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."det_cuenta";
CREATE TABLE "pagos"."det_cuenta" (
  "id_det_cuenta" int4 NOT NULL DEFAULT nextval('"pagos".det_cuenta_id_det_cuenta_seq'::regclass),
  "id_cuenta" int4,
  "nu_cuenta" float8,
  "mo_monto" float8,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Table structure for ejecucion_pago
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."ejecucion_pago";
CREATE TABLE "pagos"."ejecucion_pago" (
  "id_ejecucion" int4 NOT NULL DEFAULT nextval('"pagos".ejecucion_pago_id_ejecucion_seq'::regclass),
  "id_pago" int4 NOT NULL,
  "id_banco" int4 NOT NULL,
  "fe_envio_inst" timestamp(6),
  "id_etapa_envio" int4 NOT NULL,
  "tx_observacion" varchar(100) COLLATE "pg_catalog"."default",
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of ejecucion_pago
-- ----------------------------
INSERT INTO "pagos"."ejecucion_pago" VALUES (1, 1, 5, '2018-07-12 00:00:00', 1, NULL, 1, 1, '2018-06-12 00:00:00', NULL);
INSERT INTO "pagos"."ejecucion_pago" VALUES (2, 1, 3, '2018-07-12 00:00:00', 2, NULL, 1, 1, '2018-07-12 00:00:00', NULL);
INSERT INTO "pagos"."ejecucion_pago" VALUES (3, 1, 2, '2018-08-12 00:00:00', 3, NULL, 1, 1, '2018-07-12 00:00:00', NULL);
INSERT INTO "pagos"."ejecucion_pago" VALUES (5, 2, 3, '2018-08-10 00:00:00', 1, NULL, 1, 13, '2018-07-12 00:00:00', NULL);
INSERT INTO "pagos"."ejecucion_pago" VALUES (7, 2, 5, '2018-08-14 00:00:00', 2, NULL, 1, 13, '2018-08-14 00:00:00', NULL);
INSERT INTO "pagos"."ejecucion_pago" VALUES (8, 2, 2, '2018-08-20 00:00:00', 3, NULL, 1, 13, '2018-08-20 00:00:00', NULL);
INSERT INTO "pagos"."ejecucion_pago" VALUES (10, 7, 2, '2018-08-10 00:00:00', 1, NULL, 1, 10, '2018-08-21 00:00:00', NULL);
INSERT INTO "pagos"."ejecucion_pago" VALUES (11, 7, 3, '2018-08-14 00:00:00', 2, NULL, 1, 10, '2018-08-21 00:00:00', NULL);
INSERT INTO "pagos"."ejecucion_pago" VALUES (12, 7, 5, '2018-08-20 00:00:00', 3, NULL, 1, 10, '2018-08-21 00:00:00', NULL);
INSERT INTO "pagos"."ejecucion_pago" VALUES (13, 8, 5, '2018-08-10 00:00:00', 1, NULL, 1, 13, '2018-08-25 00:00:00', NULL);
INSERT INTO "pagos"."ejecucion_pago" VALUES (14, 8, 3, '2018-08-14 00:00:00', 2, NULL, 1, 13, '2018-08-25 00:00:00', NULL);
INSERT INTO "pagos"."ejecucion_pago" VALUES (15, 8, 2, '2018-08-20 00:00:00', 3, NULL, 1, 13, '2018-08-25 00:00:00', NULL);
INSERT INTO "pagos"."ejecucion_pago" VALUES (16, 9, 3, '2018-06-20 00:00:00', 1, NULL, 1, 10, '2018-08-26 00:00:00', NULL);
INSERT INTO "pagos"."ejecucion_pago" VALUES (17, 9, 5, '2018-08-14 00:00:00', 2, 'politicas internas, no procede', 1, 15, '2018-08-27 00:00:00', NULL);

-- ----------------------------
-- Table structure for ente
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."ente";
CREATE TABLE "pagos"."ente" (
  "id_ente" int4 NOT NULL DEFAULT nextval('"pagos".ente_id_ente_seq'::regclass),
  "nb_ente" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "id_tipo_ente" int4 NOT NULL,
  "id_grupo_ente" int4 NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of ente
-- ----------------------------
INSERT INTO "pagos"."ente" VALUES (2, 'FONDEN', 1, 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."ente" VALUES (3, 'CORPOVEX', 1, 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."ente" VALUES (10, 'MPP ECONOMIA Y FINANZAS', 3, 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."ente" VALUES (13, 'MPP EDUCACION', 3, 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."ente" VALUES (15, 'GOBERNACION TACHIRA', 2, 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."ente" VALUES (1, 'BCV', 1, 4, 'xx', 1, 1, NULL, '2018-06-24 22:38:57');

-- ----------------------------
-- Table structure for esquema
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."esquema";
CREATE TABLE "pagos"."esquema" (
  "id_esquema" int4 NOT NULL DEFAULT nextval('"pagos".esquema_id_esquema_seq'::regclass),
  "nb_esquema" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_requerimiento" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "id_esquema_padre" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of esquema
-- ----------------------------
INSERT INTO "pagos"."esquema" VALUES (1, 'VOI', 'NRO VOI', '0', 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."esquema" VALUES (2, 'CENCOEX', 'NRO SOLICITUD', '0', 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."esquema" VALUES (3, 'PAGOS PROPIOS BCV', 'N/A', '0', 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."esquema" VALUES (4, 'INSTRUCCION BCV', 'TIPO', '0', 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."esquema" VALUES (5, 'DEUDA', 'TIPO', '4', 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."esquema" VALUES (6, 'GASTOS REPRESENTACION', 'TIPO', '4', 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."esquema" VALUES (7, 'ONT', 'TIPO', '4', 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."esquema" VALUES (8, 'GASTO PROPIO ENTE', 'TIPO', '0', 'N/A', 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for etapa_envio
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."etapa_envio";
CREATE TABLE "pagos"."etapa_envio" (
  "id_etapa_envio" int4 NOT NULL DEFAULT nextval('"pagos".etapa_envio_id_etapa_envio_seq'::regclass),
  "nb_etapa_envio" varchar(50) COLLATE "pg_catalog"."default",
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of etapa_envio
-- ----------------------------
INSERT INTO "pagos"."etapa_envio" VALUES (1, 'CORRESPONSAL', NULL, 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."etapa_envio" VALUES (2, 'INTERMEDIARIO', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."etapa_envio" VALUES (3, 'BENEFICIARIO', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);

-- ----------------------------
-- Table structure for grupo_banco
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."grupo_banco";
CREATE TABLE "pagos"."grupo_banco" (
  "id_grupo_banco" int4 NOT NULL DEFAULT nextval('"pagos".grupo_banco_id_grupo_banco_seq'::regclass),
  "nb_grupo_banco" varchar(30) COLLATE "pg_catalog"."default",
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of grupo_banco
-- ----------------------------
INSERT INTO "pagos"."grupo_banco" VALUES (1, 'RECEPTOR', NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."grupo_banco" VALUES (2, 'CORRESPONSAL', NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."grupo_banco" VALUES (3, 'BENEFICIARIO', NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."grupo_banco" VALUES (4, 'RESPONSABLE PAGO (NAC)', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for grupo_ente
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."grupo_ente";
CREATE TABLE "pagos"."grupo_ente" (
  "id_grupo_ente" int4 NOT NULL DEFAULT nextval('"pagos".grupo_ente_id_grupo_ente_seq'::regclass),
  "nb_grupo_ente" varchar(50) COLLATE "pg_catalog"."default",
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of grupo_ente
-- ----------------------------
INSERT INTO "pagos"."grupo_ente" VALUES (4, 'RECEPTOR', NULL, 1, 1, '2018-06-12 00:00:00', NULL);
INSERT INTO "pagos"."grupo_ente" VALUES (5, 'SOLICITANTE', NULL, 1, 1, '2018-06-12 00:00:00', NULL);

-- ----------------------------
-- Table structure for grupo_financiero
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."grupo_financiero";
CREATE TABLE "pagos"."grupo_financiero" (
  "id_grupo_financiero" int4 NOT NULL DEFAULT nextval('"pagos".grupo_financiero_id_grupo_financiero_seq'::regclass),
  "nb_grupo_financiero" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of grupo_financiero
-- ----------------------------
INSERT INTO "pagos"."grupo_financiero" VALUES (1, 'RECEPTOR', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."grupo_financiero" VALUES (2, 'CORRESPONSAL', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."grupo_financiero" VALUES (3, 'BENEFICIARIO', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."grupo_financiero" VALUES (4, 'RESPONSABLE PAGO (NAC)', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);

-- ----------------------------
-- Table structure for grupo_status
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."grupo_status";
CREATE TABLE "pagos"."grupo_status" (
  "id_grupo_status" int4 NOT NULL DEFAULT nextval('"pagos".grupo_status_id_grupo_status_seq'::regclass),
  "nb_grupo" varchar(100) COLLATE "pg_catalog"."default",
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;
COMMENT ON COLUMN "pagos"."grupo_status"."id_grupo_status" IS 'Identificador único de la tabla grupo_status';
COMMENT ON COLUMN "pagos"."grupo_status"."nb_grupo" IS 'Nombre dado al grupo';
COMMENT ON COLUMN "pagos"."grupo_status"."tx_observaciones" IS 'Observaciones en caso de aplicar al campo insertado o modificado';
COMMENT ON COLUMN "pagos"."grupo_status"."id_usuario" IS 'Id usuario que interviene en el registro';
COMMENT ON COLUMN "pagos"."grupo_status"."id_status" IS 'Estatus del registro actual';
COMMENT ON COLUMN "pagos"."grupo_status"."fe_creado" IS 'Fecha y hora de la creación del registro';
COMMENT ON COLUMN "pagos"."grupo_status"."fe_actualizado" IS 'Fecha y hora de actualización del registro';
COMMENT ON TABLE "pagos"."grupo_status" IS 'Tabla que categoriza los grupos para definir estaus por grupos creados';

-- ----------------------------
-- Records of grupo_status
-- ----------------------------
INSERT INTO "pagos"."grupo_status" VALUES (1, 'Instrución', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."grupo_status" VALUES (2, 'Solicitud', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."grupo_status" VALUES (3, 'Pago', 'N/A', 1, 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."grupo_status" VALUES (4, 'Ingreso', 'N/A', 1, 1, '2018-06-20 00:00:00', NULL);

-- ----------------------------
-- Table structure for ingreso
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."ingreso";
CREATE TABLE "pagos"."ingreso" (
  "id_ingreso" int4 NOT NULL DEFAULT nextval('"pagos".ingreso_id_ingreso_seq'::regclass),
  "id_tipo_ingreso" int4,
  "id_ente" int4,
  "id_moneda" int4,
  "mo_ingreso" numeric,
  "mo_tasa" numeric(5,2),
  "fe_ingreso" timestamp(6),
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6),
  "id_banco" int4
)
;

-- ----------------------------
-- Records of ingreso
-- ----------------------------
INSERT INTO "pagos"."ingreso" VALUES (1, 1, 1, 1, 5000.00, 1.00, '2018-01-01 00:00:00', 'ninguna', 1, 1, '2018-01-01 00:00:00', '2018-01-01 00:00:00', 8);
INSERT INTO "pagos"."ingreso" VALUES (2, 2, 1, 2, 3455.55, 2.00, '2018-01-01 00:00:00', 'ninguna', 1, 1, '2018-06-20 00:00:00', NULL, 10);
INSERT INTO "pagos"."ingreso" VALUES (3, 3, 1, 2, 57687.66, 1.00, '2018-01-01 00:00:00', 'N/A', 1, 1, '2018-06-20 00:00:00', NULL, 9);
INSERT INTO "pagos"."ingreso" VALUES (4, 4, 1, 3, 54545.98, 2.00, '2018-01-01 00:00:00', 'N/A', 1, 1, '2018-06-20 00:00:00', NULL, 11);
INSERT INTO "pagos"."ingreso" VALUES (5, 5, 2, 1, 4560.80, 1.00, '2018-01-01 00:00:00', 'N/A', 1, 1, '2018-06-20 00:00:00', NULL, 8);
INSERT INTO "pagos"."ingreso" VALUES (6, 6, 2, 1, 6500.00, 1.00, '2018-01-01 00:00:00', 'N/A', 1, 1, '2018-06-20 00:00:00', NULL, 14);
INSERT INTO "pagos"."ingreso" VALUES (7, 7, 2, 1, 3450.00, 1.00, '2018-01-01 00:00:00', 'N/A', 1, 1, '2018-06-20 00:00:00', NULL, 10);
INSERT INTO "pagos"."ingreso" VALUES (8, 8, 2, 1, 7450.30, 1.00, '2018-01-01 00:00:00', 'N/A', 1, 1, '2018-06-20 00:00:00', NULL, 8);

-- ----------------------------
-- Table structure for instruccion
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."instruccion";
CREATE TABLE "pagos"."instruccion" (
  "id_instruccion" int4 NOT NULL DEFAULT nextval('"pagos".instruccion_id_instruccion_seq'::regclass),
  "id_solicitud" int4 NOT NULL,
  "tx_concepto" varchar(100) COLLATE "pg_catalog"."default",
  "id_esquema" int4 NOT NULL,
  "nu_esquema" varchar(20) COLLATE "pg_catalog"."default",
  "tx_ofi_cta_mte" varchar(20) COLLATE "pg_catalog"."default",
  "bo_ofi_cta_mte" bool,
  "fe_instruccion" timestamp(6),
  "mo_instruccion" float8,
  "id_moneda" int4 NOT NULL,
  "tx_observacion" varchar(100) COLLATE "pg_catalog"."default",
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of instruccion
-- ----------------------------
INSERT INTO "pagos"."instruccion" VALUES (1, 2, 'Paracaidas', 1, 'voi 0', 'ofi-001', 't', '2018-02-01 00:00:00', 5635736, 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."instruccion" VALUES (3, 1, 'Maiz', 1, 'voi 2', 'ofi-002', 't', '2018-06-01 00:00:00', 797867.02, 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."instruccion" VALUES (5, 5, 'Insulina', 1, 'voi 3', NULL, 'f', '2018-06-20 00:00:00', 4000, 1, NULL, 1, 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."instruccion" VALUES (7, 6, 'Total Clap', 4, 'inst 1', 'ofi-003', 't', '2018-06-20 00:00:00', 15000, 1, NULL, 1, 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."instruccion" VALUES (9, 3, 'Ambulancias', 4, 'inst 2', NULL, 'f', '2018-06-20 00:00:00', 232535.23, 1, NULL, 1, 9, '2018-06-20 00:00:00', NULL);

-- ----------------------------
-- Table structure for moneda
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."moneda";
CREATE TABLE "pagos"."moneda" (
  "id_moneda" int4 NOT NULL DEFAULT nextval('"pagos".moneda_id_moneda_seq'::regclass),
  "nb_moneda" varchar(25) COLLATE "pg_catalog"."default",
  "co_moneda" varchar(5) COLLATE "pg_catalog"."default",
  "tx_signo" varchar(3) COLLATE "pg_catalog"."default",
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;
COMMENT ON COLUMN "pagos"."moneda"."id_moneda" IS 'Identificador único de la tabla moneda';
COMMENT ON COLUMN "pagos"."moneda"."co_moneda" IS 'Codigo de la moneda';
COMMENT ON COLUMN "pagos"."moneda"."tx_observaciones" IS 'Observaciones en caso de aplicar al campo insertado o modificado';
COMMENT ON COLUMN "pagos"."moneda"."id_usuario" IS 'Id usuario que interviene en el registro';
COMMENT ON COLUMN "pagos"."moneda"."id_status" IS 'Estatus del registro actual';
COMMENT ON COLUMN "pagos"."moneda"."fe_creado" IS 'Fecha y hora de la creación del registro';
COMMENT ON COLUMN "pagos"."moneda"."fe_actualizado" IS 'Fecha y hora de actualización del registro';
COMMENT ON TABLE "pagos"."moneda" IS 'Define las monedas existentes y que funcionaran en el aplicativo';

-- ----------------------------
-- Records of moneda
-- ----------------------------
INSERT INTO "pagos"."moneda" VALUES (1, 'Dolar', 'USD', '$', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."moneda" VALUES (2, 'Euro', 'EUR', '€', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."moneda" VALUES (3, 'Reminbi', 'RMB', '¥', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."moneda" VALUES (4, 'Rublo', 'RUB', '₽', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."moneda" VALUES (5, 'Dirham', 'AED', 'Dhs', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);

-- ----------------------------
-- Table structure for pago
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."pago";
CREATE TABLE "pagos"."pago" (
  "id_pago" int4 NOT NULL DEFAULT nextval('"pagos".pagos_id_pago_seq'::regclass),
  "id_instruccion" int4 NOT NULL,
  "fe_liq_bcv" timestamp(6),
  "id_banco" int4 NOT NULL,
  "fe_pago" timestamp(6),
  "id_moneda" int4 NOT NULL,
  "id_tasa" int4 NOT NULL,
  "mo_final_pago" float8,
  "id_tipo_pago" int4 NOT NULL,
  "tx_observacion" varchar(100) COLLATE "pg_catalog"."default",
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of pago
-- ----------------------------
INSERT INTO "pagos"."pago" VALUES (1, 3, '2018-07-12 00:00:00', 2, '2018-06-12 00:00:00', 3, 1, 5682535.89, 2, NULL, 1, 1, '2018-06-12 00:00:00', NULL);
INSERT INTO "pagos"."pago" VALUES (2, 9, '2018-07-30 00:00:00', 7, '2018-08-01 00:00:00', 1, 1, 232535.23, 1, NULL, 1, 13, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."pago" VALUES (7, 5, '2018-06-30 00:00:00', 7, '2018-08-01 00:00:00', 1, 1, 2000, 2, NULL, 1, 10, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."pago" VALUES (8, 5, '2018-06-30 00:00:00', 7, '2018-09-15 00:00:00', 1, 1, 2000, 2, NULL, 1, 13, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."pago" VALUES (9, 7, '2018-06-30 00:00:00', 7, '2018-09-15 00:00:00', 1, 1, 15000, 1, NULL, 1, 12, '2018-06-20 00:00:00', NULL);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."password_resets";
CREATE TABLE "pagos"."password_resets" (
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6)
)
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
  "id_solicitud" int4 NOT NULL DEFAULT nextval('"pagos".solicitud_id_solicitud_seq'::regclass),
  "nu_solicitud" varchar(25) COLLATE "pg_catalog"."default",
  "tx_concepto" varchar(200) COLLATE "pg_catalog"."default",
  "mo_solicitud" numeric(15,2),
  "fe_solicitud" timestamp(6),
  "id_ente" int4 NOT NULL,
  "id_moneda" int4 NOT NULL,
  "id_categoria" int4 NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of solicitud
-- ----------------------------
INSERT INTO "pagos"."solicitud" VALUES (1, '0001', 'MAIZ BLANCO', 3242535.89, '2018-06-01 00:00:00', 1, 1, 1, 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."solicitud" VALUES (2, '0002', 'PARACAIDAS', 5654654.43, '2018-06-02 00:00:00', 2, 2, 3, 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."solicitud" VALUES (3, '0003', 'AMBULANCIA', 232535.23, '2018-06-02 00:00:00', 3, 1, 3, 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."solicitud" VALUES (4, '0004', 'ARROZ', 433466.00, '2018-08-01 00:00:00', 3, 1, 1, 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."solicitud" VALUES (5, '0005', 'INSULINA', 4500.00, '2018-06-20 00:00:00', 10, 1, 6, 'N/A', 1, 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."solicitud" VALUES (6, '0006', 'TOTAL CLAP', 25000.00, '2018-06-20 00:00:00', 15, 1, 2, 'N/A', 1, 1, '2018-06-20 00:00:00', NULL);

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."status";
CREATE TABLE "pagos"."status" (
  "id_status" int4 NOT NULL DEFAULT nextval('"pagos".status_id_status_seq'::regclass),
  "nb_status" varchar(150) COLLATE "pg_catalog"."default",
  "co_status" varchar(10) COLLATE "pg_catalog"."default",
  "nb_secundario" varchar(50) COLLATE "pg_catalog"."default",
  "id_grupo" int4 NOT NULL,
  "bo_status" bool NOT NULL,
  "id_padre" int4,
  "tx_observacion" varchar(150) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;
COMMENT ON COLUMN "pagos"."status"."id_status" IS 'Identificacdor único de la tabla Status';
COMMENT ON COLUMN "pagos"."status"."nb_status" IS 'Nombre del status';
COMMENT ON COLUMN "pagos"."status"."co_status" IS 'código del segundo estatus secundario';
COMMENT ON COLUMN "pagos"."status"."nb_secundario" IS 'Nombre del estatus secundario';
COMMENT ON COLUMN "pagos"."status"."id_grupo" IS 'Identificador de la tabla grupo';
COMMENT ON COLUMN "pagos"."status"."bo_status" IS 'Id status detalle';
COMMENT ON COLUMN "pagos"."status"."id_padre" IS 'Estatus principal a quien pertenece';
COMMENT ON COLUMN "pagos"."status"."tx_observacion" IS 'Observación del registro estatus';
COMMENT ON COLUMN "pagos"."status"."id_usuario" IS 'id del usuario que realiza la acción';
COMMENT ON COLUMN "pagos"."status"."fe_creado" IS 'Fecha y hora de la creación del registro';
COMMENT ON COLUMN "pagos"."status"."fe_actualizado" IS 'Fecha y hora de modificación del registro';
COMMENT ON TABLE "pagos"."status" IS 'Tabla para los estatus de los sistemas ';

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO "pagos"."status" VALUES (4, 'Toda la documentación en regla', 'TDERSOL', 'Documentación en regla (solicitud)', 2, 't', 0, 'N/A', 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."status" VALUES (6, 'A la espera de documentación', 'AEDSOL', 'A la espera de documentación (solicitud)', 2, 't', 0, 'N/A', 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."status" VALUES (10, 'En Tránsito', 'ETPAG', 'En Tránsito (pago)', 3, 't', 0, 'N/A', 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."status" VALUES (11, 'Devuelto', 'DEVPAG', 'Devuelto (pago)', 3, 't', 0, 'N/A', 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."status" VALUES (12, 'Anulado', 'ANUPAG', 'Anulado (pago)', 3, 't', 0, 'N/A', 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."status" VALUES (13, 'Acreditado', 'ACRPAG', 'Acreditado (pago)', 3, 't', 0, 'N/A', 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."status" VALUES (15, 'Políticas internas', 'PIPAGDE', 'Políticas internas (devuelto)', 3, 't', 11, 'N/A', 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."status" VALUES (16, 'Coordenadas erradas', 'CEPAGDE', 'Coordenadas erradas (devuelto)', 3, 't', 11, 'N/A', 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."status" VALUES (17, 'Documentación incompleta', 'DIPAGDE', 'Documentación incompleta devuelto', 3, 't', 11, 'N/A', 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."status" VALUES (18, 'Políticas internas', 'PIPAGAN', 'Políticas internas (anulado)', 3, 't', 12, 'N/A', 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."status" VALUES (20, 'Coordenadas erradas', 'CEPAGAN', 'Coordenadas erradas anulado', 3, 't', 12, 'N/A', 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."status" VALUES (21, 'Documentación incompleta', 'DIPAGAN', 'Documentación incompleta (anulado)', 3, 't', 12, 'N/A', 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."status" VALUES (1, 'Activo', 'AING', 'Activo (Ingreso)', 1, 't', 0, 'N/A', 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."status" VALUES (2, 'Inactivo', 'IING', 'Inactivo (Ingreso)', 1, 't', 0, 'N/A', 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."status" VALUES (8, 'A la espera de documentación', 'AEDINST', 'A la espera de documentación (instrución)', 4, 't', 0, 'N/A', 1, '2018-06-20 00:00:00', NULL);
INSERT INTO "pagos"."status" VALUES (9, 'Documentación en regla en proceso de instrucción', 'TDERINST', 'Documentación en regla en proceso de instrucción (', 4, 't', 0, 'N/A', 1, '2018-06-20 00:00:00', NULL);

-- ----------------------------
-- Table structure for tasa
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tasa";
CREATE TABLE "pagos"."tasa" (
  "id_tasa" int4 NOT NULL DEFAULT nextval('"pagos".tasa_id_tasa_seq'::regclass),
  "id_moneda" int4,
  "mo_tasa" numeric(10,2),
  "fe_tasa" timestamp(6),
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;
COMMENT ON COLUMN "pagos"."tasa"."id_tasa" IS 'Indentificador único del registro';
COMMENT ON COLUMN "pagos"."tasa"."id_moneda" IS 'id moneda a quien se le aplica la tasa';
COMMENT ON COLUMN "pagos"."tasa"."mo_tasa" IS 'Monto o valor de la tasa aplicada a la moneda';
COMMENT ON COLUMN "pagos"."tasa"."fe_tasa" IS 'Fecha registro de la tasa';
COMMENT ON COLUMN "pagos"."tasa"."tx_observaciones" IS 'Observaciones en caso de aplicar al campo insertado o modificado';
COMMENT ON COLUMN "pagos"."tasa"."id_usuario" IS 'Id usuario que interviene en el registro';
COMMENT ON COLUMN "pagos"."tasa"."id_status" IS 'Estatus del registro actual';
COMMENT ON COLUMN "pagos"."tasa"."fe_creado" IS 'Fecha y hora de la creación del registro';
COMMENT ON COLUMN "pagos"."tasa"."fe_actualizado" IS 'Fecha y hora de actualización del registro';
COMMENT ON TABLE "pagos"."tasa" IS 'TABLA QUE DEFINE LOS VALORES DE LAS TASAS ACTUALES ACTIVAS E INACTIVAS';

-- ----------------------------
-- Records of tasa
-- ----------------------------
INSERT INTO "pagos"."tasa" VALUES (1, 1, 24.20, '2018-06-08 00:00:00', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);

-- ----------------------------
-- Table structure for tipo_banco
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tipo_banco";
CREATE TABLE "pagos"."tipo_banco" (
  "id_tipo_banco" int4 NOT NULL DEFAULT nextval('"pagos".tipo_banco_id_tipo_banco_seq'::regclass),
  "nb_tipo_banco" varchar(50) COLLATE "pg_catalog"."default",
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;
COMMENT ON COLUMN "pagos"."tipo_banco"."id_tipo_banco" IS 'IDENTIFICADOR ÚNICO DEL REGISTRO TABLA TIPO BANCO ';
COMMENT ON COLUMN "pagos"."tipo_banco"."nb_tipo_banco" IS 'NOMBRE DEL TIPO DE BANCO ';
COMMENT ON COLUMN "pagos"."tipo_banco"."tx_observaciones" IS 'Observaciones en caso de aplicar al campo insertado o modificado';
COMMENT ON COLUMN "pagos"."tipo_banco"."id_usuario" IS 'Id usuario que interviene en el registro';
COMMENT ON COLUMN "pagos"."tipo_banco"."id_status" IS 'Estatus del registro actual';
COMMENT ON COLUMN "pagos"."tipo_banco"."fe_creado" IS 'Fecha y hora de la creación del registro';
COMMENT ON COLUMN "pagos"."tipo_banco"."fe_actualizado" IS 'Fecha y hora de actualización del registro';
COMMENT ON TABLE "pagos"."tipo_banco" IS 'TABLA QUE CONTIENE TIPOS DE BANCO EXISTENTE (NACIONAL - INTEERNACIONAL )';

-- ----------------------------
-- Records of tipo_banco
-- ----------------------------
INSERT INTO "pagos"."tipo_banco" VALUES (1, 'NACIONAL', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."tipo_banco" VALUES (2, 'INTERNACIONAL', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);

-- ----------------------------
-- Table structure for tipo_ente
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tipo_ente";
CREATE TABLE "pagos"."tipo_ente" (
  "id_tipo_ente" int4 NOT NULL DEFAULT nextval('"pagos".tipo_ente_id_tipo_ente_seq'::regclass),
  "nb_tipo_ente" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "id_clase_ente" int4 NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of tipo_ente
-- ----------------------------
INSERT INTO "pagos"."tipo_ente" VALUES (1, 'ALCALDIAS', 1, 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."tipo_ente" VALUES (2, 'GOBERNACIONES', 1, 'N/A', 1, 1, '2018-06-12 00:00:00', NULL);
INSERT INTO "pagos"."tipo_ente" VALUES (3, 'MINISTERIOS', 1, 'N/A', 1, 1, '2018-06-12 00:00:00', NULL);

-- ----------------------------
-- Table structure for tipo_ingreso
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tipo_ingreso";
CREATE TABLE "pagos"."tipo_ingreso" (
  "id_tipo_ingreso" int4 NOT NULL DEFAULT nextval('"pagos".tipo_ingreso_id_tipo_ingreso_seq'::regclass),
  "nb_tipo_ingreso" varchar(100) COLLATE "pg_catalog"."default",
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;
COMMENT ON COLUMN "pagos"."tipo_ingreso"."id_tipo_ingreso" IS 'IDENTIFICADOR UNICO DEL REGISTRO';
COMMENT ON COLUMN "pagos"."tipo_ingreso"."nb_tipo_ingreso" IS 'NOMBRE DEL TIPO DE INGRESO';
COMMENT ON COLUMN "pagos"."tipo_ingreso"."tx_observaciones" IS 'Observaciones en caso de aplicar al campo insertado o modificado';
COMMENT ON COLUMN "pagos"."tipo_ingreso"."id_usuario" IS 'Id usuario que interviene en el registro';
COMMENT ON COLUMN "pagos"."tipo_ingreso"."id_status" IS 'Estatus del registro actual';
COMMENT ON COLUMN "pagos"."tipo_ingreso"."fe_creado" IS 'Fecha y hora de la creación del registro';
COMMENT ON COLUMN "pagos"."tipo_ingreso"."fe_actualizado" IS 'Fecha y hora de actualización del registro';
COMMENT ON TABLE "pagos"."tipo_ingreso" IS 'TABLA QUE CONTIENE TIPO DE INGRESO EXISTENTES';

-- ----------------------------
-- Records of tipo_ingreso
-- ----------------------------
INSERT INTO "pagos"."tipo_ingreso" VALUES (1, 'PDVSA', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."tipo_ingreso" VALUES (2, 'VENTA DE ORO', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."tipo_ingreso" VALUES (3, 'PRESTAMOS DE ORGANISMOS MULTILATERAL', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."tipo_ingreso" VALUES (4, 'PRESTAMO DE PAÍS', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."tipo_ingreso" VALUES (5, 'RETIRO DE CUENTAS COLECTORAS', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."tipo_ingreso" VALUES (6, 'VENTA DE DIVISAS ORGANISMOS PÚBLICOS', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."tipo_ingreso" VALUES (7, 'VENTA DE DIVISAS DICOM - PRIVADOS', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."tipo_ingreso" VALUES (8, 'INGRESOS PROPIOS', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);

-- ----------------------------
-- Table structure for tipo_pago
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tipo_pago";
CREATE TABLE "pagos"."tipo_pago" (
  "id_tipo_pago" int4 NOT NULL DEFAULT nextval('"pagos".tipo_pago_id_tipo_pago_seq'::regclass),
  "nb_tipo_pago" varchar(50) COLLATE "pg_catalog"."default",
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of tipo_pago
-- ----------------------------
INSERT INTO "pagos"."tipo_pago" VALUES (1, 'TOTAL', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."tipo_pago" VALUES (2, 'PARCIAL', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);

-- ----------------------------
-- Table structure for tr_bitacora
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tr_bitacora";
CREATE TABLE "pagos"."tr_bitacora" (
  "id_bitacora" int4 NOT NULL DEFAULT nextval('"pagos".tr_bitacora_id_bitacora_seq'::regclass),
  "co_accion" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_tabla" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "in_id_tabla" int4 NOT NULL,
  "tx_old_valor" varchar(2000) COLLATE "pg_catalog"."default",
  "tx_new_valor" varchar(2000) COLLATE "pg_catalog"."default",
  "fe_accion" timestamp(6),
  "id_usuario" int4 NOT NULL
)
;

-- ----------------------------
-- Records of tr_bitacora
-- ----------------------------
INSERT INTO "pagos"."tr_bitacora" VALUES (1, 'INS', 'categoria', 10, NULL, '(10,prueba,N/A,1,1,"2018-06-19 11:11:45.828125",)', '2018-06-19 11:11:45.828125', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (2, 'UPD', 'categoria', 10, '(10,prueba,N/A,1,1,"2018-06-19 11:11:45.828125",)', '(10,pruebaupd,"prueba actualizacion",1,1,"2018-06-19 11:11:45.828125","2018-06-19 11:16:08.939453")', '2018-06-19 11:16:08.939453', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (3, 'INS', 'grupo_status', 1, NULL, '(3,Pago,N/A,1,1,"2018-06-20 00:00:00",)', '2018-06-20 13:42:51.637695', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (4, 'UPD', 'grupo_status', 1, '(2,SOLICITUD,N/A,1,1,"2018-06-08 00:00:00",)', '(2,Solicitud,N/A,1,1,"2018-06-08 00:00:00",)', '2018-06-20 13:43:07.835937', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (5, 'UPD', 'grupo_status', 1, '(1,INTRUCCIÓN,N/A,1,1,"2018-06-08 00:00:00",)', '(1,Instrución,N/A,1,1,"2018-06-08 00:00:00",)', '2018-06-20 13:43:36.642578', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (6, 'UPD', 'status', 1, '(1,ACTIVO,AING,"ACTIVO INGRESO",1,t,1,N/A,1,"2018-06-08 00:00:00",)', '(1,Activo,AING,"ACTIVO INGRESO",1,t,1,N/A,1,"2018-06-08 00:00:00",)', '2018-06-20 13:45:36.345703', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (7, 'UPD', 'status', 2, '(2,INACTIVO,IING,"INACTIVO ONGRESO",1,t,1,N/A,1,"2018-06-08 00:00:00",)', '(2,Inactivo,IING,"INACTIVO ONGRESO",1,t,1,N/A,1,"2018-06-08 00:00:00",)', '2018-06-20 13:45:45.992187', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (8, 'UPD', 'status', 1, '(1,Activo,AING,"ACTIVO INGRESO",1,t,1,N/A,1,"2018-06-08 00:00:00",)', '(1,Activo,AING,"Activo Ingreso",1,t,1,N/A,1,"2018-06-08 00:00:00",)', '2018-06-20 13:45:59.671875', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (9, 'UPD', 'status', 2, '(2,Inactivo,IING,"INACTIVO ONGRESO",1,t,1,N/A,1,"2018-06-08 00:00:00",)', '(2,Inactivo,IING,"Inactivo Ingreso",1,t,1,N/A,1,"2018-06-08 00:00:00",)', '2018-06-20 13:46:12.159179', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (10, 'UPD', 'status', 1, '(1,Activo,AING,"Activo Ingreso",1,t,1,N/A,1,"2018-06-08 00:00:00",)', '(1,Activo,AING,"Activo Ingreso",4,t,1,N/A,1,"2018-06-08 00:00:00",)', '2018-06-20 13:46:17.015625', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (11, 'UPD', 'status', 2, '(2,Inactivo,IING,"Inactivo Ingreso",1,t,1,N/A,1,"2018-06-08 00:00:00",)', '(2,Inactivo,IING,"Inactivo Ingreso",4,t,1,N/A,1,"2018-06-08 00:00:00",)', '2018-06-20 13:46:42.262695', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (13, 'INS', 'status', 4, NULL, '(4,"Toda la documentación en regla",TDER,"Documentación en regla Solicitud",2,t,3,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 13:54:26.964843', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (14, 'UPD', 'status', 4, '(4,"Toda la documentación en regla",TDER,"Documentación en regla Solicitud",2,t,3,N/A,1,"2018-06-20 00:00:00",)', '(4,"Toda la documentación en regla",TDERSOL,"Documentación en regla Solicitud",2,t,3,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 13:55:14.18457', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (15, 'INS', 'status', 6, NULL, '(6,"A la espera de documentación",AEDSOL,"A la espera de documentación Solicitud",2,t,5,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 13:57:27.884765', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (16, 'INS', 'status', 8, NULL, '(8,"A la espera de documentación",AEDINST,"A la espera de documentación Instrución",1,t,6,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:01:20.52832', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (17, 'INS', 'status', 9, NULL, '(9,"Documentación en regla en proceso de instrucción. ",TDERINST,"Documentación en regla en proceso de instrucción I",1,t,7,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:02:44.579101', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (18, 'INS', 'status', 10, NULL, '(10,"En Tránsito",ETPAG,"En Tránsito pago",3,t,8,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:05:41.502929', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (19, 'INS', 'status', 11, NULL, '(11,Devuelto,DEVPAG,"Devuelto pago",3,t,9,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:07:00.464843', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (20, 'INS', 'status', 12, NULL, '(12,Anulado,ANUPAG,"Anulado pago",3,t,10,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:08:05.923828', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (21, 'INS', 'status', 13, NULL, '(13,Acreditado,ACRPAG,"Acreditado pago",3,t,11,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:08:59.34375', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (22, 'INS', 'status', 15, NULL, '(15,"Políticas internas",PIPAGDE,"Políticas internas devuelto",3,t,9,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:12:28.425781', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (23, 'INS', 'status', 16, NULL, '(16,"Coordenadas erradas",CEPAGDE,"Coordenadas erradas devuelto",3,t,9,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:13:45.596679', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (24, 'INS', 'status', 17, NULL, '(17,"Documentación incompleta",DIPAGDE,"Documentación incompleta",3,t,9,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:14:51.767578', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (25, 'INS', 'status', 18, NULL, '(18,"Políticas internas",PIPAGAN,"Políticas internas anulado",3,t,10,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:17:08.797851', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (26, 'INS', 'status', 20, NULL, '(20,"Coordenadas erradas",CEPAGAN,"Coordenadas erradas anulado",3,t,10,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:18:24.90039', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (27, 'INS', 'status', 21, NULL, '(21,"Documentación incompleta",DIPAGAN,"Documentación incompleta anulado",3,t,10,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:19:38.251953', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (28, 'UPD', 'status', 15, '(15,"Políticas internas",PIPAGDE,"Políticas internas devuelto",3,t,9,N/A,1,"2018-06-20 00:00:00",)', '(15,"Políticas internas",PIPAGDE,"Políticas internas devuelto",3,t,11,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:22:15.913086', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (29, 'UPD', 'status', 16, '(16,"Coordenadas erradas",CEPAGDE,"Coordenadas erradas devuelto",3,t,9,N/A,1,"2018-06-20 00:00:00",)', '(16,"Coordenadas erradas",CEPAGDE,"Coordenadas erradas devuelto",3,t,11,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:22:17.689453', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (30, 'UPD', 'status', 17, '(17,"Documentación incompleta",DIPAGDE,"Documentación incompleta",3,t,9,N/A,1,"2018-06-20 00:00:00",)', '(17,"Documentación incompleta",DIPAGDE,"Documentación incompleta",3,t,11,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:22:29.807617', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (31, 'UPD', 'status', 18, '(18,"Políticas internas",PIPAGAN,"Políticas internas anulado",3,t,10,N/A,1,"2018-06-20 00:00:00",)', '(18,"Políticas internas",PIPAGAN,"Políticas internas anulado",3,t,12,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:22:32.231445', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (32, 'UPD', 'status', 20, '(20,"Coordenadas erradas",CEPAGAN,"Coordenadas erradas anulado",3,t,10,N/A,1,"2018-06-20 00:00:00",)', '(20,"Coordenadas erradas",CEPAGAN,"Coordenadas erradas anulado",3,t,12,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:22:34.424804', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (33, 'UPD', 'status', 21, '(21,"Documentación incompleta",DIPAGAN,"Documentación incompleta anulado",3,t,10,N/A,1,"2018-06-20 00:00:00",)', '(21,"Documentación incompleta",DIPAGAN,"Documentación incompleta anulado",3,t,12,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:22:55.325195', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (34, 'UPD', 'status', 6, '(6,"A la espera de documentación",AEDSOL,"A la espera de documentación Solicitud",2,t,5,N/A,1,"2018-06-20 00:00:00",)', '(6,"A la espera de documentación",AEDSOL,"A la espera de documentación Solicitud",2,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:22:57.662109', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (35, 'UPD', 'status', 8, '(8,"A la espera de documentación",AEDINST,"A la espera de documentación Instrución",1,t,6,N/A,1,"2018-06-20 00:00:00",)', '(8,"A la espera de documentación",AEDINST,"A la espera de documentación Instrución",1,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:23:09.796875', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (36, 'UPD', 'status', 4, '(4,"Toda la documentación en regla",TDERSOL,"Documentación en regla Solicitud",2,t,3,N/A,1,"2018-06-20 00:00:00",)', '(4,"Toda la documentación en regla",TDERSOL,"Documentación en regla Solicitud",2,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:23:15.516601', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (37, 'UPD', 'status', 9, '(9,"Documentación en regla en proceso de instrucción. ",TDERINST,"Documentación en regla en proceso de instrucción I",1,t,7,N/A,1,"2018-06-20 00:00:00",)', '(9,"Documentación en regla en proceso de instrucción. ",TDERINST,"Documentación en regla en proceso de instrucción I",1,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:23:18.413086', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (38, 'UPD', 'status', 10, '(10,"En Tránsito",ETPAG,"En Tránsito pago",3,t,8,N/A,1,"2018-06-20 00:00:00",)', '(10,"En Tránsito",ETPAG,"En Tránsito pago",3,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:23:19.364257', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (39, 'UPD', 'status', 11, '(11,Devuelto,DEVPAG,"Devuelto pago",3,t,9,N/A,1,"2018-06-20 00:00:00",)', '(11,Devuelto,DEVPAG,"Devuelto pago",3,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:23:21.644531', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (40, 'UPD', 'status', 12, '(12,Anulado,ANUPAG,"Anulado pago",3,t,10,N/A,1,"2018-06-20 00:00:00",)', '(12,Anulado,ANUPAG,"Anulado pago",3,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:23:37.658203', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (41, 'UPD', 'status', 13, '(13,Acreditado,ACRPAG,"Acreditado pago",3,t,11,N/A,1,"2018-06-20 00:00:00",)', '(13,Acreditado,ACRPAG,"Acreditado pago",3,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:24:25.784179', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (42, 'UPD', 'status', 1, '(1,Activo,AING,"Activo Ingreso",4,t,1,N/A,1,"2018-06-08 00:00:00",)', '(1,Activo,AING,"Activo Ingreso",4,t,0,N/A,1,"2018-06-08 00:00:00",)', '2018-06-20 14:25:44.618164', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (44, 'INS', 'grupo_status', 1, NULL, '(4,Ingreso,N/A,1,1,"2018-06-20 00:00:00",)', '2018-06-20 14:26:28.591796', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (45, 'UPD', 'status', 2, '(2,Inactivo,IING,"Inactivo Ingreso",4,t,1,N/A,1,"2018-06-08 00:00:00",)', '(2,Inactivo,IING,"Inactivo Ingreso",4,t,0,N/A,1,"2018-06-08 00:00:00",)', '2018-06-20 14:28:23.053711', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (46, 'UPD', 'status', 17, '(17,"Documentación incompleta",DIPAGDE,"Documentación incompleta",3,t,11,N/A,1,"2018-06-20 00:00:00",)', '(17,"Documentación incompleta",DIPAGDE,"Documentación incompleta devuelto",3,t,11,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:33:18.057617', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (47, 'UPD', 'status', 9, '(9,"Documentación en regla en proceso de instrucción. ",TDERINST,"Documentación en regla en proceso de instrucción I",1,t,0,N/A,1,"2018-06-20 00:00:00",)', '(9,"Documentación en regla en proceso de instrucción. ",TDERINST,"Documentación en regla en proceso de instrucción",1,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:33:33.905273', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (48, 'UPD', 'status', 8, '(8,"A la espera de documentación",AEDINST,"A la espera de documentación Instrución",1,t,0,N/A,1,"2018-06-20 00:00:00",)', '(8,"A la espera de documentación",AEDINST,"A la espera de documentación instrución",1,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:33:38.36914', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (49, 'UPD', 'status', 6, '(6,"A la espera de documentación",AEDSOL,"A la espera de documentación Solicitud",2,t,0,N/A,1,"2018-06-20 00:00:00",)', '(6,"A la espera de documentación",AEDSOL,"A la espera de documentación solicitud",2,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:33:42.632812', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (50, 'UPD', 'status', 4, '(4,"Toda la documentación en regla",TDERSOL,"Documentación en regla Solicitud",2,t,0,N/A,1,"2018-06-20 00:00:00",)', '(4,"Toda la documentación en regla",TDERSOL,"Documentación en regla (solicitud)",2,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:33:54.912109', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (51, 'UPD', 'status', 6, '(6,"A la espera de documentación",AEDSOL,"A la espera de documentación solicitud",2,t,0,N/A,1,"2018-06-20 00:00:00",)', '(6,"A la espera de documentación",AEDSOL,"A la espera de documentación (solicitud)",2,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:34:03.767578', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (52, 'UPD', 'status', 8, '(8,"A la espera de documentación",AEDINST,"A la espera de documentación instrución",1,t,0,N/A,1,"2018-06-20 00:00:00",)', '(8,"A la espera de documentación",AEDINST,"A la espera de documentación (instrución)",1,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:34:13.774414', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (53, 'UPD', 'status', 10, '(10,"En Tránsito",ETPAG,"En Tránsito pago",3,t,0,N/A,1,"2018-06-20 00:00:00",)', '(10,"En Tránsito",ETPAG,"En Tránsito (pago)",3,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:34:26.143554', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (54, 'UPD', 'status', 11, '(11,Devuelto,DEVPAG,"Devuelto pago",3,t,0,N/A,1,"2018-06-20 00:00:00",)', '(11,Devuelto,DEVPAG,"Devuelto (pago)",3,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:34:33.336914', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (55, 'UPD', 'status', 13, '(13,Acreditado,ACRPAG,"Acreditado pago",3,t,0,N/A,1,"2018-06-20 00:00:00",)', '(13,Acreditado,ACRPAG,"Acreditado (pago)",3,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:34:39.941406', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (56, 'UPD', 'status', 12, '(12,Anulado,ANUPAG,"Anulado pago",3,t,0,N/A,1,"2018-06-20 00:00:00",)', '(12,Anulado,ANUPAG,"Anulado (pago)",3,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:34:45.467773', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (57, 'UPD', 'status', 1, '(1,Activo,AING,"Activo Ingreso",4,t,0,N/A,1,"2018-06-08 00:00:00",)', '(1,Activo,AING,"Activo (Ingreso)",4,t,0,N/A,1,"2018-06-08 00:00:00",)', '2018-06-20 14:34:51.771484', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (58, 'UPD', 'status', 2, '(2,Inactivo,IING,"Inactivo Ingreso",4,t,0,N/A,1,"2018-06-08 00:00:00",)', '(2,Inactivo,IING,"Inactivo (Ingreso)",4,t,0,N/A,1,"2018-06-08 00:00:00",)', '2018-06-20 14:34:57.396484', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (59, 'UPD', 'status', 9, '(9,"Documentación en regla en proceso de instrucción. ",TDERINST,"Documentación en regla en proceso de instrucción",1,t,0,N/A,1,"2018-06-20 00:00:00",)', '(9,"Documentación en regla en proceso de instrucción. ",TDERINST,"Documentación en regla en proceso de instrucción (",1,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:35:27.553711', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (60, 'UPD', 'status', 9, '(9,"Documentación en regla en proceso de instrucción. ",TDERINST,"Documentación en regla en proceso de instrucción (",1,t,0,N/A,1,"2018-06-20 00:00:00",)', '(9,"Documentación en regla en proceso de instrucción",TDERINST,"Documentación en regla en proceso de instrucción (",1,t,0,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:35:36.616211', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (61, 'UPD', 'status', 15, '(15,"Políticas internas",PIPAGDE,"Políticas internas devuelto",3,t,11,N/A,1,"2018-06-20 00:00:00",)', '(15,"Políticas internas",PIPAGDE,"Políticas internas (devuelto)",3,t,11,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:35:48.814453', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (62, 'UPD', 'status', 16, '(16,"Coordenadas erradas",CEPAGDE,"Coordenadas erradas devuelto",3,t,11,N/A,1,"2018-06-20 00:00:00",)', '(16,"Coordenadas erradas",CEPAGDE,"Coordenadas erradas (devuelto)",3,t,11,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:35:54.671875', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (63, 'UPD', 'status', 18, '(18,"Políticas internas",PIPAGAN,"Políticas internas anulado",3,t,12,N/A,1,"2018-06-20 00:00:00",)', '(18,"Políticas internas",PIPAGAN,"Políticas internas (anulado)",3,t,12,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:35:59.911132', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (64, 'UPD', 'status', 21, '(21,"Documentación incompleta",DIPAGAN,"Documentación incompleta anulado",3,t,12,N/A,1,"2018-06-20 00:00:00",)', '(21,"Documentación incompleta",DIPAGAN,"Documentación incompleta (anulado)",3,t,12,N/A,1,"2018-06-20 00:00:00",)', '2018-06-20 14:36:15.277343', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (65, 'INS', 'ingreso', 5, NULL, '(5,5,5,1,4560.80,1,20180620,N/A,1,1,"2018-06-20 00:00:00",,8)', '2018-06-20 15:06:57.795898', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (66, 'UPD', 'ingreso', 1, '(1,1,1,1,5000.00,1,20180501,ninguna,1,1,"2018-01-01 00:00:00","2018-01-01 00:00:00",1)', '(1,1,1,1,5000.00,1,20180501,ninguna,1,1,"2018-01-01 00:00:00","2018-01-01 00:00:00",8)', '2018-06-20 15:07:44.800781', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (67, 'UPD', 'ingreso', 2, '(2,2,1,2,3455.55,2,20180501,ninguna,1,1,,,1)', '(2,2,1,2,3455.55,2,20180501,ninguna,1,1,,,10)', '2018-06-20 15:07:48.080078', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (68, 'UPD', 'ingreso', 3, '(3,3,2,2,57687.66,1,20180602,,1,1,,,1)', '(3,3,2,2,57687.66,1,20180602,,1,1,,,9)', '2018-06-20 15:07:50.152343', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (69, 'UPD', 'ingreso', 4, '(4,4,3,3,54545.98,2,20180602,,1,1,,,1)', '(4,4,3,3,54545.98,2,20180602,,1,1,,,11)', '2018-06-20 15:07:57.174804', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (70, 'UPD', 'ingreso', 2, '(2,2,1,2,3455.55,2,20180501,ninguna,1,1,,,10)', '(2,2,1,2,3455.55,2,20180501,ninguna,1,1,"2018-06-20 00:00:00",,10)', '2018-06-20 15:08:25.045898', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (71, 'UPD', 'ingreso', 3, '(3,3,2,2,57687.66,1,20180602,,1,1,,,9)', '(3,3,2,2,57687.66,1,20180602,,1,1,"2018-06-20 00:00:00",,9)', '2018-06-20 15:08:27.09375', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (72, 'UPD', 'ingreso', 4, '(4,4,3,3,54545.98,2,20180602,,1,1,,,11)', '(4,4,3,3,54545.98,2,20180602,,1,1,"2018-06-20 00:00:00",,11)', '2018-06-20 15:08:31.236328', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (73, 'INS', 'ingreso', 6, NULL, '(6,6,3,1,6500.00,1,20180620,N/A,1,1,"2018-06-20 00:00:00",,14)', '2018-06-20 15:11:30.873046', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (74, 'INS', 'ingreso', 7, NULL, '(7,7,3,1,3450.00,1,20180620,N/A,1,1,"2018-06-20 00:00:00",,10)', '2018-06-20 15:13:23.109375', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (75, 'INS', 'ingreso', 8, NULL, '(8,8,8,1,7450.30,1,20180620,N/A,1,1,"2018-06-20 00:00:00",,8)', '2018-06-20 15:19:39.142578', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (76, 'UPD', 'ingreso', 3, '(3,3,2,2,57687.66,1,20180602,,1,1,"2018-06-20 00:00:00",,9)', '(3,3,2,2,57687.66,1,20180602,N/A,1,1,"2018-06-20 00:00:00",,9)', '2018-06-20 15:20:46.192382', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (77, 'UPD', 'ingreso', 4, '(4,4,3,3,54545.98,2,20180602,,1,1,"2018-06-20 00:00:00",,11)', '(4,4,3,3,54545.98,2,20180602,N/A,1,1,"2018-06-20 00:00:00",,11)', '2018-06-20 15:20:52.233398', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (78, 'UPD', 'ingreso', 3, '(3,3,2,2,57687.66,1,20180602,N/A,1,1,"2018-06-20 00:00:00",,9)', '(3,3,1,2,57687.66,1,20180602,N/A,1,1,"2018-06-20 00:00:00",,9)', '2018-06-20 19:33:04.567382', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (79, 'UPD', 'ingreso', 4, '(4,4,3,3,54545.98,2,20180602,N/A,1,1,"2018-06-20 00:00:00",,11)', '(4,4,1,3,54545.98,2,20180602,N/A,1,1,"2018-06-20 00:00:00",,11)', '2018-06-20 19:33:07.617187', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (80, 'UPD', 'ingreso', 5, '(5,5,5,1,4560.80,1,20180620,N/A,1,1,"2018-06-20 00:00:00",,8)', '(5,5,2,1,4560.80,1,20180620,N/A,1,1,"2018-06-20 00:00:00",,8)', '2018-06-20 19:33:09.274414', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (81, 'UPD', 'ingreso', 6, '(6,6,3,1,6500.00,1,20180620,N/A,1,1,"2018-06-20 00:00:00",,14)', '(6,6,2,1,6500.00,1,20180620,N/A,1,1,"2018-06-20 00:00:00",,14)', '2018-06-20 19:33:10.665039', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (82, 'UPD', 'ingreso', 7, '(7,7,3,1,3450.00,1,20180620,N/A,1,1,"2018-06-20 00:00:00",,10)', '(7,7,2,1,3450.00,1,20180620,N/A,1,1,"2018-06-20 00:00:00",,10)', '2018-06-20 19:33:11.785156', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (83, 'INS', 'ente', 10, NULL, '(10,"MPP ECONOMIA Y FINANZAS",3,5,,1,1,,)', '2018-06-20 19:48:15.285156', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (84, 'INS', 'ente', 13, NULL, '(13,"MPP EDUCACION",3,5,,1,1,,)', '2018-06-20 19:51:01.154296', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (85, 'INS', 'ente', 15, NULL, '(15,"GOBERNACION TACHIRA",2,5,,1,1,,)', '2018-06-20 19:51:30.96875', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (86, 'INS', 'solicitud', 5, NULL, '(5,0005,INSULINA,4500.00,"2018-06-20 00:00:00",10,1,6,N/A,1,1,"2018-06-20 00:00:00",)', '2018-06-20 20:05:48.999023', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (87, 'INS', 'solicitud', 6, NULL, '(6,0006,"TOTAL CLAP",25000.00,"2018-06-20 00:00:00",15,1,2,N/A,1,1,,)', '2018-06-20 20:08:07.68457', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (88, 'UPD', 'solicitud', 6, '(6,0006,"TOTAL CLAP",25000.00,"2018-06-20 00:00:00",15,1,2,N/A,1,1,,)', '(6,0006,"TOTAL CLAP",25000.00,"2018-06-20 00:00:00",15,1,2,N/A,1,1,"2018-06-20 00:00:00",)', '2018-06-20 20:08:47.333984', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (89, 'UPD', 'solicitud', 2, '(2,0201,PARACAIDAS,5654654.43,"2018-06-02 00:00:00",2,2,3,N/A,1,1,,)', '(2,0002,PARACAIDAS,5654654.43,"2018-06-02 00:00:00",2,2,3,N/A,1,1,,)', '2018-06-20 20:09:08.520507', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (90, 'UPD', 'solicitud', 3, '(3,0303,AMBULANCIA,232535.23,"2018-06-02 00:00:00",3,1,3,N/A,1,1,,)', '(3,0003,AMBULANCIA,232535.23,"2018-06-02 00:00:00",3,1,3,N/A,1,1,,)', '2018-06-20 20:09:14.144531', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (91, 'INS', 'instruccion', 5, NULL, '(5,5,Insulina,1,"voi 3",,f,"2018-06-20 00:00:00",4000,1,,1,1,"2018-06-20 00:00:00",)', '2018-06-20 20:18:34.484375', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (92, 'INS', 'instruccion', 7, NULL, '(7,6,"Total Clap",4,"inst 1",ofi-003,t,"2018-06-20 00:00:00",15000,1,,1,1,"2018-06-20 00:00:00",)', '2018-06-20 20:21:40.375', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (93, 'UPD', 'instruccion', 1, '(1,1,lanchas,1,nro001,ofi-001,t,"2018-02-01 00:00:00",5635736,1,,1,1,,)', '(1,1,lanchas,1,"voi 0",ofi-001,t,"2018-02-01 00:00:00",5635736,1,,1,1,,)', '2018-06-20 20:21:54.292968', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (94, 'UPD', 'instruccion', 3, '(3,1,maiz,1,"voi 2",ofi2,t,"2018-06-01 00:00:00",797867.02,1,,1,1,,)', '(3,1,maiz,1,"voi 2",ofi-002,t,"2018-06-01 00:00:00",797867.02,1,,1,1,,)', '2018-06-20 20:21:59.052734', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (95, 'UPD', 'instruccion', 1, '(1,1,lanchas,1,"voi 0",ofi-001,t,"2018-02-01 00:00:00",5635736,1,,1,1,,)', '(1,2,paracaidas,1,"voi 0",ofi-001,t,"2018-02-01 00:00:00",5635736,1,,1,1,,)', '2018-06-20 20:24:19.93164', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (96, 'INS', 'instruccion', 9, NULL, '(9,3,Ambulancias,4,"inst 2",,f,"2018-06-20 00:00:00",232535.23,1,,1,1,"2018-06-20 00:00:00",)', '2018-06-20 20:26:22.533203', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (97, 'UPD', 'instruccion', 1, '(1,2,paracaidas,1,"voi 0",ofi-001,t,"2018-02-01 00:00:00",5635736,1,,1,1,,)', '(1,2,Paracaidas,1,"voi 0",ofi-001,t,"2018-02-01 00:00:00",5635736,1,,1,1,,)', '2018-06-20 20:26:35.514648', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (98, 'UPD', 'instruccion', 3, '(3,1,maiz,1,"voi 2",ofi-002,t,"2018-06-01 00:00:00",797867.02,1,,1,1,,)', '(3,1,Maiz,1,"voi 2",ofi-002,t,"2018-06-01 00:00:00",797867.02,1,,1,1,,)', '2018-06-20 20:26:46.026367', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (99, 'UPD', 'instruccion', 9, '(9,3,Ambulancias,4,"inst 2",,f,"2018-06-20 00:00:00",232535.23,1,,1,1,"2018-06-20 00:00:00",)', '(9,3,Ambulancias,4,"inst 2",,f,"2018-06-20 00:00:00",232535.23,1,,1,9,"2018-06-20 00:00:00",)', '2018-06-20 20:47:15.177734', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (100, 'INS', 'ejecucion_pago', 2, NULL, '(5,2,3,"2018-08-10 00:00:00",1,,1,13,,)', '2018-06-20 21:13:32.661132', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (101, 'UPD', 'ejecucion_pago', 2, '(5,2,3,"2018-08-10 00:00:00",1,,1,13,,)', '(5,2,3,"2018-08-10 00:00:00",1,,1,13,"2018-07-12 00:00:00",)', '2018-06-20 21:14:14.771484', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (102, 'INS', 'ejecucion_pago', 2, NULL, '(7,2,5,"2018-08-14 00:00:00",2,,1,13,"2018-08-14 00:00:00",)', '2018-06-20 21:15:28.199218', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (103, 'INS', 'ejecucion_pago', 2, NULL, '(8,2,2,"2018-08-20 00:00:00",3,,1,13,"2018-08-20 00:00:00",)', '2018-06-20 21:16:41.057617', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (104, 'INS', 'ejecucion_pago', 7, NULL, '(10,7,2,"2018-08-10 00:00:00",1,,1,10,"2018-08-21 00:00:00",)', '2018-06-20 21:38:48.208007', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (105, 'INS', 'ejecucion_pago', 7, NULL, '(11,7,3,"2018-08-14 00:00:00",2,,1,10,"2018-08-21 00:00:00",)', '2018-06-20 21:39:30.492187', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (106, 'INS', 'ejecucion_pago', 7, NULL, '(12,7,5,"2018-08-20 00:00:00",3,,1,10,"2018-08-21 00:00:00",)', '2018-06-20 21:40:25.625976', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (107, 'UPD', 'instruccion', 5, '(5,5,Insulina,1,"voi 3",,f,"2018-06-20 00:00:00",4000,1,,1,1,"2018-06-20 00:00:00",)', '(5,5,Insulina,1,"voi 3",,f,"2018-06-20 00:00:00",4000,1,,1,1,"2018-06-20 00:00:00",)', '2018-06-20 21:41:00.792968', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (108, 'INS', 'ejecucion_pago', 8, NULL, '(13,8,5,"2018-08-10 00:00:00",1,,1,13,"2018-08-25 00:00:00",)', '2018-06-20 21:44:35.023437', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (109, 'INS', 'ejecucion_pago', 8, NULL, '(14,8,3,"2018-08-14 00:00:00",2,,1,13,"2018-08-25 00:00:00",)', '2018-06-20 21:45:11.78125', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (110, 'INS', 'ejecucion_pago', 8, NULL, '(15,8,2,"2018-08-20 00:00:00",3,,1,13,"2018-08-25 00:00:00",)', '2018-06-20 21:45:49.298828', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (111, 'INS', 'ejecucion_pago', 9, NULL, '(16,9,3,"2018-06-20 00:00:00",1,,1,10,"2018-08-26 00:00:00",)', '2018-06-20 21:58:32.568359', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (112, 'INS', 'ejecucion_pago', 9, NULL, '(17,9,5,"2018-08-14 00:00:00",2,"politicas internas, no procede",1,15,"2018-08-27 00:00:00",)', '2018-06-20 22:05:21.387695', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (113, 'UPD', 'ingreso', 8, '(8,8,8,1,7450.30,1,20180620,N/A,1,1,"2018-06-20 00:00:00",,8)', '(8,8,2,1,7450.30,1,20180620,N/A,1,1,"2018-06-20 00:00:00",,8)', '2018-06-20 22:06:38.130859', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (114, 'UPD', 'categoria', 1, '(1,ALIMENTOS,N/A,1,1,"2018-06-08 00:00:00",)', '(1,Alimentos,N/A,1,1,"2018-06-08 00:00:00",)', '2018-06-20 22:09:39.578125', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (115, 'UPD', 'categoria', 1, '(1,Alimentos,N/A,1,1,"2018-06-08 00:00:00",)', '(1,Aimentos,N/A,1,1,"2018-06-08 00:00:00",)', '2018-06-20 22:10:01.833007', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (116, 'UPD', 'categoria', 2, '(2,CLAP,N/A,1,1,"2018-06-08 00:00:00",)', '(2,Clap,N/A,1,1,"2018-06-08 00:00:00",)', '2018-06-20 22:10:06.895507', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (117, 'UPD', 'categoria', 3, '(3,FANB,N/A,1,1,"2018-06-08 00:00:00",)', '(3,Fanb,N/A,1,1,"2018-06-08 00:00:00",)', '2018-06-20 22:10:13.167968', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (118, 'UPD', 'categoria', 4, '(4,DEUDA,N/A,1,1,"2018-06-08 00:00:00",)', '(4,Deuda,N/A,1,1,"2018-06-08 00:00:00",)', '2018-06-20 22:10:17.46289', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (119, 'UPD', 'categoria', 5, '(5,BILLETES,N/A,1,1,"2018-06-08 00:00:00",)', '(5,Blletes,N/A,1,1,"2018-06-08 00:00:00",)', '2018-06-20 22:10:22.023437', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (120, 'UPD', 'categoria', 6, '(6,MEDICAMENTOS,N/A,1,1,"2018-06-08 00:00:00",)', '(6,Medicamentos,N/A,1,1,"2018-06-08 00:00:00",)', '2018-06-20 22:10:28.294921', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (121, 'INS', 'ingreso', 1, NULL, '(1,1,1,1,5000.00,1.00,"2018-01-01 00:00:00",ninguna,1,1,"2018-01-01 00:00:00","2018-01-01 00:00:00",8)', '2018-06-20 22:36:04.155273', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (122, 'INS', 'ingreso', 2, NULL, '(2,2,1,2,3455.55,2.00,"2018-01-01 00:00:00",ninguna,1,1,"2018-06-20 00:00:00",,10)', '2018-06-20 22:36:04.204101', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (123, 'INS', 'ingreso', 3, NULL, '(3,3,1,2,57687.66,1.00,"2018-01-01 00:00:00",N/A,1,1,"2018-06-20 00:00:00",,9)', '2018-06-20 22:36:04.228515', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (124, 'INS', 'ingreso', 4, NULL, '(4,4,1,3,54545.98,2.00,"2018-01-01 00:00:00",N/A,1,1,"2018-06-20 00:00:00",,11)', '2018-06-20 22:36:04.280273', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (125, 'INS', 'ingreso', 5, NULL, '(5,5,2,1,4560.80,1.00,"2018-01-01 00:00:00",N/A,1,1,"2018-06-20 00:00:00",,8)', '2018-06-20 22:36:04.30664', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (126, 'INS', 'ingreso', 6, NULL, '(6,6,2,1,6500.00,1.00,"2018-01-01 00:00:00",N/A,1,1,"2018-06-20 00:00:00",,14)', '2018-06-20 22:36:04.329101', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (127, 'INS', 'ingreso', 7, NULL, '(7,7,2,1,3450.00,1.00,"2018-01-01 00:00:00",N/A,1,1,"2018-06-20 00:00:00",,10)', '2018-06-20 22:36:04.353515', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (128, 'INS', 'ingreso', 8, NULL, '(8,8,2,1,7450.30,1.00,"2018-01-01 00:00:00",N/A,1,1,"2018-06-20 00:00:00",,8)', '2018-06-20 22:36:04.379882', 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."users";
CREATE TABLE "pagos"."users" (
  "id" int4 NOT NULL DEFAULT nextval('"pagos".users_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "remember_token" varchar(100) COLLATE "pg_catalog"."default",
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "pagos"."users" VALUES (1, 'luisa', 'lyustis@gmail.com', '$2y$10$6Qs4V0VTicMSgbL8crvEgef.TL5aOEDmuI/NkCrmOgADWwTlxSi66', 'PD3OMZX63KE6EPS3GPRpXjdMnWRBSIxg4ihU4ch6tGU6BjhM00Q4a7PUX6xf', NULL, '2018-06-09 15:32:29');
INSERT INTO "pagos"."users" VALUES (4, 'carlos', 'cgranados@bandes.gob.ve', '$2y$10$6Qs4V0VTicMSgbL8crvEgef.TL5aOEDmuI/NkCrmOgADWwTlxSi66', '338W36NHAFmrSauuDL5L7awis4RxwmV95JR42bJUhnFeu8DoFDDWzQz2ylZ9', NULL, NULL);

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."usuario";
CREATE TABLE "pagos"."usuario" (
  "id_usuario" int4 NOT NULL DEFAULT nextval('"pagos".usuario_id_usuario_seq'::regclass),
  "tx_usuario" varchar(50) COLLATE "pg_catalog"."default",
  "tx_password" varchar(100) COLLATE "pg_catalog"."default",
  "nu_cedula" int4,
  "nb_nombre" varchar(50) COLLATE "pg_catalog"."default",
  "nb_apellido" varchar(50) COLLATE "pg_catalog"."default",
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
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
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"pagos"."banco_id_banco_seq"', 21, true);
SELECT setval('"pagos"."categoria_id_categoria_seq"', 11, true);
SELECT setval('"pagos"."clase_ente_id_clase_ente_seq"', 3, true);
SELECT setval('"pagos"."cuenta_id_cuenta_seq"', 3, true);
SELECT setval('"pagos"."det_cuenta_id_det_cuenta_seq"', 2, false);
SELECT setval('"pagos"."ejecucion_pago_id_ejecucion_seq"', 18, true);
SELECT setval('"pagos"."ente_id_ente_seq"', 22, true);
SELECT setval('"pagos"."esquema_id_esquema_seq"', 9, true);
SELECT setval('"pagos"."etapa_envio_id_etapa_envio_seq"', 4, true);
SELECT setval('"pagos"."grupo_banco_id_grupo_banco_seq"', 5, true);
SELECT setval('"pagos"."grupo_ente_id_grupo_ente_seq"', 6, true);
SELECT setval('"pagos"."grupo_financiero_id_grupo_financiero_seq"', 5, true);
SELECT setval('"pagos"."grupo_status_id_grupo_status_seq"', 3, true);
SELECT setval('"pagos"."ingreso_id_ingreso_seq"', 9, true);
SELECT setval('"pagos"."instruccion_id_instruccion_seq"', 10, true);
SELECT setval('"pagos"."moneda_id_moneda_seq"', 6, true);
SELECT setval('"pagos"."pagos_id_pago_seq"', 10, true);
SELECT setval('"pagos"."solicitud_id_solicitud_seq"', 7, true);
SELECT setval('"pagos"."status_id_status_seq"', 22, true);
SELECT setval('"pagos"."tasa_id_tasa_seq"', 2, true);
SELECT setval('"pagos"."tipo_banco_id_tipo_banco_seq"', 3, true);
SELECT setval('"pagos"."tipo_ente_id_tipo_ente_seq"', 4, true);
SELECT setval('"pagos"."tipo_ingreso_id_tipo_ingreso_seq"', 9, true);
SELECT setval('"pagos"."tipo_pago_id_tipo_pago_seq"', 3, true);
SELECT setval('"pagos"."tr_bitacora_id_bitacora_seq"', 129, true);
SELECT setval('"pagos"."users_id_seq"', 5, true);
SELECT setval('"pagos"."usuario_id_usuario_seq"', 2, false);

-- ----------------------------
-- Uniques structure for table banco
-- ----------------------------
ALTER TABLE "pagos"."banco" ADD CONSTRAINT "banco_nb_banco_key" UNIQUE ("nb_banco");

-- ----------------------------
-- Primary Key structure for table banco
-- ----------------------------
ALTER TABLE "pagos"."banco" ADD CONSTRAINT "banco_pkey" PRIMARY KEY ("id_banco");

-- ----------------------------
-- Uniques structure for table categoria
-- ----------------------------
ALTER TABLE "pagos"."categoria" ADD CONSTRAINT "categoria_nb_categoria_key" UNIQUE ("nb_categoria");

-- ----------------------------
-- Primary Key structure for table categoria
-- ----------------------------
ALTER TABLE "pagos"."categoria" ADD CONSTRAINT "categoria_pkey" PRIMARY KEY ("id_categoria");

-- ----------------------------
-- Uniques structure for table clase_ente
-- ----------------------------
ALTER TABLE "pagos"."clase_ente" ADD CONSTRAINT "clase_ente_nb_clase_ente_key" UNIQUE ("nb_clase_ente");

-- ----------------------------
-- Primary Key structure for table clase_ente
-- ----------------------------
ALTER TABLE "pagos"."clase_ente" ADD CONSTRAINT "clase_ente_pkey" PRIMARY KEY ("id_clase_ente");

-- ----------------------------
-- Primary Key structure for table cuenta
-- ----------------------------
ALTER TABLE "pagos"."cuenta" ADD CONSTRAINT "cuenta_pkey" PRIMARY KEY ("id_cuenta");

-- ----------------------------
-- Primary Key structure for table det_cuenta
-- ----------------------------
ALTER TABLE "pagos"."det_cuenta" ADD CONSTRAINT "det_cuenta_pkey" PRIMARY KEY ("id_det_cuenta");

-- ----------------------------
-- Primary Key structure for table ejecucion_pago
-- ----------------------------
ALTER TABLE "pagos"."ejecucion_pago" ADD CONSTRAINT "ejecucion_pago_pkey" PRIMARY KEY ("id_ejecucion");

-- ----------------------------
-- Uniques structure for table ente
-- ----------------------------
ALTER TABLE "pagos"."ente" ADD CONSTRAINT "ente_nb_ente_id_grupo_ente_key" UNIQUE ("nb_ente", "id_grupo_ente");

-- ----------------------------
-- Primary Key structure for table ente
-- ----------------------------
ALTER TABLE "pagos"."ente" ADD CONSTRAINT "ente_pkey" PRIMARY KEY ("id_ente");

-- ----------------------------
-- Uniques structure for table esquema
-- ----------------------------
ALTER TABLE "pagos"."esquema" ADD CONSTRAINT "esquema_nb_esquema_key" UNIQUE ("nb_esquema");

-- ----------------------------
-- Primary Key structure for table esquema
-- ----------------------------
ALTER TABLE "pagos"."esquema" ADD CONSTRAINT "esquema_pkey" PRIMARY KEY ("id_esquema");

-- ----------------------------
-- Uniques structure for table etapa_envio
-- ----------------------------
ALTER TABLE "pagos"."etapa_envio" ADD CONSTRAINT "etapa_envio_nb_etapa_envio_key" UNIQUE ("nb_etapa_envio");

-- ----------------------------
-- Primary Key structure for table etapa_envio
-- ----------------------------
ALTER TABLE "pagos"."etapa_envio" ADD CONSTRAINT "etapa_envio_pkey" PRIMARY KEY ("id_etapa_envio");

-- ----------------------------
-- Uniques structure for table grupo_banco
-- ----------------------------
ALTER TABLE "pagos"."grupo_banco" ADD CONSTRAINT "grupo_banco_nb_grupo_banco_key" UNIQUE ("nb_grupo_banco");

-- ----------------------------
-- Primary Key structure for table grupo_banco
-- ----------------------------
ALTER TABLE "pagos"."grupo_banco" ADD CONSTRAINT "grupo_banco_pkey" PRIMARY KEY ("id_grupo_banco");

-- ----------------------------
-- Uniques structure for table grupo_ente
-- ----------------------------
ALTER TABLE "pagos"."grupo_ente" ADD CONSTRAINT "grupo_ente_nb_grupo_ente_key" UNIQUE ("nb_grupo_ente");

-- ----------------------------
-- Primary Key structure for table grupo_ente
-- ----------------------------
ALTER TABLE "pagos"."grupo_ente" ADD CONSTRAINT "grupo_ente_pkey" PRIMARY KEY ("id_grupo_ente");

-- ----------------------------
-- Uniques structure for table grupo_financiero
-- ----------------------------
ALTER TABLE "pagos"."grupo_financiero" ADD CONSTRAINT "grupo_financiero_nb_grupo_financiero_key" UNIQUE ("nb_grupo_financiero");

-- ----------------------------
-- Primary Key structure for table grupo_financiero
-- ----------------------------
ALTER TABLE "pagos"."grupo_financiero" ADD CONSTRAINT "grupo_financiero_pkey" PRIMARY KEY ("id_grupo_financiero");

-- ----------------------------
-- Uniques structure for table grupo_status
-- ----------------------------
ALTER TABLE "pagos"."grupo_status" ADD CONSTRAINT "grupo_status_nb_grupo_key" UNIQUE ("nb_grupo");

-- ----------------------------
-- Primary Key structure for table grupo_status
-- ----------------------------
ALTER TABLE "pagos"."grupo_status" ADD CONSTRAINT "grupo_status_pkey" PRIMARY KEY ("id_grupo_status");

-- ----------------------------
-- Primary Key structure for table ingreso
-- ----------------------------
ALTER TABLE "pagos"."ingreso" ADD CONSTRAINT "ingreso_pkey" PRIMARY KEY ("id_ingreso");

-- ----------------------------
-- Primary Key structure for table instruccion
-- ----------------------------
ALTER TABLE "pagos"."instruccion" ADD CONSTRAINT "instruccion_pkey" PRIMARY KEY ("id_instruccion");

-- ----------------------------
-- Uniques structure for table moneda
-- ----------------------------
ALTER TABLE "pagos"."moneda" ADD CONSTRAINT "moneda_nb_moneda_key" UNIQUE ("nb_moneda");

-- ----------------------------
-- Primary Key structure for table moneda
-- ----------------------------
ALTER TABLE "pagos"."moneda" ADD CONSTRAINT "moneda_pkey" PRIMARY KEY ("id_moneda");

-- ----------------------------
-- Primary Key structure for table pago
-- ----------------------------
ALTER TABLE "pagos"."pago" ADD CONSTRAINT "pago_pkey" PRIMARY KEY ("id_pago");

-- ----------------------------
-- Indexes structure for table password_resets
-- ----------------------------
CREATE INDEX "password_resets_email_index" ON "pagos"."password_resets" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table solicitud
-- ----------------------------
ALTER TABLE "pagos"."solicitud" ADD CONSTRAINT "solicitud_pkey" PRIMARY KEY ("id_solicitud");

-- ----------------------------
-- Uniques structure for table status
-- ----------------------------
ALTER TABLE "pagos"."status" ADD CONSTRAINT "status_nb_secundario_co_status_key" UNIQUE ("nb_secundario", "co_status");

-- ----------------------------
-- Primary Key structure for table status
-- ----------------------------
ALTER TABLE "pagos"."status" ADD CONSTRAINT "status_pkey" PRIMARY KEY ("id_status");

-- ----------------------------
-- Primary Key structure for table tasa
-- ----------------------------
ALTER TABLE "pagos"."tasa" ADD CONSTRAINT "tasa_pkey" PRIMARY KEY ("id_tasa");

-- ----------------------------
-- Uniques structure for table tipo_banco
-- ----------------------------
ALTER TABLE "pagos"."tipo_banco" ADD CONSTRAINT "tipo_banco_nb_tipo_banco_key" UNIQUE ("nb_tipo_banco");

-- ----------------------------
-- Primary Key structure for table tipo_banco
-- ----------------------------
ALTER TABLE "pagos"."tipo_banco" ADD CONSTRAINT "tipo_banco_pkey" PRIMARY KEY ("id_tipo_banco");

-- ----------------------------
-- Uniques structure for table tipo_ente
-- ----------------------------
ALTER TABLE "pagos"."tipo_ente" ADD CONSTRAINT "tipo_ente_nb_tipo_ente_key" UNIQUE ("nb_tipo_ente");

-- ----------------------------
-- Primary Key structure for table tipo_ente
-- ----------------------------
ALTER TABLE "pagos"."tipo_ente" ADD CONSTRAINT "tipo_ente_pkey" PRIMARY KEY ("id_tipo_ente");

-- ----------------------------
-- Uniques structure for table tipo_ingreso
-- ----------------------------
ALTER TABLE "pagos"."tipo_ingreso" ADD CONSTRAINT "tipo_ingreso_nb_tipo_ingreso_key" UNIQUE ("nb_tipo_ingreso");

-- ----------------------------
-- Primary Key structure for table tipo_ingreso
-- ----------------------------
ALTER TABLE "pagos"."tipo_ingreso" ADD CONSTRAINT "tipo_ingreso_pkey" PRIMARY KEY ("id_tipo_ingreso");

-- ----------------------------
-- Uniques structure for table tipo_pago
-- ----------------------------
ALTER TABLE "pagos"."tipo_pago" ADD CONSTRAINT "tipo_pago_nb_tipo_pago_key" UNIQUE ("nb_tipo_pago");

-- ----------------------------
-- Primary Key structure for table tipo_pago
-- ----------------------------
ALTER TABLE "pagos"."tipo_pago" ADD CONSTRAINT "tipo_pago_pkey" PRIMARY KEY ("id_tipo_pago");

-- ----------------------------
-- Primary Key structure for table tr_bitacora
-- ----------------------------
ALTER TABLE "pagos"."tr_bitacora" ADD CONSTRAINT "tr_bitacora_pkey" PRIMARY KEY ("id_bitacora");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "pagos"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table usuario
-- ----------------------------
ALTER TABLE "pagos"."usuario" ADD CONSTRAINT "usuario_tx_usuario_nu_cedula_id_status_key" UNIQUE ("tx_usuario", "nu_cedula", "id_status");

-- ----------------------------
-- Primary Key structure for table usuario
-- ----------------------------
ALTER TABLE "pagos"."usuario" ADD CONSTRAINT "usuario_pkey" PRIMARY KEY ("id_usuario");
