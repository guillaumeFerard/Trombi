--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

-- Started on 2020-10-13 10:38:22

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 16624)
-- Name: stagiaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stagiaire (
    id integer NOT NULL,
    nom character varying(30) NOT NULL,
    "prénom" character varying(30) NOT NULL,
    avatar character varying NOT NULL,
    projet character varying,
    parcours character varying
);


ALTER TABLE public.stagiaire OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16630)
-- Name: stagiaire_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stagiaire_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stagiaire_id_seq OWNER TO postgres;

--
-- TOC entry 2824 (class 0 OID 0)
-- Dependencies: 203
-- Name: stagiaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stagiaire_id_seq OWNED BY public.stagiaire.id;


--
-- TOC entry 2688 (class 2604 OID 16633)
-- Name: stagiaire id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stagiaire ALTER COLUMN id SET DEFAULT nextval('public.stagiaire_id_seq'::regclass);


--
-- TOC entry 2817 (class 0 OID 16624)
-- Dependencies: 202
-- Data for Name: stagiaire; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stagiaire (id, nom, "prénom", avatar, projet, parcours) FROM stdin;
2	Thomas	Aurélia	asset/aurelia.png	asset/projet_aurelia.png	asset/parcours_aurelia.png
3	Libor	Alex	asset/alex.png	asset/projet_alex.png	asset/parcours_alex.png
8	Hammel-Cornu	Wilfried	asset/wilfried.png	asset/projet_wilfried.png	asset/parcours_wilfried.png
6	Herbet	Hadrien	asset/hadrien.png	asset/projet_hadrien.png	asset/parcours_hadrien.png
9	Sarratia	Mélanie	asset/melanie.png	asset/projet_melanie.png	asset/parcours_melanie.png
7	Posada	Javier	asset/javier.png	asset/projet_javier.png	asset/parcours_javier.png
5	Busignies	Laura	asset/laura.png	asset/projet_laura.png	asset/parcours_laura.png
4	Gaubert	Alexandre	asset/alexandre.png	asset/projet_alexandre.png	asset/parcours_alexandre.png
1	Ferard	Guillaume	asset/guillaume.png	asset/projet_guillaume.png	asset/parcours_guillaume.png
\.


--
-- TOC entry 2825 (class 0 OID 0)
-- Dependencies: 203
-- Name: stagiaire_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stagiaire_id_seq', 9, true);


--
-- TOC entry 2690 (class 2606 OID 16637)
-- Name: stagiaire stagiaire_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stagiaire
    ADD CONSTRAINT stagiaire_pk PRIMARY KEY (id);


-- Completed on 2020-10-13 10:38:23

--
-- PostgreSQL database dump complete
--

