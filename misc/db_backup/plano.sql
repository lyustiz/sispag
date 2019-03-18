--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.9
-- Dumped by pg_dump version 10.4

-- Started on 2019-03-18 18:34:29

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 213 (class 1259 OID 19422)
-- Name: ingreso; Type: TABLE; Schema: pagos; Owner: postgres
--

CREATE TABLE pagos.ingreso (
    id_ingreso integer DEFAULT nextval('pagos.ingreso_id_ingreso_seq'::regclass) NOT NULL,
    id_tipo_ingreso integer,
    id_ente integer,
    id_moneda integer,
    mo_ingreso numeric(15,2),
    mo_tasa numeric(15,4),
    fe_ingreso timestamp(0) without time zone,
    tx_observaciones character varying(100) DEFAULT 'N/A'::character varying,
    id_usuario integer NOT NULL,
    id_status integer NOT NULL,
    fe_creado timestamp(0) without time zone,
    fe_actualizado timestamp(0) without time zone,
    id_banco integer
);


ALTER TABLE pagos.ingreso OWNER TO postgres;

--
-- TOC entry 2332 (class 0 OID 19422)
-- Dependencies: 213
-- Data for Name: ingreso; Type: TABLE DATA; Schema: pagos; Owner: postgres
--

COPY pagos.ingreso (id_ingreso, id_tipo_ingreso, id_ente, id_moneda, mo_ingreso, mo_tasa, fe_ingreso, tx_observaciones, id_usuario, id_status, fe_creado, fe_actualizado, id_banco) FROM stdin;
2	5	5	2	24234738.23	1.1400	2019-01-11 00:00:00	Aporte de PDVSA venta por exportacion - primer aporte del año	1	1	2019-01-25 19:33:00	2019-01-25 19:33:00	8
3	5	5	2	28377562.96	1.1300	2019-01-18 00:00:00	Apote PDVSA exportacion- segundo aporte del año	1	1	2019-01-25 19:34:02	2019-01-25 19:34:02	8
5	6	469	2	26000.00	1.1300	2019-01-07 00:00:00	Venta de divisas de BAER al BCV oficio N° BSR/PRES/11/410 28/11/2018	1	1	2019-01-25 22:15:57	2019-01-25 22:15:57	8
4	6	469	2	17000.00	1.1400	2019-01-07 00:00:00	Venta de Divisas al BCV- Bolivariana de Seguros (BAER)	1	1	2019-01-25 22:14:20	2019-01-25 22:14:20	8
6	5	5	2	80000000.00	1.1400	2019-01-31 00:00:00	venta de divisas de PDVSA	4	1	2019-02-12 21:50:31	2019-02-15 15:02:18	8
8	6	474	2	500000.00	1.1300	2019-02-12 00:00:00	venta de divisas solicitada por INC dev	4	1	2019-02-12 22:07:59	2019-02-15 15:02:27	8
7	6	473	2	131417.56	1.1400	2019-01-30 00:00:00	venta de divisas de CVM a bandes	4	1	2019-02-12 22:04:27	2019-02-15 15:02:34	8
10	5	5	2	170610601.98	1.1296	2018-12-12 00:00:00	\N	4	1	2019-02-19 23:58:52	2019-02-19 23:58:52	8
11	4	5	2	573600000.00	1.1418	2018-12-20 00:00:00	\N	4	1	2019-02-21 14:23:09	2019-02-21 14:23:09	8
\.


--
-- TOC entry 2202 (class 2606 OID 19647)
-- Name: ingreso ingreso_pkey; Type: CONSTRAINT; Schema: pagos; Owner: postgres
--

ALTER TABLE ONLY pagos.ingreso
    ADD CONSTRAINT ingreso_pkey PRIMARY KEY (id_ingreso);


--
-- TOC entry 2206 (class 2620 OID 19709)
-- Name: ingreso trg_ingreso_ins_bitacora; Type: TRIGGER; Schema: pagos; Owner: postgres
--

CREATE TRIGGER trg_ingreso_ins_bitacora AFTER INSERT OR UPDATE ON pagos.ingreso FOR EACH ROW EXECUTE PROCEDURE pagos.sp_ins_bitacora();


--
-- TOC entry 2207 (class 2620 OID 19710)
-- Name: ingreso trg_ingreso_ins_cuenta; Type: TRIGGER; Schema: pagos; Owner: postgres
--

CREATE TRIGGER trg_ingreso_ins_cuenta AFTER INSERT OR UPDATE ON pagos.ingreso FOR EACH ROW EXECUTE PROCEDURE pagos.sp_tr_ingreso_ins_cuenta();


--
-- TOC entry 2208 (class 2620 OID 19711)
-- Name: ingreso trg_ingreso_ins_movimiento; Type: TRIGGER; Schema: pagos; Owner: postgres
--

CREATE TRIGGER trg_ingreso_ins_movimiento AFTER INSERT OR UPDATE ON pagos.ingreso FOR EACH ROW EXECUTE PROCEDURE pagos.sp_tr_ingreso_ins_movimiento();


--
-- TOC entry 2203 (class 2606 OID 19792)
-- Name: ingreso fk_ingreso_ente; Type: FK CONSTRAINT; Schema: pagos; Owner: postgres
--

ALTER TABLE ONLY pagos.ingreso
    ADD CONSTRAINT fk_ingreso_ente FOREIGN KEY (id_ente) REFERENCES pagos.ente(id_ente);


--
-- TOC entry 2204 (class 2606 OID 19797)
-- Name: ingreso fk_ingreso_moneda; Type: FK CONSTRAINT; Schema: pagos; Owner: postgres
--

ALTER TABLE ONLY pagos.ingreso
    ADD CONSTRAINT fk_ingreso_moneda FOREIGN KEY (id_moneda) REFERENCES pagos.moneda(id_moneda);


--
-- TOC entry 2205 (class 2606 OID 19802)
-- Name: ingreso fk_ingreso_tipo_ingreso; Type: FK CONSTRAINT; Schema: pagos; Owner: postgres
--

ALTER TABLE ONLY pagos.ingreso
    ADD CONSTRAINT fk_ingreso_tipo_ingreso FOREIGN KEY (id_tipo_ingreso) REFERENCES pagos.tipo_ingreso(id_tipo_ingreso);


--
-- TOC entry 2338 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE ingreso; Type: ACL; Schema: pagos; Owner: postgres
--

GRANT ALL ON TABLE pagos.ingreso TO root;


-- Completed on 2019-03-18 18:34:29

--
-- PostgreSQL database dump complete
--

