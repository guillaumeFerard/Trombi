--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Name: parcours; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parcours (
    id integer NOT NULL,
    id_stagiaire integer,
    parcours character varying
);


ALTER TABLE public.parcours OWNER TO postgres;

--
-- Name: parcours_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parcours_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parcours_id_seq OWNER TO postgres;

--
-- Name: parcours_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parcours_id_seq OWNED BY public.parcours.id;


--
-- Name: stagiaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stagiaire (
    id integer NOT NULL,
    nom character varying(30) NOT NULL,
    "prénom" character varying(30) NOT NULL,
    avatar character varying NOT NULL,
    prescripteur character varying NOT NULL,
    "projet-pro" character varying NOT NULL,
    pourquoi character varying NOT NULL
);


ALTER TABLE public.stagiaire OWNER TO postgres;

--
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
-- Name: stagiaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stagiaire_id_seq OWNED BY public.stagiaire.id;


--
-- Name: parcours id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parcours ALTER COLUMN id SET DEFAULT nextval('public.parcours_id_seq'::regclass);


--
-- Name: stagiaire id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stagiaire ALTER COLUMN id SET DEFAULT nextval('public.stagiaire_id_seq'::regclass);


--
-- Data for Name: parcours; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parcours (id, id_stagiaire, parcours) FROM stdin;
1	2	Etudes en gestion de production assistée par ordinateur
2	2	Assistante ADV
3	2	Coordinatrice ordonnancement
4	2	Assistante bancaire
5	3	Préparateur commande
6	3	Pilote d'essai et Data analyst
7	3	Responsable de rayon
8	4	Webdesigner 
9	4	Ministère de la défense
10	5	Bac Pro SPVL
11	6	Startech Normandy
12	6	Web@cademie
13	6	42
15	7	Maintenance des parcs éoliens
16	7	Ingénieur des Mines
17	7	Master métiers de l'enseignement
18	7	Professeur d'espagnol
14	6	Lycée Dumont d'Urville Bac pro Microtechnique
19	8	Lycée technologique STI2D
20	8	Formation développeur web/web mobile
21	8	Emploi en intérim
22	8	Pas de diplôme
23	9	Vente (vendeur conseil en magasin)
24	9	Coach en développement personnel
25	5	Service civique au SPF
26	5	Employée postale
27	5	Assistante d'éducation
\.


--
-- Data for Name: stagiaire; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stagiaire (id, nom, "prénom", avatar, prescripteur, "projet-pro", pourquoi) FROM stdin;
2	Thomas	Aurélia	asset/aurelia.png	Pôle Emploi	Etre embauchée chez Subteno	Envie de me reconvertir professionnellement dans la conception de logiciel
4	Gaubert	Alexandre	asset/alexandre.png	Recherche personnelle	Travailler chez Subteno et lancer ma propre entreprise	Retourner dans le domaine du développement informatique
3	Libor	Alex	asset/alex.png	Pôle Emploi	S'épanouir dans ce domaine	Reconversion professionnelle
6	Herbet	Hadrien	asset/hadrien.png	Startech Normandy	M'épanouir dans mon travail et avec les personnes avec qui je travaille, le reste c'est secondaire	Pour décrocher un job dans un domaine qui me plait et dans une boite avec une mentalité qui me correspondrait
9	Sarratia	Mélanie	asset/melanie.png	Moi-même en réalisant une rechercher sur le net	Faire un métier passion	Car la programmation m'intéressait et je voulais me former à un métier digital
7	Posada	Javier	asset/javier.png	Ma propre recherche, et pôle emploi	Travailler et continuer à me former comme développeur	Je cherchais un métier intellectuel, créatif et demandé pour les entreprises
8	Hammel-Cornu	Wilfried	asset/wilfried.png	Orientation par conseillère Pôle-emploi suite à remménagement dans la région	Intégrer une entreprise numérique, locale si possible (Subteno IT) pour monter en compétences et m'épanouir dans ce domaine	Vouloir me lancer et progresser en tant que développeur et notamment côté applicatif, apprendre le Python (beaucoup d'applications possible et en vogue) et, de plus, possibilité d'être diplômé
5	Busignies	Laura	asset/laura.png	Formateur REUSSIR à Alençon	Etre embauchée chez Subteno	Travailler dans un domaine en constante évolution
\.


--
-- Name: parcours_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parcours_id_seq', 27, true);


--
-- Name: stagiaire_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stagiaire_id_seq', 9, true);


--
-- Name: parcours parcours_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parcours
    ADD CONSTRAINT parcours_pk PRIMARY KEY (id);


--
-- Name: stagiaire stagiaire_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stagiaire
    ADD CONSTRAINT stagiaire_pk PRIMARY KEY (id);


--
-- Name: parcours parcours_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parcours
    ADD CONSTRAINT parcours_fk FOREIGN KEY (id_stagiaire) REFERENCES public.stagiaire(id);


--
-- PostgreSQL database dump complete
--

