--
-- PostgreSQL database dump
--

-- Dumped from database version 12.11
-- Dumped by pg_dump version 12.11

-- Started on 2023-05-19 20:28:55

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 2864 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 24683)
-- Name: themes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.themes (
    id integer NOT NULL,
    create_date timestamp without time zone,
    name character varying,
    description character varying,
    keywords character varying,
    owner_user_id integer
);


ALTER TABLE public.themes OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 24689)
-- Name: themes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.themes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.themes_id_seq OWNER TO postgres;

--
-- TOC entry 2865 (class 0 OID 0)
-- Dependencies: 203
-- Name: themes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.themes_id_seq OWNED BY public.themes.id;


--
-- TOC entry 204 (class 1259 OID 24691)
-- Name: themes_properties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.themes_properties (
    id integer NOT NULL,
    theme_id integer,
    property_name character varying,
    property_value character varying
);


ALTER TABLE public.themes_properties OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 24697)
-- Name: themes_properties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.themes_properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.themes_properties_id_seq OWNER TO postgres;

--
-- TOC entry 2866 (class 0 OID 0)
-- Dependencies: 205
-- Name: themes_properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.themes_properties_id_seq OWNED BY public.themes_properties.id;


--
-- TOC entry 206 (class 1259 OID 24699)
-- Name: topics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.topics (
    id integer NOT NULL,
    create_date timestamp without time zone,
    name character varying,
    topic_id integer,
    "order" integer,
    priority integer,
    color character varying,
    owner_user_id integer
);


ALTER TABLE public.topics OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 24705)
-- Name: topics_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.topics_id_seq OWNER TO postgres;

--
-- TOC entry 2867 (class 0 OID 0)
-- Dependencies: 207
-- Name: topics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.topics_id_seq OWNED BY public.topics.id;


--
-- TOC entry 208 (class 1259 OID 24707)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying,
    last_name character varying,
    avatar character varying,
    email character varying,
    password character varying,
    deleted boolean,
    token character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 24713)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 2868 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2709 (class 2604 OID 24751)
-- Name: themes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.themes ALTER COLUMN id SET DEFAULT nextval('public.themes_id_seq'::regclass);


--
-- TOC entry 2710 (class 2604 OID 24752)
-- Name: themes_properties id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.themes_properties ALTER COLUMN id SET DEFAULT nextval('public.themes_properties_id_seq'::regclass);


--
-- TOC entry 2711 (class 2604 OID 24753)
-- Name: topics id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topics ALTER COLUMN id SET DEFAULT nextval('public.topics_id_seq'::regclass);


--
-- TOC entry 2712 (class 2604 OID 24754)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 2851 (class 0 OID 24683)
-- Dependencies: 202
-- Data for Name: themes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.themes (id, create_date, name, description, keywords, owner_user_id) FROM stdin;
1	2023-03-17 03:00:00	Prueba modificado	Desc prueba	prueba, test	1
2	2023-03-31 00:00:00	Otro tema 	Desc de otro tema	examen, prueba, test	1
3	2023-03-31 00:00:00	Tema 3	Desc de tema 3	examen, prueba, test	1
\.


--
-- TOC entry 2853 (class 0 OID 24691)
-- Dependencies: 204
-- Data for Name: themes_properties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.themes_properties (id, theme_id, property_name, property_value) FROM stdin;
2	3	tema relacionado al 3 	Desc prueba
3	3	otro relacionado al 3 	Desc del relacionado
5	3	Ruta para ver tema 3 mod	www.unlink.com.br
\.


--
-- TOC entry 2855 (class 0 OID 24699)
-- Dependencies: 206
-- Data for Name: topics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.topics (id, create_date, name, topic_id, "order", priority, color, owner_user_id) FROM stdin;
1	2023-03-29 03:00:00	Prueba	1	2	1	rojo	1
2	2023-03-29 03:00:00	Prueba Modificado	1	2	1	amarillo	1
\.


--
-- TOC entry 2857 (class 0 OID 24707)
-- Dependencies: 208
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, last_name, avatar, email, password, deleted, token) FROM stdin;
7	Prueba 	Apellido de prueba	\N	testeo@gmail.com	\N	t	\N
3	Enrique	Bobadilla	\N	enrique@gmail.com	456	t	\N
6	Jullito	Fernandez	\N	iofernandez@gmail.com	jullit0	t	\N
9	sofia	cha	\N	chan@gmail.com	admin	t	\N
4	Modificado	Thome	\N	mthome@gmail.com	m357	t	\N
2	Marcos	Jara	\N	adrianjara@gmail.com	123	t	
11	nombre 2	apellido 2	\N	email2@gmail.com	admin	f	\N
8	luis	acosta	\N	luis@gmail.com	admin	t	\N
12	Rodrigo	Torres	\N	achis00acosta@gmail.com	Luis2000	f	\N
1	Sofia mod	Benitez	apr	sbenitez99@gmail.com	admin	t	
\.


--
-- TOC entry 2869 (class 0 OID 0)
-- Dependencies: 203
-- Name: themes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.themes_id_seq', 1, true);


--
-- TOC entry 2870 (class 0 OID 0)
-- Dependencies: 205
-- Name: themes_properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.themes_properties_id_seq', 1, false);


--
-- TOC entry 2871 (class 0 OID 0)
-- Dependencies: 207
-- Name: topics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.topics_id_seq', 1, false);


--
-- TOC entry 2872 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 12, true);


--
-- TOC entry 2714 (class 2606 OID 24720)
-- Name: themes themes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.themes
    ADD CONSTRAINT themes_pkey PRIMARY KEY (id);


--
-- TOC entry 2716 (class 2606 OID 24722)
-- Name: themes_properties themes_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.themes_properties
    ADD CONSTRAINT themes_properties_pkey PRIMARY KEY (id);


--
-- TOC entry 2718 (class 2606 OID 24724)
-- Name: topics topics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_pkey PRIMARY KEY (id);


--
-- TOC entry 2720 (class 2606 OID 24726)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2722 (class 2606 OID 24727)
-- Name: themes_properties themes_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.themes_properties
    ADD CONSTRAINT themes_fk FOREIGN KEY (theme_id) REFERENCES public.themes(id) NOT VALID;


--
-- TOC entry 2721 (class 2606 OID 24732)
-- Name: themes themes_owner_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.themes
    ADD CONSTRAINT themes_owner_user_id_fkey FOREIGN KEY (owner_user_id) REFERENCES public.users(id);


--
-- TOC entry 2723 (class 2606 OID 24737)
-- Name: topics topics_owner_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_owner_user_id_fkey FOREIGN KEY (owner_user_id) REFERENCES public.users(id);


--
-- TOC entry 2724 (class 2606 OID 24742)
-- Name: topics topics_topic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_topic_id_fkey FOREIGN KEY (topic_id) REFERENCES public.topics(id);


-- Completed on 2023-05-19 20:28:56

--
-- PostgreSQL database dump complete
--

