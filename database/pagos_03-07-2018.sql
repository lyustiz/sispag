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

 Date: 03/07/2018 23:14:25
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
START 1151
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
-- Sequence structure for ejecucion_pago_id_ejecucion_pago_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."ejecucion_pago_id_ejecucion_pago_seq";
CREATE SEQUENCE "pagos"."ejecucion_pago_id_ejecucion_pago_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 2
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
START 3
CACHE 1;

-- ----------------------------
-- Sequence structure for ingreso_id_ingreso_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."ingreso_id_ingreso_seq";
CREATE SEQUENCE "pagos"."ingreso_id_ingreso_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 28
CACHE 1;

-- ----------------------------
-- Sequence structure for instruccion_id_instruccion_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."instruccion_id_instruccion_seq";
CREATE SEQUENCE "pagos"."instruccion_id_instruccion_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 18
CACHE 1;

-- ----------------------------
-- Sequence structure for menu_id_menu_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."menu_id_menu_seq";
CREATE SEQUENCE "pagos"."menu_id_menu_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 4
CACHE 1;

-- ----------------------------
-- Sequence structure for modulo_id_modulo_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."modulo_id_modulo_seq";
CREATE SEQUENCE "pagos"."modulo_id_modulo_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
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
-- Sequence structure for movimiento_id_movimiento_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."movimiento_id_movimiento_seq";
CREATE SEQUENCE "pagos"."movimiento_id_movimiento_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 22
CACHE 1;

-- ----------------------------
-- Sequence structure for pagos_id_pago_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."pagos_id_pago_seq";
CREATE SEQUENCE "pagos"."pagos_id_pago_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 14
CACHE 1;

-- ----------------------------
-- Sequence structure for permiso_id_permiso_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."permiso_id_permiso_seq";
CREATE SEQUENCE "pagos"."permiso_id_permiso_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 8
CACHE 1;

-- ----------------------------
-- Sequence structure for rol_id_rol_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."rol_id_rol_seq";
CREATE SEQUENCE "pagos"."rol_id_rol_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 3
CACHE 1;

-- ----------------------------
-- Sequence structure for solicitud_id_solicitud_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."solicitud_id_solicitud_seq";
CREATE SEQUENCE "pagos"."solicitud_id_solicitud_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 12
CACHE 1;

-- ----------------------------
-- Sequence structure for status_id_status_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."status_id_status_seq";
CREATE SEQUENCE "pagos"."status_id_status_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 26
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
-- Sequence structure for tipo_ingresoo_id_tpingreso_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."tipo_ingresoo_id_tpingreso_seq";
CREATE SEQUENCE "pagos"."tipo_ingresoo_id_tpingreso_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
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
START 221
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
START 2
CACHE 1;

-- ----------------------------
-- Sequence structure for usurol_id_usurol_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pagos"."usurol_id_usurol_seq";
CREATE SEQUENCE "pagos"."usurol_id_usurol_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 2
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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0),
  "id_grupo_banco" int4
)
;

-- ----------------------------
-- Records of banco
-- ----------------------------
INSERT INTO "pagos"."banco" VALUES (1, 'BANDES', 1, 'N/A', 1, 1, '2018-06-08 00:00:00', NULL, 4);
INSERT INTO "pagos"."banco" VALUES (4, 'FONDEN', 1, 'N/A', 1, 1, '2018-06-08 00:00:00', NULL, 4);
INSERT INTO "pagos"."banco" VALUES (6, 'BANCO DEL TESORO', 1, 'N/A', 1, 1, '2018-06-08 00:00:00', NULL, 4);
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
INSERT INTO "pagos"."banco" VALUES (5, 'BANCO DE VENEZUELA', 1, 'dd', 1, 22, '2018-06-08 00:00:00', '2018-07-04 02:02:51', 4);

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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
)
;
COMMENT ON COLUMN "pagos"."categoria"."id_categoria" IS 'Identificador único del registro';
COMMENT ON TABLE "pagos"."categoria" IS 'Categoria del pago generado';

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO "pagos"."categoria" VALUES (2, 'Clap', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."categoria" VALUES (3, 'Fanb', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."categoria" VALUES (4, 'Deuda', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."categoria" VALUES (5, 'Blletes', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."categoria" VALUES (6, 'Medicamentos', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."categoria" VALUES (1, 'Alimentoss', 'N/A', 1, 1, '2018-06-08 00:00:00', '2018-07-04 01:44:41');

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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
)
;

-- ----------------------------
-- Records of cuenta
-- ----------------------------
INSERT INTO "pagos"."cuenta" VALUES (1152, 2, 32457658.00, 871.00, 0.00, 32423424.00, NULL, 1, 8, '2018-06-29 19:53:25', '2018-07-02 23:13:11');
INSERT INTO "pagos"."cuenta" VALUES (1153, 1, 22522.00, 34234.00, 0.00, 56756.00, NULL, 1, 8, '2018-07-02 18:17:45', '2018-07-02 23:13:11');

-- ----------------------------
-- Table structure for det_cuenta
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."det_cuenta";
CREATE TABLE "pagos"."det_cuenta" (
  "id_det_cuenta" int4 NOT NULL DEFAULT nextval('"pagos".det_cuenta_id_det_cuenta_seq'::regclass),
  "id_cuenta" int4,
  "nu_cuenta" int4,
  "mo_monto" numeric(15,2),
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
  "id_ejecucion_pago" int4 NOT NULL DEFAULT nextval('"pagos".ejecucion_pago_id_ejecucion_pago_seq'::regclass),
  "id_pago" int4 NOT NULL,
  "id_banco" int4 NOT NULL,
  "fe_envio_inst" timestamp(0),
  "id_etapa_envio" int4 NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
)
;

-- ----------------------------
-- Records of ejecucion_pago
-- ----------------------------
INSERT INTO "pagos"."ejecucion_pago" VALUES (4, 15, 8, NULL, 1, NULL, 1, 8, '2018-07-03 03:20:41', '2018-07-03 03:20:41');

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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
)
;

-- ----------------------------
-- Records of ente
-- ----------------------------
INSERT INTO "pagos"."ente" VALUES (2, 'FONDEN', 1, 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."ente" VALUES (3, 'CORPOVEX', 1, 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."ente" VALUES (5, 'MPP EDUCACION', 3, 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."ente" VALUES (7, 'MPP ECONOMIA Y FINANZAS', 3, 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."ente" VALUES (8, 'GOBERNACION TACHIRA', 2, 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."ente" VALUES (10, 'MPP ECONOMIA Y FINANZAS', 3, 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."ente" VALUES (13, 'MPP EDUCACION', 3, 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."ente" VALUES (15, 'GOBERNACION TACHIRA', 2, 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "pagos"."ente" VALUES (1, 'BCV', 1, 4, NULL, 1, 22, NULL, '2018-07-04 02:10:03');

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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
)
;

-- ----------------------------
-- Records of esquema
-- ----------------------------
INSERT INTO "pagos"."esquema" VALUES (1, 'VOI', 'NRO VOI', '0', 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."esquema" VALUES (3, 'PAGOS PROPIOS BCV', 'N/A', '0', 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."esquema" VALUES (4, 'INSTRUCCION BCV', 'TIPO', '0', 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."esquema" VALUES (5, 'DEUDA', 'TIPO', '4', 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."esquema" VALUES (6, 'GASTOS REPRESENTACION', 'TIPO', '4', 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."esquema" VALUES (7, 'ONT', 'TIPO', '4', 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."esquema" VALUES (8, 'GASTO PROPIO ENTE', 'TIPO', '0', 'N/A', 1, 1, NULL, NULL);
INSERT INTO "pagos"."esquema" VALUES (2, 'CENCOEX', 'NRO SOLICITUD', '2', 'N/', 1, 22, NULL, '2018-07-04 03:10:36');

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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
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
INSERT INTO "pagos"."grupo_status" VALUES (5, 'General', 'N/A', 1, 1, '2018-06-24 00:00:00', NULL);

-- ----------------------------
-- Table structure for ingreso
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."ingreso";
CREATE TABLE "pagos"."ingreso" (
  "id_ingreso" int4 NOT NULL DEFAULT nextval('"pagos".ingreso_id_ingreso_seq'::regclass),
  "id_tipo_ingreso" int4,
  "id_ente" int4,
  "id_moneda" int4,
  "mo_ingreso" numeric(15,2),
  "mo_tasa" numeric(5,2),
  "fe_ingreso" timestamp(0),
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0),
  "id_banco" int4
)
;

-- ----------------------------
-- Records of ingreso
-- ----------------------------
INSERT INTO "pagos"."ingreso" VALUES (29, 1, 1, 2, 32423424.00, 56.00, '2018-06-05 00:00:00', 'fgfff', 1, 8, '2018-06-29 23:53:25', '2018-07-02 03:05:05', 8);
INSERT INTO "pagos"."ingreso" VALUES (30, 2, 5, 1, 56756.00, 345.89, '2018-07-04 00:00:00', NULL, 1, 9, '2018-07-02 22:17:45', '2018-07-02 22:17:45', 8);

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
  "fe_instruccion" timestamp(0),
  "mo_instruccion" numeric(15,2),
  "id_moneda" int4 NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
)
;

-- ----------------------------
-- Records of instruccion
-- ----------------------------
INSERT INTO "pagos"."instruccion" VALUES (20, 13, NULL, 2, 'CX001', 'OFI2', 'f', '2018-06-07 00:00:00', 34234.00, 2, NULL, 1, 1, '2018-06-30 20:57:54', '2018-06-30 20:57:54');
INSERT INTO "pagos"."instruccion" VALUES (21, 13, NULL, 1, 'VOI001', 'OFI22', 'f', '2018-06-01 00:00:00', 435.00, 2, NULL, 1, 1, '2018-07-01 00:12:58', '2018-07-01 00:12:58');
INSERT INTO "pagos"."instruccion" VALUES (19, 13, NULL, 1, 'VOI001', 'OFI11', 'f', '2018-06-01 00:00:00', 436.00, 2, NULL, 1, 1, '2018-06-30 20:03:59', '2018-07-01 04:08:24');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."menu";
CREATE TABLE "pagos"."menu" (
  "id_menu" int4 NOT NULL DEFAULT nextval('"pagos".menu_id_menu_seq'::regclass),
  "id_modulo" int4 NOT NULL,
  "nb_menu" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
)
;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO "pagos"."menu" VALUES (1, 1, 'Ingreso', 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);
INSERT INTO "pagos"."menu" VALUES (2, 1, 'Solicitud', 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);
INSERT INTO "pagos"."menu" VALUES (3, 1, 'Instrucción', 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);
INSERT INTO "pagos"."menu" VALUES (4, 1, 'Pagos', 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);

-- ----------------------------
-- Table structure for modulo
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."modulo";
CREATE TABLE "pagos"."modulo" (
  "id_modulo" int4 NOT NULL DEFAULT nextval('"pagos".modulo_id_modulo_seq'::regclass),
  "nb_modulo" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
)
;

-- ----------------------------
-- Records of modulo
-- ----------------------------
INSERT INTO "pagos"."modulo" VALUES (1, 'Pagos', 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);

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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
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
INSERT INTO "pagos"."moneda" VALUES (5, 'Dirham', 'AED', 'Dhs', 'N/A', 1, 1, '2018-06-08 00:00:00', NULL);
INSERT INTO "pagos"."moneda" VALUES (4, 'Rublo', 'RUB', '₽', NULL, 1, 22, '2018-06-08 00:00:00', '2018-07-04 02:25:56');

-- ----------------------------
-- Table structure for movimiento
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."movimiento";
CREATE TABLE "pagos"."movimiento" (
  "id_movimiento" int4 NOT NULL DEFAULT nextval('"pagos".movimiento_id_movimiento_seq'::regclass),
  "nu_movimiento" int4 NOT NULL,
  "nb_modulo" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_tipomov" varchar(50) COLLATE "pg_catalog"."default",
  "mo_movimiento" numeric(15,2),
  "fe_movimiento" timestamp(0),
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
)
;

-- ----------------------------
-- Records of movimiento
-- ----------------------------
INSERT INTO "pagos"."movimiento" VALUES (23, 29, 'Ingreso', 'Crédito', 32423424.00, '2018-06-29 19:53:25', 'fgfff', 1, 8, '2018-06-29 19:53:25', '2018-07-01 23:05:06');
INSERT INTO "pagos"."movimiento" VALUES (24, 30, 'Ingreso', 'Crédito', 56756.00, '2018-07-02 18:17:45', NULL, 1, 1, '2018-07-02 18:17:45', NULL);

-- ----------------------------
-- Table structure for pago
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."pago";
CREATE TABLE "pagos"."pago" (
  "id_pago" int4 NOT NULL DEFAULT nextval('"pagos".pagos_id_pago_seq'::regclass),
  "id_instruccion" int4 NOT NULL,
  "fe_liq_bcv" timestamp(0),
  "id_banco" int4 NOT NULL,
  "fe_pago" timestamp(0),
  "id_moneda" int4 NOT NULL,
  "mo_tasa" numeric(5,2) NOT NULL,
  "mo_final_pago" numeric(15,2),
  "id_tipo_pago" int4 NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
)
;

-- ----------------------------
-- Records of pago
-- ----------------------------
INSERT INTO "pagos"."pago" VALUES (15, 20, '2018-07-03 00:00:00', 9, '2018-07-03 00:00:00', 1, 34.00, 34234.00, 1, NULL, 1, 8, '2018-07-03 03:13:11', '2018-07-02 23:20:42');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."password_resets";
CREATE TABLE "pagos"."password_resets" (
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0)
)
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
  "id_permiso" int4 NOT NULL DEFAULT nextval('"pagos".permiso_id_permiso_seq'::regclass),
  "id_rol" int4 NOT NULL,
  "id_menu" int4 NOT NULL,
  "bo_create" bool,
  "bo_update" bool,
  "bo_read" bool,
  "bo_delete" bool,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
)
;

-- ----------------------------
-- Records of permiso
-- ----------------------------
INSERT INTO "pagos"."permiso" VALUES (1, 3, 1, 't', 't', 't', 't', 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);
INSERT INTO "pagos"."permiso" VALUES (2, 3, 2, 't', 't', 't', 't', 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);
INSERT INTO "pagos"."permiso" VALUES (3, 3, 3, 't', 't', 't', 't', 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);
INSERT INTO "pagos"."permiso" VALUES (4, 3, 4, 't', 't', 't', 't', 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);
INSERT INTO "pagos"."permiso" VALUES (5, 1, 1, 't', 't', 't', 't', 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);
INSERT INTO "pagos"."permiso" VALUES (6, 1, 2, 't', 't', 't', 't', 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);
INSERT INTO "pagos"."permiso" VALUES (7, 2, 3, 't', 't', 't', 't', 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);
INSERT INTO "pagos"."permiso" VALUES (8, 2, 4, 't', 't', 't', 't', 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);

-- ----------------------------
-- Table structure for rol
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."rol";
CREATE TABLE "pagos"."rol" (
  "id_rol" int4 NOT NULL DEFAULT nextval('"pagos".rol_id_rol_seq'::regclass),
  "nb_rol" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
)
;

-- ----------------------------
-- Records of rol
-- ----------------------------
INSERT INTO "pagos"."rol" VALUES (1, 'Analista', 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);
INSERT INTO "pagos"."rol" VALUES (2, 'Supervisor', 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);
INSERT INTO "pagos"."rol" VALUES (3, 'Administrador', 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);

-- ----------------------------
-- Table structure for solicitud
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."solicitud";
CREATE TABLE "pagos"."solicitud" (
  "id_solicitud" int4 NOT NULL DEFAULT nextval('"pagos".solicitud_id_solicitud_seq'::regclass),
  "nu_solicitud" varchar(25) COLLATE "pg_catalog"."default",
  "tx_concepto" varchar(200) COLLATE "pg_catalog"."default",
  "mo_solicitud" numeric(15,2),
  "fe_solicitud" timestamp(0),
  "id_ente" int4 NOT NULL,
  "id_moneda" int4 NOT NULL,
  "id_categoria" int4 NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
)
;

-- ----------------------------
-- Records of solicitud
-- ----------------------------
INSERT INTO "pagos"."solicitud" VALUES (13, 'SOL0001', 'COMPRA MAIZ', 345555.00, '2018-06-08 00:00:00', 2, 1, 1, NULL, 1, 8, '2018-06-29 23:58:28', '2018-06-29 23:58:28');
INSERT INTO "pagos"."solicitud" VALUES (15, 'SOLIC0001', 'MEDICAMENTO HOSPITAL CENTRAL', 354664.00, '2018-07-03 00:00:00', 8, 1, 6, NULL, 1, 8, '2018-07-02 22:18:51', '2018-07-02 22:18:51');
INSERT INTO "pagos"."solicitud" VALUES (14, 'SOL002', 'AMBULACIA', 3534534.00, '2018-06-01 00:00:00', 1, 2, 3, NULL, 1, 9, '2018-06-30 00:00:31', '2018-07-03 01:41:50');

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
  "tx_observaciones" varchar(150) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0),
  "bo_credito" bool,
  "bo_debito" bool
)
;
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
COMMENT ON TABLE "pagos"."status" IS 'Tabla para los estatus de los sistemas ';

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO "pagos"."status" VALUES (1, 'Activo', 'AING', 'Activo (Ingreso)', 4, 't', 0, 'N/A', 1, '2018-06-08 00:00:00', NULL, 't', NULL);
INSERT INTO "pagos"."status" VALUES (2, 'Inactivo', 'IING', 'Inactivo (Ingreso)', 4, 't', 0, 'N/A', 1, '2018-06-08 00:00:00', NULL, NULL, NULL);
INSERT INTO "pagos"."status" VALUES (4, 'Toda la documentación en regla', 'TDERSOL', 'Documentación en regla (solicitud)', 2, 't', 0, 'N/A', 1, '2018-06-20 00:00:00', NULL, NULL, NULL);
INSERT INTO "pagos"."status" VALUES (6, 'A la espera de documentación', 'AEDSOL', 'A la espera de documentación (solicitud)', 2, 't', 0, 'N/A', 1, '2018-06-20 00:00:00', NULL, NULL, NULL);
INSERT INTO "pagos"."status" VALUES (8, 'A la espera de documentación', 'AEDINST', 'A la espera de documentación (instrución)', 1, 't', 0, 'N/A', 1, '2018-06-20 00:00:00', NULL, NULL, NULL);
INSERT INTO "pagos"."status" VALUES (9, 'Documentación en regla en proceso de instrucción', 'TDERINST', 'Documentación en regla en proceso de instrucción (', 1, 't', 0, 'N/A', 1, '2018-06-20 00:00:00', NULL, NULL, NULL);
INSERT INTO "pagos"."status" VALUES (10, 'En Tránsito', 'ETPAG', 'En Tránsito (pago)', 3, 't', 0, 'N/A', 1, '2018-06-20 00:00:00', NULL, NULL, NULL);
INSERT INTO "pagos"."status" VALUES (11, 'Devuelto', 'DEVPAG', 'Devuelto (pago)', 3, 't', 0, 'N/A', 1, '2018-06-20 00:00:00', NULL, NULL, NULL);
INSERT INTO "pagos"."status" VALUES (12, 'Anulado', 'ANUPAG', 'Anulado (pago)', 3, 't', 0, 'N/A', 1, '2018-06-20 00:00:00', NULL, NULL, NULL);
INSERT INTO "pagos"."status" VALUES (13, 'Acreditado', 'ACRPAG', 'Acreditado (pago)', 3, 't', 0, 'N/A', 1, '2018-06-20 00:00:00', NULL, NULL, 't');
INSERT INTO "pagos"."status" VALUES (15, 'Políticas internas', 'PIPAGDE', 'Políticas internas (devuelto)', 3, 't', 11, 'N/A', 1, '2018-06-20 00:00:00', NULL, NULL, NULL);
INSERT INTO "pagos"."status" VALUES (16, 'Coordenadas erradas', 'CEPAGDE', 'Coordenadas erradas (devuelto)', 3, 't', 11, 'N/A', 1, '2018-06-20 00:00:00', NULL, NULL, NULL);
INSERT INTO "pagos"."status" VALUES (17, 'Documentación incompleta', 'DIPAGDE', 'Documentación incompleta devuelto', 3, 't', 11, 'N/A', 1, '2018-06-20 00:00:00', NULL, NULL, NULL);
INSERT INTO "pagos"."status" VALUES (18, 'Políticas internas', 'PIPAGAN', 'Políticas internas (anulado)', 3, 't', 12, 'N/A', 1, '2018-06-20 00:00:00', NULL, NULL, NULL);
INSERT INTO "pagos"."status" VALUES (20, 'Coordenadas erradas', 'CEPAGAN', 'Coordenadas erradas anulado', 3, 't', 12, 'N/A', 1, '2018-06-20 00:00:00', NULL, NULL, NULL);
INSERT INTO "pagos"."status" VALUES (21, 'Documentación incompleta', 'DIPAGAN', 'Documentación incompleta (anulado)', 3, 't', 12, 'N/A', 1, '2018-06-20 00:00:00', NULL, NULL, NULL);
INSERT INTO "pagos"."status" VALUES (22, 'Activo', 'ACT', 'Activo', 5, 't', 0, 'N/A', 1, '2018-06-25 00:00:00', NULL, 'f', 'f');
INSERT INTO "pagos"."status" VALUES (23, 'Inactivo', 'INAC', 'Inactivo', 5, 't', 0, 'N/A', 1, '2018-06-25 00:00:00', NULL, 'f', 'f');
INSERT INTO "pagos"."status" VALUES (24, 'Anulado', 'ANU', 'Anulado', 5, 't', 0, 'N/A', 1, '2018-06-25 00:00:00', NULL, 'f', 'f');
INSERT INTO "pagos"."status" VALUES (26, 'Cancelado', 'CAN', 'Cancelado', 5, 't', 0, 'N/A', 1, '2018-06-25 00:00:00', NULL, 'f', 'f');

-- ----------------------------
-- Table structure for tasa
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tasa";
CREATE TABLE "pagos"."tasa" (
  "id_tasa" int4 NOT NULL DEFAULT nextval('"pagos".tasa_id_tasa_seq'::regclass),
  "id_moneda" int4,
  "mo_tasa" numeric(5,2),
  "fe_tasa" timestamp(0),
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
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
-- Table structure for tipo_ingresoo
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."tipo_ingresoo";
CREATE TABLE "pagos"."tipo_ingresoo" (
  "id_tpingreso" int4 NOT NULL DEFAULT nextval('"pagos".tipo_ingresoo_id_tpingreso_seq'::regclass),
  "nb_tpingreso" varchar(100) COLLATE "pg_catalog"."default",
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4,
  "id_status" int4,
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
)
;

-- ----------------------------
-- Records of tipo_ingresoo
-- ----------------------------
INSERT INTO "pagos"."tipo_ingresoo" VALUES (1, 'PRUEBA', 'N/A', 1, 1, '2018-06-25 00:00:00', NULL);

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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
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
  "fe_accion" timestamp(0),
  "id_usuario" int4 NOT NULL
)
;

-- ----------------------------
-- Records of tr_bitacora
-- ----------------------------
INSERT INTO "pagos"."tr_bitacora" VALUES (182, 'INS', 'usuario', 1, NULL, '(1,lyustis,123456,12345678,"Luis ",Yustiz,,1,"2018-06-27 00:00:00",)', '2018-06-27 11:17:52', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (183, 'INS', 'usuario', 2, NULL, '(2,dramirez,123456,12980546,Dayana,Ramirez,,1,"2018-06-27 00:00:00",)', '2018-06-27 11:18:41', 2);
INSERT INTO "pagos"."tr_bitacora" VALUES (184, 'INS', 'cuenta', 1149, NULL, '(1149,1,3000.00,0.00,0.00,3000.00,,1,1,"2018-06-27 12:13:09.048828",)', '2018-06-27 12:13:09', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (185, 'INS', 'ingreso', 26, NULL, '(26,1,1,1,3000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '2018-06-27 12:13:09', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (186, 'UPD', 'cuenta', 1149, '(1149,1,3000.00,0.00,0.00,3000.00,,1,1,"2018-06-27 12:13:09.048828",)', '(1149,1,5000.00,0.00,0.00,5000.00,N/A,1,1,"2018-06-27 12:13:09.048828","2018-06-27 12:14:44.346679")', '2018-06-27 12:14:44', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (187, 'UPD', 'ingreso', 26, '(26,1,1,1,3000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '(26,1,1,1,2000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '2018-06-27 12:14:44', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (188, 'UPD', 'cuenta', 1149, '(1149,1,5000.00,0.00,0.00,5000.00,N/A,1,1,"2018-06-27 12:13:09.048828","2018-06-27 12:14:44.346679")', '(1149,1,3000.00,0.00,0.00,3000.00,N/A,1,1,"2018-06-27 12:13:09.048828","2018-06-27 12:24:13.527343")', '2018-06-27 12:24:14', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (189, 'UPD', 'ingreso', 26, '(26,1,1,1,2000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '(26,1,1,1,3000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '2018-06-27 12:24:14', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (190, 'UPD', 'cuenta', 1149, '(1149,1,3000.00,0.00,0.00,3000.00,N/A,1,1,"2018-06-27 12:13:09.048828","2018-06-27 12:24:13.527343")', '(1149,1,5000.00,0.00,0.00,5000.00,N/A,1,1,"2018-06-27 12:13:09.048828","2018-06-27 12:24:51.595703")', '2018-06-27 12:24:52', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (191, 'UPD', 'ingreso', 26, '(26,1,1,1,3000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '(26,1,1,1,5000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '2018-06-27 12:24:52', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (193, 'UPD', 'cuenta', 1149, '(1149,1,5000.00,0.00,0.00,5000.00,N/A,1,1,"2018-06-27 12:13:09.048828","2018-06-27 12:24:51.595703")', '(1149,1,4000.00,0.00,0.00,4000.00,N/A,1,1,"2018-06-27 12:13:09.048828","2018-06-27 14:25:32.063476")', '2018-06-27 14:25:32', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (194, 'UPD', 'ingreso', 26, '(26,1,1,1,5000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '(26,1,1,1,4000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '2018-06-27 14:25:32', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (195, 'UPD', 'cuenta', 1149, '(1149,1,4000.00,0.00,0.00,4000.00,N/A,1,1,"2018-06-27 12:13:09.048828","2018-06-27 14:25:32.063476")', '(1149,1,4550.00,0.00,0.00,4550.00,pba,1,1,"2018-06-27 12:13:09.048828","2018-06-27 14:26:49.90039")', '2018-06-27 14:26:50', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (196, 'UPD', 'ingreso', 26, '(26,1,1,1,4000.00,2.00,"2018-06-27 00:00:00",N/A,1,1,"2018-06-27 00:00:00",,10)', '(26,1,1,1,4550.00,2.00,"2018-06-27 00:00:00",pba,1,1,"2018-06-27 00:00:00",,10)', '2018-06-27 14:26:50', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (197, 'INS', 'solicitud', 12, NULL, '(12,0001,PARACAIDAS,2000.00,"2018-06-27 00:00:00",1,1,3,"SOLICITUD 1",1,1,"2018-06-27 00:00:00",)', '2018-06-27 14:31:49', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (198, 'UPD', 'cuenta', 1149, '(1149,1,4550.00,0.00,0.00,4550.00,pba,1,1,"2018-06-27 12:13:09.048828","2018-06-27 14:26:49.90039")', '(1149,1,4000.00,0.00,0.00,4000.00,pba,1,1,"2018-06-27 12:13:09.048828","2018-06-27 14:32:50.898437")', '2018-06-27 14:32:51', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (199, 'UPD', 'ingreso', 26, '(26,1,1,1,4550.00,2.00,"2018-06-27 00:00:00",pba,1,1,"2018-06-27 00:00:00",,10)', '(26,1,1,1,4000.00,2.00,"2018-06-27 00:00:00",pba,1,1,"2018-06-27 00:00:00",,10)', '2018-06-27 14:32:51', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (200, 'UPD', 'cuenta', 1149, '(1149,1,4000.00,0.00,0.00,4000.00,pba,1,1,"2018-06-27 12:13:09.048828","2018-06-27 14:32:50.898437")', '(1149,1,2000.00,2000.00,0.00,4000.00,INSTRUCCION1,1,1,"2018-06-27 12:13:09.048828","2018-06-27 14:35:24.360351")', '2018-06-27 14:35:24', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (201, 'INS', 'instruccion', 17, NULL, '(17,12,PARACAIDAS,1,"VOI 1",,t,"2018-06-30 00:00:00",2000.00,1,INSTRUCCION1,1,1,"2018-06-27 00:00:00",)', '2018-06-27 14:35:24', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (202, 'UPD', 'cuenta', 1149, '(1149,1,2000.00,2000.00,0.00,4000.00,INSTRUCCION1,1,1,"2018-06-27 12:13:09.048828","2018-06-27 14:35:24.360351")', '(1149,1,1000.00,3000.00,0.00,4000.00,INSTRUCCION1,1,1,"2018-06-27 12:13:09.048828","2018-06-27 16:22:01.55371")', '2018-06-27 16:22:02', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (203, 'UPD', 'instruccion', 17, '(17,12,PARACAIDAS,1,"VOI 1",,t,"2018-06-30 00:00:00",2000.00,1,INSTRUCCION1,1,1,"2018-06-27 00:00:00",)', '(17,12,PARACAIDAS,1,"VOI 1",,t,"2018-06-30 00:00:00",3000.00,1,INSTRUCCION1,1,1,"2018-06-27 00:00:00",)', '2018-06-27 16:22:02', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (204, 'INS', 'pago', 12, NULL, '(12,17,"2018-06-27 00:00:00",7,"2018-06-30 00:00:00",1,2.00,3000.00,1,,1,1,"2018-06-27 00:00:00",)', '2018-06-27 16:51:45', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (205, 'INS', 'pago', 13, NULL, '(13,17,"2018-06-27 00:00:00",7,"3018-06-30 00:00:00",1,2.00,3000.00,1,,1,13,"2018-06-27 00:00:00",)', '2018-06-27 16:54:12', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (206, 'UPD', 'cuenta', 1149, '(1149,1,1000.00,3000.00,0.00,4000.00,INSTRUCCION1,1,1,"2018-06-27 12:13:09.048828","2018-06-27 16:22:01.55371")', '(1149,1,1000.00,0.00,0.00,1000.00,,1,13,"2018-06-27 12:13:09.048828","2018-06-27 16:54:12.234375")', '2018-06-27 16:54:12', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (207, 'INS', 'cuenta', 1150, NULL, '(1150,1,5000.00,0.00,0.00,5000.00,,1,1,"2018-06-29 13:31:26.731445",)', '2018-06-29 13:31:27', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (208, 'INS', 'ingreso', 27, NULL, '(27,1,1,1,5000.00,2.00,"2018-06-29 00:00:00",N/A,1,1,"2018-06-29 00:00:00",,10)', '2018-06-29 13:31:27', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (209, 'INS', 'cuenta', 1151, NULL, '(1151,2,4000.00,0.00,0.00,4000.00,,1,1,"2018-06-29 13:32:36.374023",)', '2018-06-29 13:32:36', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (210, 'INS', 'ingreso', 28, NULL, '(28,2,1,2,4000.00,2.00,"2018-06-29 00:00:00",N/A,1,1,"2018-06-29 00:00:00",,)', '2018-06-29 13:32:36', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (211, 'UPD', 'cuenta', 1150, '(1150,1,5000.00,0.00,0.00,5000.00,,1,1,"2018-06-29 13:31:26.731445",)', '(1150,1,1000.00,4000.00,0.00,5000.00,,1,1,"2018-06-29 13:31:26.731445","2018-06-29 13:34:55.729492")', '2018-06-29 13:34:56', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (212, 'INS', 'instruccion', 18, NULL, '(18,1,pba,1,voi1,,t,"2018-06-29 00:00:00",4000.00,1,,1,1,"2018-06-29 00:00:00",)', '2018-06-29 13:34:56', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (213, 'INS', 'pago', 14, NULL, '(14,18,"2018-06-27 00:00:00",7,"2018-06-27 00:00:00",2,2.00,1000.00,2,,1,1,"2018-06-27 00:00:00",)', '2018-06-29 15:23:53', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (214, 'UPD', 'cuenta', 1150, '(1150,1,1000.00,4000.00,0.00,5000.00,,1,1,"2018-06-29 13:31:26.731445","2018-06-29 13:34:55.729492")', '(1150,1,5000.00,0.00,0.00,5000.00,,1,1,"2018-06-29 13:31:26.731445","2018-06-29 15:23:53.436523")', '2018-06-29 15:23:53', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (215, 'UPD', 'cuenta', 1151, '(1151,2,4000.00,0.00,0.00,4000.00,,1,1,"2018-06-29 13:32:36.374023",)', '(1151,2,3000.00,1000.00,0.00,4000.00,,1,1,"2018-06-29 13:32:36.374023","2018-06-29 15:23:53.436523")', '2018-06-29 15:23:53', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (216, 'INS', 'ejecucion_pago', 14, NULL, '(1,14,1,"2018-06-27 00:00:00",3,,1,13,"2018-06-27 00:00:00",)', '2018-06-29 15:27:01', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (217, 'UPD', 'pago', 14, '(14,18,"2018-06-27 00:00:00",7,"2018-06-27 00:00:00",2,2.00,1000.00,2,,1,1,"2018-06-27 00:00:00",)', '(14,18,"2018-06-27 00:00:00",7,"2018-06-27 00:00:00",2,2.00,1000.00,2,,1,13,"2018-06-27 00:00:00","2018-06-29 15:27:00.629882")', '2018-06-29 15:27:01', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (218, 'UPD', 'ejecucion_pago', 14, '(1,14,1,"2018-06-27 00:00:00",3,,1,13,"2018-06-27 00:00:00",)', '(1,14,1,"2018-06-27 00:00:00",3,,1,2,"2018-06-27 00:00:00",)', '2018-06-29 15:32:50', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (219, 'UPD', 'pago', 14, '(14,18,"2018-06-27 00:00:00",7,"2018-06-27 00:00:00",2,2.00,1000.00,2,,1,13,"2018-06-27 00:00:00","2018-06-29 15:27:00.629882")', '(14,18,"2018-06-27 00:00:00",7,"2018-06-27 00:00:00",2,2.00,1000.00,2,,1,2,"2018-06-27 00:00:00","2018-06-29 15:32:49.570312")', '2018-06-29 15:32:50', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (220, 'UPD', 'ejecucion_pago', 14, '(1,14,1,"2018-06-27 00:00:00",3,,1,2,"2018-06-27 00:00:00",)', '(1,14,1,"2018-06-27 00:00:00",3,,1,13,"2018-06-27 00:00:00",)', '2018-06-29 15:33:15', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (221, 'UPD', 'pago', 14, '(14,18,"2018-06-27 00:00:00",7,"2018-06-27 00:00:00",2,2.00,1000.00,2,,1,2,"2018-06-27 00:00:00","2018-06-29 15:32:49.570312")', '(14,18,"2018-06-27 00:00:00",7,"2018-06-27 00:00:00",2,2.00,1000.00,2,,1,13,"2018-06-27 00:00:00","2018-06-29 15:33:14.799804")', '2018-06-29 15:33:15', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (222, 'INS', 'cuenta', 1152, NULL, '(1152,2,32423424.00,0.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25",)', '2018-06-29 19:53:25', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (223, 'INS', 'ingreso', 29, NULL, '(29,1,1,2,32423424.00,56.00,"2018-06-05 00:00:00",fg,1,8,"2018-06-29 23:53:25","2018-06-29 23:53:25",8)', '2018-06-29 19:53:25', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (224, 'INS', 'solicitud', 13, NULL, '(13,SOL0001,"COMPRA MAIZ",345555.00,"2018-06-08 00:00:00",2,1,1,,1,8,"2018-06-29 23:58:28","2018-06-29 23:58:28")', '2018-06-29 19:58:28', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (225, 'INS', 'solicitud', 14, NULL, '(14,SOL002,AMBULACIA,3534534.00,"2018-06-01 00:00:00",1,2,3,,1,8,"2018-06-30 00:00:31","2018-06-30 00:00:31")', '2018-06-29 20:00:32', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (226, 'UPD', 'cuenta', 1152, '(1152,2,32423424.00,0.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25",)', '(1152,2,32422989.00,435.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25","2018-06-30 16:04:00")', '2018-06-30 16:04:00', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (227, 'INS', 'instruccion', 19, NULL, '(19,13,,1,VOI001,,f,"2018-06-01 00:00:00",435.00,2,,1,1,"2018-06-30 20:03:59","2018-06-30 20:03:59")', '2018-06-30 16:04:00', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (228, 'UPD', 'cuenta', 1152, '(1152,2,32422989.00,435.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25","2018-06-30 16:04:00")', '(1152,2,32389190.00,34669.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25","2018-06-30 16:57:54")', '2018-06-30 16:57:54', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (229, 'INS', 'instruccion', 20, NULL, '(20,13,,2,CX001,,f,"2018-06-07 00:00:00",34234.00,2,,1,1,"2018-06-30 20:57:54","2018-06-30 20:57:54")', '2018-06-30 16:57:54', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (230, 'UPD', 'cuenta', 1152, '(1152,2,32389190.00,34669.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25","2018-06-30 16:57:54")', '(1152,2,32389190.00,34669.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25","2018-06-30 19:44:21")', '2018-06-30 19:44:21', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (231, 'UPD', 'instruccion', 19, '(19,13,,1,VOI001,,f,"2018-06-01 00:00:00",435.00,2,,1,1,"2018-06-30 20:03:59","2018-06-30 20:03:59")', '(19,13,,1,VOI001,ddd,f,"2018-06-01 00:00:00",435.00,2,,1,1,"2018-06-30 20:03:59","2018-06-30 20:03:59")', '2018-06-30 19:44:21', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (232, 'UPD', 'cuenta', 1152, '(1152,2,32389190.00,34669.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25","2018-06-30 19:44:21")', '(1152,2,32389190.00,34669.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25","2018-06-30 19:44:23")', '2018-06-30 19:44:23', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (233, 'UPD', 'instruccion', 20, '(20,13,,2,CX001,,f,"2018-06-07 00:00:00",34234.00,2,,1,1,"2018-06-30 20:57:54","2018-06-30 20:57:54")', '(20,13,,2,CX001,d,f,"2018-06-07 00:00:00",34234.00,2,,1,1,"2018-06-30 20:57:54","2018-06-30 20:57:54")', '2018-06-30 19:44:23', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (234, 'UPD', 'cuenta', 1152, '(1152,2,32389190.00,34669.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25","2018-06-30 19:44:23")', '(1152,2,32389190.00,34669.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25","2018-06-30 19:44:27")', '2018-06-30 19:44:27', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (235, 'UPD', 'instruccion', 19, '(19,13,,1,VOI001,ddd,f,"2018-06-01 00:00:00",435.00,2,,1,1,"2018-06-30 20:03:59","2018-06-30 20:03:59")', '(19,13,,1,VOI001,OFI,f,"2018-06-01 00:00:00",435.00,2,,1,1,"2018-06-30 20:03:59","2018-06-30 20:03:59")', '2018-06-30 19:44:27', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (236, 'UPD', 'cuenta', 1152, '(1152,2,32389190.00,34669.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25","2018-06-30 19:44:27")', '(1152,2,32389190.00,34669.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25","2018-06-30 19:44:32")', '2018-06-30 19:44:32', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (237, 'UPD', 'instruccion', 20, '(20,13,,2,CX001,d,f,"2018-06-07 00:00:00",34234.00,2,,1,1,"2018-06-30 20:57:54","2018-06-30 20:57:54")', '(20,13,,2,CX001,OFI2,f,"2018-06-07 00:00:00",34234.00,2,,1,1,"2018-06-30 20:57:54","2018-06-30 20:57:54")', '2018-06-30 19:44:32', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (238, 'UPD', 'cuenta', 1152, '(1152,2,32389190.00,34669.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25","2018-06-30 19:44:32")', '(1152,2,32422989.00,35104.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25","2018-06-30 20:12:59")', '2018-06-30 20:12:59', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (239, 'INS', 'instruccion', 21, NULL, '(21,13,,1,VOI001,OFI22,f,"2018-06-01 00:00:00",435.00,2,,1,1,"2018-07-01 00:12:58","2018-07-01 00:12:58")', '2018-06-30 20:12:59', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (240, 'UPD', 'cuenta', 1152, '(1152,2,32422989.00,35104.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25","2018-06-30 20:12:59")', '(1152,2,32422988.00,35105.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25","2018-07-01 00:08:24")', '2018-07-01 00:08:24', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (241, 'UPD', 'instruccion', 19, '(19,13,,1,VOI001,OFI,f,"2018-06-01 00:00:00",435.00,2,,1,1,"2018-06-30 20:03:59","2018-06-30 20:03:59")', '(19,13,,1,VOI001,OFI11,f,"2018-06-01 00:00:00",436.00,2,,1,1,"2018-06-30 20:03:59","2018-07-01 04:08:24")', '2018-07-01 00:08:24', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (242, 'UPD', 'banco', 5, '(5,"BANCO DE VENEZUELA",1,,1,2,"2018-06-08 00:00:00","2018-06-17 21:40:59",4)', '(5,"BANCO DE VENEZUELA",1,,1,8,"2018-06-08 00:00:00","2018-07-01 12:53:20",4)', '2018-07-01 08:53:20', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (243, 'UPD', 'cuenta', 1152, '(1152,2,32422988.00,35105.00,0.00,32423424.00,,1,1,"2018-06-29 19:53:25","2018-07-01 00:08:24")', '(1152,2,32423424.00,35105.00,0.00,32423424.00,fgfff,1,8,"2018-06-29 19:53:25","2018-07-01 23:05:06")', '2018-07-01 23:05:06', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (244, 'UPD', 'ingreso', 29, '(29,1,1,2,32423424.00,56.00,"2018-06-05 00:00:00",fg,1,8,"2018-06-29 23:53:25","2018-06-29 23:53:25",8)', '(29,1,1,2,32423424.00,56.00,"2018-06-05 00:00:00",fgfff,1,8,"2018-06-29 23:53:25","2018-07-02 03:05:05",8)', '2018-07-01 23:05:06', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (245, 'INS', 'cuenta', 1153, NULL, '(1153,1,56756.00,0.00,0.00,56756.00,,1,1,"2018-07-02 18:17:45",)', '2018-07-02 18:17:45', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (246, 'INS', 'ingreso', 30, NULL, '(30,2,5,1,56756.00,345.89,"2018-07-04 00:00:00",,1,9,"2018-07-02 22:17:45","2018-07-02 22:17:45",8)', '2018-07-02 18:17:45', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (247, 'INS', 'solicitud', 15, NULL, '(15,SOLIC0001,"MEDICAMENTO HOSPITAL CENTRAL",354664.00,"2018-07-03 00:00:00",8,1,6,,1,8,"2018-07-02 22:18:51","2018-07-02 22:18:51")', '2018-07-02 18:18:52', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (248, 'UPD', 'solicitud', 14, '(14,SOL002,AMBULACIA,3534534.00,"2018-06-01 00:00:00",1,2,3,,1,8,"2018-06-30 00:00:31","2018-06-30 00:00:31")', '(14,SOL002,AMBULACIA,3534534.00,"2018-06-01 00:00:00",1,2,3,,1,9,"2018-06-30 00:00:31","2018-07-03 01:41:50")', '2018-07-02 21:41:51', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (249, 'INS', 'pago', 15, NULL, '(15,20,"2018-07-03 00:00:00",8,"2018-07-03 00:00:00",1,34.00,34234.00,1,,1,8,"2018-07-03 03:13:11","2018-07-03 03:13:11")', '2018-07-02 23:13:11', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (250, 'UPD', 'cuenta', 1152, '(1152,2,32423424.00,35105.00,0.00,32423424.00,fgfff,1,8,"2018-06-29 19:53:25","2018-07-01 23:05:06")', '(1152,2,32457658.00,871.00,0.00,32423424.00,,1,8,"2018-06-29 19:53:25","2018-07-02 23:13:11")', '2018-07-02 23:13:11', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (251, 'UPD', 'cuenta', 1153, '(1153,1,56756.00,0.00,0.00,56756.00,,1,1,"2018-07-02 18:17:45",)', '(1153,1,22522.00,34234.00,0.00,56756.00,,1,8,"2018-07-02 18:17:45","2018-07-02 23:13:11")', '2018-07-02 23:13:11', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (252, 'UPD', 'pago', 15, '(15,20,"2018-07-03 00:00:00",8,"2018-07-03 00:00:00",1,34.00,34234.00,1,,1,8,"2018-07-03 03:13:11","2018-07-03 03:13:11")', '(15,20,"2018-07-03 00:00:00",9,"2018-07-03 00:00:00",1,34.00,34234.00,1,,1,8,"2018-07-03 03:13:11","2018-07-03 03:13:39")', '2018-07-02 23:13:40', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (253, 'INS', 'ejecucion_pago', 15, NULL, '(4,15,8,,1,,1,8,"2018-07-03 03:20:41","2018-07-03 03:20:41")', '2018-07-02 23:20:42', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (254, 'UPD', 'pago', 15, '(15,20,"2018-07-03 00:00:00",9,"2018-07-03 00:00:00",1,34.00,34234.00,1,,1,8,"2018-07-03 03:13:11","2018-07-03 03:13:39")', '(15,20,"2018-07-03 00:00:00",9,"2018-07-03 00:00:00",1,34.00,34234.00,1,,1,8,"2018-07-03 03:13:11","2018-07-02 23:20:42")', '2018-07-02 23:20:42', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (255, 'UPD', 'categoria', 1, '(1,Aimentos,N/A,1,1,"2018-06-08 00:00:00",)', '(1,Alimentos,N/A,1,1,"2018-06-08 00:00:00",)', '2018-07-03 20:45:24', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (256, 'UPD', 'banco', 5, '(5,"BANCO DE VENEZUELA",1,,1,8,"2018-06-08 00:00:00","2018-07-01 12:53:20",4)', '(5,"BANCO DE VENEZUELA",1,,1,9,"2018-06-08 00:00:00","2018-07-04 01:19:26",4)', '2018-07-03 21:19:26', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (257, 'UPD', 'banco', 5, '(5,"BANCO DE VENEZUELA",1,,1,9,"2018-06-08 00:00:00","2018-07-04 01:19:26",4)', '(5,"BANCO DE VENEZUELA",1,dd,1,9,"2018-06-08 00:00:00","2018-07-04 01:20:34",4)', '2018-07-03 21:20:35', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (258, 'UPD', 'banco', 5, '(5,"BANCO DE VENEZUELA",1,dd,1,9,"2018-06-08 00:00:00","2018-07-04 01:20:34",4)', '(5,"BANCO DE VENEZUELA",1,dddd,1,9,"2018-06-08 00:00:00","2018-07-04 01:20:41",4)', '2018-07-03 21:20:41', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (259, 'UPD', 'banco', 5, '(5,"BANCO DE VENEZUELA",1,dddd,1,9,"2018-06-08 00:00:00","2018-07-04 01:20:41",4)', '(5,"BANCO DE VENEZUELA",1,ddd,1,9,"2018-06-08 00:00:00","2018-07-04 01:23:24",4)', '2018-07-03 21:23:25', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (260, 'UPD', 'categoria', 1, '(1,Alimentos,N/A,1,1,"2018-06-08 00:00:00",)', '(1,Alimentoss,N/A,1,1,"2018-06-08 00:00:00","2018-07-04 01:44:41")', '2018-07-03 21:44:42', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (261, 'UPD', 'banco', 5, '(5,"BANCO DE VENEZUELA",1,ddd,1,9,"2018-06-08 00:00:00","2018-07-04 01:23:24",4)', '(5,"BANCO DE VENEZUELA",1,ddd,1,22,"2018-06-08 00:00:00","2018-07-04 01:55:12",4)', '2018-07-03 21:55:13', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (262, 'INS', 'banco', 21, NULL, '(21,dddd,1,,1,22,"2018-07-04 01:56:17","2018-07-04 01:56:17",1)', '2018-07-03 21:56:18', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (263, 'UPD', 'banco', 21, '(21,dddd,1,,1,22,"2018-07-04 01:56:17","2018-07-04 01:56:17",1)', '(21,ddddd,1,,1,22,"2018-07-04 01:56:17","2018-07-04 01:58:20",1)', '2018-07-03 21:58:21', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (264, 'UPD', 'banco', 5, '(5,"BANCO DE VENEZUELA",1,ddd,1,22,"2018-06-08 00:00:00","2018-07-04 01:55:12",4)', '(5,"BANCO DE VENEZUELA",1,,1,22,"2018-06-08 00:00:00","2018-07-04 02:02:11",4)', '2018-07-03 22:02:11', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (265, 'UPD', 'banco', 5, '(5,"BANCO DE VENEZUELA",1,,1,22,"2018-06-08 00:00:00","2018-07-04 02:02:11",4)', '(5,"BANCO DE VENEZUELA",1,dd,1,22,"2018-06-08 00:00:00","2018-07-04 02:02:51",4)', '2018-07-03 22:02:52', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (266, 'UPD', 'ente', 1, '(1,BCV,1,4,,1,1,,)', '(1,BCV,1,4,,1,22,,"2018-07-04 02:10:03")', '2018-07-03 22:10:03', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (267, 'UPD', 'moneda', 4, '(4,Rublo,RUB,₽,N/A,1,1,"2018-06-08 00:00:00",)', '(4,Rublo,RUB,₽,,1,22,"2018-06-08 00:00:00","2018-07-04 02:25:56")', '2018-07-03 22:25:57', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (268, 'INS', 'moneda', 6, NULL, '(6,prueba,h,,,1,22,"2018-07-04 02:26:28","2018-07-04 02:26:28")', '2018-07-03 22:26:29', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (269, 'UPD', 'moneda', 6, '(6,prueba,h,,,1,22,"2018-07-04 02:26:28","2018-07-04 02:26:28")', '(6,prueba,h,ee,,1,22,"2018-07-04 02:26:28","2018-07-04 02:29:09")', '2018-07-03 22:29:09', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (270, 'UPD', 'esquema', 2, '(2,CENCOEX,"NRO SOLICITUD",0,N/A,1,1,,)', '(2,CENCOEX,"NRO SOLICITUD",5,N/A,1,22,,"2018-07-04 02:42:26")', '2018-07-03 22:42:26', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (271, 'UPD', 'esquema', 2, '(2,CENCOEX,"NRO SOLICITUD",5,N/A,1,22,,"2018-07-04 02:42:26")', '(2,CENCOEX,"NRO SOLICITUD",2,N/A,1,22,,"2018-07-04 02:43:03")', '2018-07-03 22:43:04', 1);
INSERT INTO "pagos"."tr_bitacora" VALUES (272, 'UPD', 'esquema', 2, '(2,CENCOEX,"NRO SOLICITUD",2,N/A,1,22,,"2018-07-04 02:43:03")', '(2,CENCOEX,"NRO SOLICITUD",2,N/,1,22,,"2018-07-04 03:10:36")', '2018-07-03 23:10:37', 1);

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
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "pagos"."users" VALUES (4, 'carlos', 'cgranados@bandes.gob.ve', '$2y$10$6Qs4V0VTicMSgbL8crvEgef.TL5aOEDmuI/NkCrmOgADWwTlxSi66', '338W36NHAFmrSauuDL5L7awis4RxwmV95JR42bJUhnFeu8DoFDDWzQz2ylZ9', NULL, NULL);
INSERT INTO "pagos"."users" VALUES (1, 'luisa', 'lyustis@gmail.com', '$2y$10$6Qs4V0VTicMSgbL8crvEgef.TL5aOEDmuI/NkCrmOgADWwTlxSi66', '07Vzrqrer60sdgKBbwSugWu83ymWnpuO8txtiwHHF4T6MhCvlYnQ6i8Ef3Hv', NULL, '2018-06-09 15:32:29');

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
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
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
-- Records of usuario
-- ----------------------------
INSERT INTO "pagos"."usuario" VALUES (1, 'lyustis', '123456', 12345678, 'Luis ', 'Yustiz', NULL, 1, '2018-06-27 00:00:00', NULL);
INSERT INTO "pagos"."usuario" VALUES (2, 'dramirez', '123456', 12980546, 'Dayana', 'Ramirez', NULL, 1, '2018-06-27 00:00:00', NULL);

-- ----------------------------
-- Table structure for usurol
-- ----------------------------
DROP TABLE IF EXISTS "pagos"."usurol";
CREATE TABLE "pagos"."usurol" (
  "id_usurol" int4 NOT NULL DEFAULT nextval('"pagos".usurol_id_usurol_seq'::regclass),
  "id_usuariop" int4 NOT NULL,
  "id_rol" int4 NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 'N/A'::character varying,
  "id_usuario" int4 NOT NULL,
  "id_status" int4 NOT NULL,
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
)
;

-- ----------------------------
-- Records of usurol
-- ----------------------------
INSERT INTO "pagos"."usurol" VALUES (1, 1, 3, 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);
INSERT INTO "pagos"."usurol" VALUES (2, 2, 1, 'N/A', 1, 1, '2018-06-27 00:00:00', NULL);

-- ----------------------------
-- Function structure for sp_ins_bitacora
-- ----------------------------
DROP FUNCTION IF EXISTS "pagos"."sp_ins_bitacora"();
CREATE OR REPLACE FUNCTION "pagos"."sp_ins_bitacora"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
DECLARE

  v_col_tabla  VARCHAR;
  v_id_tabla  INTEGER;

BEGIN  
 
    v_col_tabla := 'id_'||substr(TG_TABLE_NAME, position('_' in TG_TABLE_NAME)+1,50);
    EXECUTE 'SELECT $1.'||v_col_tabla INTO v_id_tabla using NEW;

IF (TG_OP = 'UPDATE') THEN

    INSERT INTO pagos.tr_bitacora (co_accion, tx_tabla, in_id_tabla,  tx_old_valor, tx_new_valor, fe_accion, id_usuario)
           VALUES ('UPD', TG_TABLE_NAME, v_id_tabla, OLD, NEW, now(), NEW.id_usuario);
          
    RETURN NEW;
   
  ELSIF (TG_OP = 'INSERT') THEN
 
    INSERT INTO pagos.tr_bitacora (co_accion, tx_tabla, in_id_tabla,  tx_old_valor, tx_new_valor, fe_accion, id_usuario)
           VALUES ('INS', TG_TABLE_NAME, v_id_tabla, NULL, NEW, now(), NEW.id_usuario);
          
    RETURN NEW;
   
  END IF;
 
  RETURN NULL;
 
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sp_ins_upd_cuenta
-- ----------------------------
DROP FUNCTION IF EXISTS "pagos"."sp_ins_upd_cuenta"();
CREATE OR REPLACE FUNCTION "pagos"."sp_ins_upd_cuenta"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
DECLARE

 
     v_existe           INTEGER;
     v_id_cuenta        INTEGER;      
     v_mo_total         NUMERIC;
     v_mo_totalupd      NUMERIC;
     v_mo_disponible    NUMERIC; 
     v_mo_disponibleupd NUMERIC;
   

BEGIN  

	--Consulto si la id_moneda ya se encuentra registrada
	SELECT count(*) INTO v_existe
	FROM pagos.cuenta 
	WHERE id_moneda= new.id_moneda; 





IF (TG_OP = 'INSERT') THEN

			IF (v_existe = 0) THEN

				--Se Inserta un ingreso para ese id_moneda	

				INSERT INTO pagos.cuenta(
					    id_moneda, 
					    mo_disponible,
					    mo_instruido,
					    mo_aprobado, 		   
					    mo_total, 		    
					    id_usuario, 
					    id_status, 
					    fe_creado)
				    VALUES (new.id_moneda, 
					    new.mo_ingreso, 
					    '0',
					    '0',		   
					    new.mo_ingreso, 		   
					    new.id_usuario, 
					    '1', 
					    now());	  
					  
				RETURN NEW;

			ELSE 


				--Si existe el id_moneda, actualizo los valores para esa id_moneda existente
				----------------------------------------------------------------------------
				
				SELECT mo_total,mo_disponible,id_cuenta
				INTO v_mo_totalupd,v_mo_disponibleupd,v_id_cuenta
				FROM pagos.cuenta 
				WHERE id_moneda= new.id_moneda; 	

				v_mo_total 	   := v_mo_totalupd + new.mo_ingreso;
				v_mo_disponible    := v_mo_disponibleupd + new.mo_ingreso;

				UPDATE pagos.cuenta
				   SET   
				   mo_disponible=v_mo_disponible,	 
				   mo_total=v_mo_total, 
				   tx_observaciones=new.tx_observaciones, 
				   id_usuario=new.id_usuario, 
				   id_status=new.id_status, 	   
				   fe_actualizado=now()
				 WHERE id_cuenta=v_id_cuenta;

			END IF;

-- Si se actualiza el valor del monto de ingreso se debe modificar el monto afectado (mo_total y mo_disponible)
  ELSIF (TG_OP = 'UPDATE') THEN 

	--Consulto el id_cuenta pra actualizar sobre el registro 
	SELECT id_cuenta
		INTO v_id_cuenta
	FROM pagos.cuenta 
	WHERE id_moneda= old.id_moneda; 

	-- actualizo montos (mo_total y mo_disponible)
	UPDATE pagos.cuenta
	   SET   
	   mo_disponible=new.mo_ingreso,	 
	   mo_total=new.mo_ingreso, 
	   tx_observaciones=new.tx_observaciones, 
	   id_usuario=new.id_usuario, 
	   id_status=new.id_status, 	   
	   fe_actualizado=now()
	 WHERE id_cuenta=v_id_cuenta;


  END IF;
 
  RETURN NULL;
 
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sp_ins_upd_movimiento
-- ----------------------------
DROP FUNCTION IF EXISTS "pagos"."sp_ins_upd_movimiento"();
CREATE OR REPLACE FUNCTION "pagos"."sp_ins_upd_movimiento"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
DECLARE

     
     v_mo_disponible NUMERIC;
     v_id_cuenta INTEGER;

	BEGIN   

		IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN

		IF new.id_status = 13 then
			INSERT INTO pagos.movimiento(
			    nu_movimiento,nb_modulo,tx_tipomov,mo_movimiento,fe_movimiento, 
			    tx_observaciones, id_usuario, id_status, fe_creado)
			VALUES (new.id_pago,'Pago','Débito',new.mo_final_pago,now(), 
			    new.tx_observaciones, new.id_usuario,new.id_usuario,now()); 
				  
			RETURN NEW;
		END IF;
		   
		  END IF;
	 
	  RETURN NULL;
	 
	END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sp_insupd_ejpago_status
-- ----------------------------
DROP FUNCTION IF EXISTS "pagos"."sp_insupd_ejpago_status"();
CREATE OR REPLACE FUNCTION "pagos"."sp_insupd_ejpago_status"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
DECLARE


    	BEGIN   

		IF (TG_OP = 'UPDATE') OR (TG_OP = 'INSERT') THEN			
		 

			UPDATE pagos.pago
			   SET id_status=new.id_status,
			       tx_observaciones=new.tx_observaciones,
			       fe_actualizado=now()
			 WHERE id_pago= new.id_pago;		
		
				  
			RETURN NEW;	
		   
		  END IF;
	 
	  RETURN NULL;
	 
	END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sp_insupd_ing_movimiento
-- ----------------------------
DROP FUNCTION IF EXISTS "pagos"."sp_insupd_ing_movimiento"();
CREATE OR REPLACE FUNCTION "pagos"."sp_insupd_ing_movimiento"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
DECLARE

     v_mo_disponible NUMERIC;
     v_id_cuenta INTEGER;

BEGIN   

		IF (TG_OP = 'INSERT') THEN
		
			INSERT INTO pagos.movimiento(
			    nu_movimiento,nb_modulo,tx_tipomov,mo_movimiento,fe_movimiento, 
			    tx_observaciones, id_usuario, id_status, fe_creado)
			VALUES (new.id_ingreso,'Ingreso','Crédito',new.mo_ingreso,now(), 
			    new.tx_observaciones, new.id_usuario,new.id_usuario,now()); 
				  
			RETURN NEW;
		   

		ELSEIF (TG_OP = 'UPDATE')  THEN

			UPDATE pagos.movimiento
			   SET mo_movimiento=new.mo_ingreso,			        
			       tx_observaciones=new.tx_observaciones,
			       id_usuario=new.id_usuario, 
			       id_status=new.id_status, 
			       fe_actualizado=now()
			 WHERE nu_movimiento=old.id_ingreso;


		  END IF;
		  
	 
	  RETURN NULL;
	 
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sp_upd_inst_cuenta
-- ----------------------------
DROP FUNCTION IF EXISTS "pagos"."sp_upd_inst_cuenta"();
CREATE OR REPLACE FUNCTION "pagos"."sp_upd_inst_cuenta"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
DECLARE


     v_mo_disponible   	NUMERIC;
     v_monto_instruido 	NUMERIC;
     v_mo_total 	NUMERIC;
     v_mo_instruido 	NUMERIC;

    --  v_mo_disponible_actual NUMERIC;
--      v_mo_instruido_actual  NUMERIC;
--      v_mo_total_actual      NUMERIC;
-- 
--      v_mo_diponible_dif NUMERIC;
--      v_mo_instruido_dif NUMERIC;

     v_mo_dispfinal    NUMERIC;
     v_monto_instfinal NUMERIC;




	BEGIN  	 

	

	


	IF (TG_OP = 'INSERT') THEN	
	

		SELECT mo_total,mo_instruido 
			INTO v_mo_total,
			     v_mo_instruido 
		FROM pagos.cuenta 
		WHERE id_moneda= new.id_moneda; 
	  
		
		v_mo_disponible	  := v_mo_total - new.mo_instruccion;
		v_monto_instruido := v_mo_instruido + new.mo_instruccion;

		UPDATE pagos.cuenta
		   SET  
		       mo_disponible=v_mo_disponible,
		       mo_instruido=v_monto_instruido, 
		       tx_observaciones=new.tx_observaciones,
		       id_usuario=new.id_usuario,
		       id_status=new.id_status, 
		       fe_actualizado=now()
		 WHERE id_moneda = new.id_moneda;

			  
		RETURN NEW;
	   


	ELSEIF (TG_OP = 'UPDATE') THEN

-- 	
-- 		SELECT mo_disponible, mo_instruido, mo_total 
-- 			into v_mo_disponible_actual, 
-- 			     v_mo_instruido_actual,
-- 			     v_mo_total_actual 
-- 		from pagos.cuenta 
-- 		where id_moneda=old.id_moneda;
-- 
-- 
-- 		v_mo_diponible_dif := v_mo_disponible_actual + old.mo_instruido;   --4000 
-- 		v_mo_instruido_dif := v_mo_instruido_actual - old.mo_instruido;
-- 
-- 
-- 		v_mo_dispfinal	  := v_mo_total_actual - new.mo_instruccion; --4000 - 3000
-- 		v_monto_instfinal := v_mo_instruido_dif + new.mo_instruccion; --0 + 3000



		SELECT 		
		  (mo_disponible + old.mo_instruccion - new.mo_instruccion),	
		  (mo_instruido - old.mo_instruccion + new.mo_instruccion)  
		  INTO v_mo_dispfinal, v_monto_instfinal
		FROM pagos.cuenta 
		WHERE id_moneda=old.id_moneda;


		
			UPDATE pagos.cuenta
			   SET  
			       mo_disponible=v_mo_dispfinal,
			       mo_instruido=v_monto_instfinal, 
			       tx_observaciones=new.tx_observaciones,
			       id_usuario=new.id_usuario,
			       id_status=new.id_status, 
			       fe_actualizado=now()
			 WHERE id_moneda = old.id_moneda;


	END IF;
	 
	  RETURN NULL;
	 
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sp_upd_pago_cuenta
-- ----------------------------
DROP FUNCTION IF EXISTS "pagos"."sp_upd_pago_cuenta"();
CREATE OR REPLACE FUNCTION "pagos"."sp_upd_pago_cuenta"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
DECLARE


	v_mo_disponible   NUMERIC;
	v_monto_instruido NUMERIC;
	v_mo_total 	NUMERIC;
	v_mo_instruido 	NUMERIC;

	v_mo_totfinal NUMERIC;
	v_mo_instfinal NUMERIC;

	v_moneda_existe NUMERIC;
	v_idmone_inst NUMERIC;
	v_moint_mon NUMERIC;
	v_upd_cta_moins NUMERIC;
	v_upd_cta_modisp NUMERIC;
	nvoinst NUMERIC;
	nvodisp	NUMERIC;

	nvoinstp NUMERIC;
	nvototp NUMERIC;


BEGIN  
 
--pendiente desteminar el update

IF  (TG_OP = 'INSERT') THEN


		--Verifico que el pago a realizar sea o no la misma moneda
		SELECT id_moneda INTO v_moneda_existe 
		   FROM pagos.instruccion 
			WHERE id_instruccion=new.id_instruccion;	 


		IF new.id_moneda <> v_moneda_existe THEN 


			--Consulto los montos de inst y disp de la instrucción para asi recalcular montos
			-- en la tabla cuenta y actualizar	
			SELECT id_moneda,mo_instruccion
			   INTO v_idmone_inst, v_moint_mon
			   FROM pagos.instruccion 
				WHERE id_instruccion=new.id_instruccion;  
			
			--Obtengo los valores nuevos de los montos ya que se hace el ajuste pertinente,
			-- tomando en cuenta que la moneda de pago es distinta  
			SELECT (mo_instruido - v_moint_mon),(mo_disponible + v_moint_mon)
			INTO v_upd_cta_moins,v_upd_cta_modisp
			 FROM pagos.cuenta 
			 WHERE id_moneda=v_moneda_existe;

			--Actualizo en la tabla cuenta
			UPDATE pagos.cuenta
			   SET  
			       mo_disponible=v_upd_cta_modisp,
			       mo_instruido=v_upd_cta_moins, 
			       tx_observaciones=new.tx_observaciones,
			       id_usuario=new.id_usuario,
			       id_status=new.id_status, 
			       fe_actualizado=now()
			 WHERE id_moneda = v_moneda_existe;
			 

			--Obtengo los valores que serán cargados para la otra moneda 
			SELECT 
				(mo_instruido +  new.mo_final_pago), 
				(mo_disponible - new.mo_final_pago) 
			 INTO nvoinst, nvodisp			 	
			 FROM pagos.cuenta 
			 WHERE id_moneda=new.id_moneda;

			--Actualizo en la tabla cuenta
			UPDATE pagos.cuenta
			   SET  
			       mo_disponible=nvodisp,
			       mo_instruido=nvoinst, 
			       tx_observaciones=new.tx_observaciones,
			       id_usuario=new.id_usuario,
			       id_status=new.id_status, 
			       fe_actualizado=now()
			 WHERE id_moneda = new.id_moneda;


				IF new.id_status = 13 THEN

					--Obtengo los valores que serán cargados para la otra moneda 
					SELECT 
						(v_mo_instruido - new.mo_final_pago), 
						(v_mo_total - new.mo_final_pago) 
					 INTO nvoinstp,nvototp
					 FROM pagos.cuenta 
					 WHERE id_moneda=new.id_moneda;			

				END IF; --SI ESTATUS



		ELSE --SI MONEDA EXISTE

	
			IF new.id_status = 13 THEN

				SELECT mo_total,
				       mo_instruido 
				INTO   v_mo_total,
				       v_mo_instruido 
				FROM pagos.cuenta 
				WHERE id_moneda= new.id_moneda; 
			  
				
				v_mo_total := v_mo_total - new.mo_final_pago;
				v_monto_instruido := v_mo_instruido - new.mo_final_pago;

				UPDATE pagos.cuenta
				   SET  
				       mo_total=v_mo_total,
				       mo_instruido=v_monto_instruido, 
				       tx_observaciones=new.tx_observaciones,
				       id_usuario=new.id_usuario,
				       id_status=new.id_status, 
				       fe_actualizado=now()
				 WHERE id_moneda = new.id_moneda;

				   
				RETURN NEW;

			END IF; --SI ESTATUS
		END IF; --SI MONEDA EXISTE
  END IF;--INSERT
 
  RETURN NULL;
 
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- View structure for vw_banco
-- ----------------------------
DROP VIEW IF EXISTS "pagos"."vw_banco";
CREATE VIEW "pagos"."vw_banco" AS  SELECT ba.id_banco,
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
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"pagos"."banco_id_banco_seq"', 29, true);
SELECT setval('"pagos"."categoria_id_categoria_seq"', 11, true);
SELECT setval('"pagos"."clase_ente_id_clase_ente_seq"', 3, true);
SELECT setval('"pagos"."cuenta_id_cuenta_seq"', 1154, true);
SELECT setval('"pagos"."det_cuenta_id_det_cuenta_seq"', 2, false);
SELECT setval('"pagos"."ejecucion_pago_id_ejecucion_pago_seq"', 5, true);
SELECT setval('"pagos"."ente_id_ente_seq"', 16, true);
SELECT setval('"pagos"."esquema_id_esquema_seq"', 9, true);
SELECT setval('"pagos"."etapa_envio_id_etapa_envio_seq"', 4, true);
SELECT setval('"pagos"."grupo_banco_id_grupo_banco_seq"', 5, true);
SELECT setval('"pagos"."grupo_ente_id_grupo_ente_seq"', 6, true);
SELECT setval('"pagos"."grupo_financiero_id_grupo_financiero_seq"', 5, true);
SELECT setval('"pagos"."grupo_status_id_grupo_status_seq"', 4, true);
SELECT setval('"pagos"."ingreso_id_ingreso_seq"', 31, true);
SELECT setval('"pagos"."instruccion_id_instruccion_seq"', 22, true);
SELECT setval('"pagos"."menu_id_menu_seq"', 5, true);
SELECT setval('"pagos"."modulo_id_modulo_seq"', 2, true);
SELECT setval('"pagos"."moneda_id_moneda_seq"', 7, true);
SELECT setval('"pagos"."movimiento_id_movimiento_seq"', 25, true);
SELECT setval('"pagos"."pagos_id_pago_seq"', 16, true);
SELECT setval('"pagos"."permiso_id_permiso_seq"', 9, true);
SELECT setval('"pagos"."rol_id_rol_seq"', 4, true);
SELECT setval('"pagos"."solicitud_id_solicitud_seq"', 16, true);
SELECT setval('"pagos"."status_id_status_seq"', 27, true);
SELECT setval('"pagos"."tasa_id_tasa_seq"', 2, true);
SELECT setval('"pagos"."tipo_banco_id_tipo_banco_seq"', 3, true);
SELECT setval('"pagos"."tipo_ente_id_tipo_ente_seq"', 4, true);
SELECT setval('"pagos"."tipo_ingreso_id_tipo_ingreso_seq"', 9, true);
SELECT setval('"pagos"."tipo_ingresoo_id_tpingreso_seq"', 2, true);
SELECT setval('"pagos"."tipo_pago_id_tipo_pago_seq"', 3, true);
SELECT setval('"pagos"."tr_bitacora_id_bitacora_seq"', 273, true);
SELECT setval('"pagos"."users_id_seq"', 5, true);
SELECT setval('"pagos"."usuario_id_usuario_seq"', 3, true);
SELECT setval('"pagos"."usurol_id_usurol_seq"', 3, true);

-- ----------------------------
-- Triggers structure for table banco
-- ----------------------------
CREATE TRIGGER "trg_tr_banco" AFTER INSERT OR UPDATE ON "pagos"."banco"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table banco
-- ----------------------------
ALTER TABLE "pagos"."banco" ADD CONSTRAINT "banco_nb_banco_key" UNIQUE ("nb_banco");

-- ----------------------------
-- Primary Key structure for table banco
-- ----------------------------
ALTER TABLE "pagos"."banco" ADD CONSTRAINT "banco_pkey" PRIMARY KEY ("id_banco");

-- ----------------------------
-- Triggers structure for table categoria
-- ----------------------------
CREATE TRIGGER "trg_tr_categoria" AFTER INSERT OR UPDATE ON "pagos"."categoria"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table categoria
-- ----------------------------
ALTER TABLE "pagos"."categoria" ADD CONSTRAINT "categoria_nb_categoria_key" UNIQUE ("nb_categoria");

-- ----------------------------
-- Primary Key structure for table categoria
-- ----------------------------
ALTER TABLE "pagos"."categoria" ADD CONSTRAINT "categoria_pkey" PRIMARY KEY ("id_categoria");

-- ----------------------------
-- Triggers structure for table clase_ente
-- ----------------------------
CREATE TRIGGER "trg_tr_clase_ente" AFTER INSERT OR UPDATE ON "pagos"."clase_ente"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table clase_ente
-- ----------------------------
ALTER TABLE "pagos"."clase_ente" ADD CONSTRAINT "clase_ente_nb_clase_ente_key" UNIQUE ("nb_clase_ente");

-- ----------------------------
-- Primary Key structure for table clase_ente
-- ----------------------------
ALTER TABLE "pagos"."clase_ente" ADD CONSTRAINT "clase_ente_pkey" PRIMARY KEY ("id_clase_ente");

-- ----------------------------
-- Triggers structure for table cuenta
-- ----------------------------
CREATE TRIGGER "trg_tr_cuenta" AFTER INSERT OR UPDATE ON "pagos"."cuenta"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Primary Key structure for table cuenta
-- ----------------------------
ALTER TABLE "pagos"."cuenta" ADD CONSTRAINT "cuenta_pkey" PRIMARY KEY ("id_cuenta");

-- ----------------------------
-- Triggers structure for table det_cuenta
-- ----------------------------
CREATE TRIGGER "trg_tr_det_cuenta" AFTER INSERT OR UPDATE ON "pagos"."det_cuenta"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Primary Key structure for table det_cuenta
-- ----------------------------
ALTER TABLE "pagos"."det_cuenta" ADD CONSTRAINT "det_cuenta_pkey" PRIMARY KEY ("id_det_cuenta");

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
ALTER TABLE "pagos"."ejecucion_pago" ADD CONSTRAINT "ejecucion_pago_pkey" PRIMARY KEY ("id_ejecucion_pago");

-- ----------------------------
-- Triggers structure for table ente
-- ----------------------------
CREATE TRIGGER "trg_tr_ente" AFTER INSERT OR UPDATE ON "pagos"."ente"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table ente
-- ----------------------------
ALTER TABLE "pagos"."ente" ADD CONSTRAINT "ente_nb_ente_id_grupo_ente_key" UNIQUE ("nb_ente", "id_grupo_ente");

-- ----------------------------
-- Primary Key structure for table ente
-- ----------------------------
ALTER TABLE "pagos"."ente" ADD CONSTRAINT "ente_pkey" PRIMARY KEY ("id_ente");

-- ----------------------------
-- Triggers structure for table esquema
-- ----------------------------
CREATE TRIGGER "trg_tr_esquema" AFTER INSERT OR UPDATE ON "pagos"."esquema"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table esquema
-- ----------------------------
ALTER TABLE "pagos"."esquema" ADD CONSTRAINT "esquema_nb_esquema_key" UNIQUE ("nb_esquema");

-- ----------------------------
-- Primary Key structure for table esquema
-- ----------------------------
ALTER TABLE "pagos"."esquema" ADD CONSTRAINT "esquema_pkey" PRIMARY KEY ("id_esquema");

-- ----------------------------
-- Triggers structure for table etapa_envio
-- ----------------------------
CREATE TRIGGER "trg_tr_etapa_envio" AFTER INSERT OR UPDATE ON "pagos"."etapa_envio"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table etapa_envio
-- ----------------------------
ALTER TABLE "pagos"."etapa_envio" ADD CONSTRAINT "etapa_envio_nb_etapa_envio_key" UNIQUE ("nb_etapa_envio");

-- ----------------------------
-- Primary Key structure for table etapa_envio
-- ----------------------------
ALTER TABLE "pagos"."etapa_envio" ADD CONSTRAINT "etapa_envio_pkey" PRIMARY KEY ("id_etapa_envio");

-- ----------------------------
-- Triggers structure for table grupo_banco
-- ----------------------------
CREATE TRIGGER "trg_tr_grupo_banco" AFTER INSERT OR UPDATE ON "pagos"."grupo_banco"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table grupo_banco
-- ----------------------------
ALTER TABLE "pagos"."grupo_banco" ADD CONSTRAINT "grupo_banco_nb_grupo_banco_key" UNIQUE ("nb_grupo_banco");

-- ----------------------------
-- Primary Key structure for table grupo_banco
-- ----------------------------
ALTER TABLE "pagos"."grupo_banco" ADD CONSTRAINT "grupo_banco_pkey" PRIMARY KEY ("id_grupo_banco");

-- ----------------------------
-- Triggers structure for table grupo_ente
-- ----------------------------
CREATE TRIGGER "trg_tr_grupo_ente" AFTER INSERT OR UPDATE ON "pagos"."grupo_ente"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table grupo_ente
-- ----------------------------
ALTER TABLE "pagos"."grupo_ente" ADD CONSTRAINT "grupo_ente_nb_grupo_ente_key" UNIQUE ("nb_grupo_ente");

-- ----------------------------
-- Primary Key structure for table grupo_ente
-- ----------------------------
ALTER TABLE "pagos"."grupo_ente" ADD CONSTRAINT "grupo_ente_pkey" PRIMARY KEY ("id_grupo_ente");

-- ----------------------------
-- Triggers structure for table grupo_financiero
-- ----------------------------
CREATE TRIGGER "trg_tr_grupo_financiero" AFTER INSERT OR UPDATE ON "pagos"."grupo_financiero"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table grupo_financiero
-- ----------------------------
ALTER TABLE "pagos"."grupo_financiero" ADD CONSTRAINT "grupo_financiero_nb_grupo_financiero_key" UNIQUE ("nb_grupo_financiero");

-- ----------------------------
-- Primary Key structure for table grupo_financiero
-- ----------------------------
ALTER TABLE "pagos"."grupo_financiero" ADD CONSTRAINT "grupo_financiero_pkey" PRIMARY KEY ("id_grupo_financiero");

-- ----------------------------
-- Triggers structure for table grupo_status
-- ----------------------------
CREATE TRIGGER "trg_tr_grupo_status" AFTER INSERT OR UPDATE ON "pagos"."grupo_status"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table grupo_status
-- ----------------------------
ALTER TABLE "pagos"."grupo_status" ADD CONSTRAINT "grupo_status_nb_grupo_key" UNIQUE ("nb_grupo");

-- ----------------------------
-- Primary Key structure for table grupo_status
-- ----------------------------
ALTER TABLE "pagos"."grupo_status" ADD CONSTRAINT "grupo_status_pkey" PRIMARY KEY ("id_grupo_status");

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
ALTER TABLE "pagos"."ingreso" ADD CONSTRAINT "ingreso_pkey" PRIMARY KEY ("id_ingreso");

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
ALTER TABLE "pagos"."instruccion" ADD CONSTRAINT "instruccion_pkey" PRIMARY KEY ("id_instruccion");

-- ----------------------------
-- Uniques structure for table menu
-- ----------------------------
ALTER TABLE "pagos"."menu" ADD CONSTRAINT "menu_nb_menu_key" UNIQUE ("nb_menu");

-- ----------------------------
-- Primary Key structure for table menu
-- ----------------------------
ALTER TABLE "pagos"."menu" ADD CONSTRAINT "menu_pkey" PRIMARY KEY ("id_menu");

-- ----------------------------
-- Uniques structure for table modulo
-- ----------------------------
ALTER TABLE "pagos"."modulo" ADD CONSTRAINT "modulo_nb_modulo_key" UNIQUE ("nb_modulo");

-- ----------------------------
-- Primary Key structure for table modulo
-- ----------------------------
ALTER TABLE "pagos"."modulo" ADD CONSTRAINT "modulo_pkey" PRIMARY KEY ("id_modulo");

-- ----------------------------
-- Triggers structure for table moneda
-- ----------------------------
CREATE TRIGGER "trg_tr_moneda" AFTER INSERT OR UPDATE ON "pagos"."moneda"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table moneda
-- ----------------------------
ALTER TABLE "pagos"."moneda" ADD CONSTRAINT "moneda_nb_moneda_key" UNIQUE ("nb_moneda");

-- ----------------------------
-- Primary Key structure for table moneda
-- ----------------------------
ALTER TABLE "pagos"."moneda" ADD CONSTRAINT "moneda_pkey" PRIMARY KEY ("id_moneda");

-- ----------------------------
-- Primary Key structure for table movimiento
-- ----------------------------
ALTER TABLE "pagos"."movimiento" ADD CONSTRAINT "movimiento_pkey" PRIMARY KEY ("id_movimiento");

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
ALTER TABLE "pagos"."pago" ADD CONSTRAINT "pago_pkey" PRIMARY KEY ("id_pago");

-- ----------------------------
-- Indexes structure for table password_resets
-- ----------------------------
CREATE INDEX "password_resets_email_index" ON "pagos"."password_resets" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table permiso
-- ----------------------------
ALTER TABLE "pagos"."permiso" ADD CONSTRAINT "permiso_pkey" PRIMARY KEY ("id_permiso");

-- ----------------------------
-- Uniques structure for table rol
-- ----------------------------
ALTER TABLE "pagos"."rol" ADD CONSTRAINT "rol_nb_rol_key" UNIQUE ("nb_rol");

-- ----------------------------
-- Primary Key structure for table rol
-- ----------------------------
ALTER TABLE "pagos"."rol" ADD CONSTRAINT "rol_pkey" PRIMARY KEY ("id_rol");

-- ----------------------------
-- Triggers structure for table solicitud
-- ----------------------------
CREATE TRIGGER "trg_tr_solicitud" AFTER INSERT OR UPDATE ON "pagos"."solicitud"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Primary Key structure for table solicitud
-- ----------------------------
ALTER TABLE "pagos"."solicitud" ADD CONSTRAINT "solicitud_pkey" PRIMARY KEY ("id_solicitud");

-- ----------------------------
-- Triggers structure for table status
-- ----------------------------
CREATE TRIGGER "trg_tr_status" AFTER INSERT OR UPDATE ON "pagos"."status"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table status
-- ----------------------------
ALTER TABLE "pagos"."status" ADD CONSTRAINT "status_nb_secundario_co_status_key" UNIQUE ("nb_secundario", "co_status");

-- ----------------------------
-- Primary Key structure for table status
-- ----------------------------
ALTER TABLE "pagos"."status" ADD CONSTRAINT "status_pkey" PRIMARY KEY ("id_status");

-- ----------------------------
-- Triggers structure for table tasa
-- ----------------------------
CREATE TRIGGER "trg_tr_tasa" AFTER INSERT OR UPDATE ON "pagos"."tasa"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Primary Key structure for table tasa
-- ----------------------------
ALTER TABLE "pagos"."tasa" ADD CONSTRAINT "tasa_pkey" PRIMARY KEY ("id_tasa");

-- ----------------------------
-- Triggers structure for table tipo_banco
-- ----------------------------
CREATE TRIGGER "trg_tipo_banco" AFTER INSERT OR UPDATE ON "pagos"."tipo_banco"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table tipo_banco
-- ----------------------------
ALTER TABLE "pagos"."tipo_banco" ADD CONSTRAINT "tipo_banco_nb_tipo_banco_key" UNIQUE ("nb_tipo_banco");

-- ----------------------------
-- Primary Key structure for table tipo_banco
-- ----------------------------
ALTER TABLE "pagos"."tipo_banco" ADD CONSTRAINT "tipo_banco_pkey" PRIMARY KEY ("id_tipo_banco");

-- ----------------------------
-- Triggers structure for table tipo_ente
-- ----------------------------
CREATE TRIGGER "trg_tipo_ente" AFTER INSERT OR UPDATE ON "pagos"."tipo_ente"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table tipo_ente
-- ----------------------------
ALTER TABLE "pagos"."tipo_ente" ADD CONSTRAINT "tipo_ente_nb_tipo_ente_key" UNIQUE ("nb_tipo_ente");

-- ----------------------------
-- Primary Key structure for table tipo_ente
-- ----------------------------
ALTER TABLE "pagos"."tipo_ente" ADD CONSTRAINT "tipo_ente_pkey" PRIMARY KEY ("id_tipo_ente");

-- ----------------------------
-- Triggers structure for table tipo_ingreso
-- ----------------------------
CREATE TRIGGER "trg_tipo_ingreso" AFTER INSERT OR UPDATE ON "pagos"."tipo_ingreso"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table tipo_ingreso
-- ----------------------------
ALTER TABLE "pagos"."tipo_ingreso" ADD CONSTRAINT "tipo_ingreso_nb_tipo_ingreso_key" UNIQUE ("nb_tipo_ingreso");

-- ----------------------------
-- Primary Key structure for table tipo_ingreso
-- ----------------------------
ALTER TABLE "pagos"."tipo_ingreso" ADD CONSTRAINT "tipo_ingreso_pkey" PRIMARY KEY ("id_tipo_ingreso");

-- ----------------------------
-- Uniques structure for table tipo_ingresoo
-- ----------------------------
ALTER TABLE "pagos"."tipo_ingresoo" ADD CONSTRAINT "tipo_ingresoo_nb_tpingreso_key" UNIQUE ("nb_tpingreso");

-- ----------------------------
-- Primary Key structure for table tipo_ingresoo
-- ----------------------------
ALTER TABLE "pagos"."tipo_ingresoo" ADD CONSTRAINT "tipo_ingresoo_pkey" PRIMARY KEY ("id_tpingreso");

-- ----------------------------
-- Triggers structure for table tipo_pago
-- ----------------------------
CREATE TRIGGER "trg_tipo_pago" AFTER INSERT OR UPDATE ON "pagos"."tipo_pago"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

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
-- Triggers structure for table usuario
-- ----------------------------
CREATE TRIGGER "trg_usuario" AFTER INSERT OR UPDATE ON "pagos"."usuario"
FOR EACH ROW
EXECUTE PROCEDURE "pagos"."sp_ins_bitacora"();

-- ----------------------------
-- Uniques structure for table usuario
-- ----------------------------
ALTER TABLE "pagos"."usuario" ADD CONSTRAINT "usuario_tx_usuario_nu_cedula_id_status_key" UNIQUE ("tx_usuario", "nu_cedula", "id_status");

-- ----------------------------
-- Primary Key structure for table usuario
-- ----------------------------
ALTER TABLE "pagos"."usuario" ADD CONSTRAINT "usuario_pkey" PRIMARY KEY ("id_usuario");

-- ----------------------------
-- Uniques structure for table usurol
-- ----------------------------
ALTER TABLE "pagos"."usurol" ADD CONSTRAINT "usurol_id_usuariop_id_rol_key" UNIQUE ("id_usuariop", "id_rol");

-- ----------------------------
-- Primary Key structure for table usurol
-- ----------------------------
ALTER TABLE "pagos"."usurol" ADD CONSTRAINT "usurol_pkey" PRIMARY KEY ("id_usurol");
