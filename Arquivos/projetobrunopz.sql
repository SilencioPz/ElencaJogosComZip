--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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
-- Name: categoria; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.categoria AS ENUM (
    'estrategia',
    'acao',
    'esporte',
    'tabuleiro',
    'cartas',
    'casual',
    'simulacao',
    'corrida',
    'arcade',
    'rpg'
);


ALTER TYPE public.categoria OWNER TO postgres;

--
-- Name: categoria1; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.categoria1 AS ENUM (
    '-----',
    'estrategia',
    'acao',
    'esporte',
    'tabuleiro',
    'cartas',
    'casual',
    'simulacao',
    'corrida',
    'arcade',
    'rpg'
);


ALTER TYPE public.categoria1 OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cadastro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cadastro (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    data_nasc character varying(10) NOT NULL,
    email character varying(50) NOT NULL,
    senha character varying(50) NOT NULL
);


ALTER TABLE public.cadastro OWNER TO postgres;

--
-- Name: cadastro_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cadastro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cadastro_id_seq OWNER TO postgres;

--
-- Name: cadastro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cadastro_id_seq OWNED BY public.cadastro.id;


--
-- Name: categoria_elenca1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria_elenca1 (
    id integer NOT NULL,
    categoria character varying(50) NOT NULL
);


ALTER TABLE public.categoria_elenca1 OWNER TO postgres;

--
-- Name: categoria_elenca1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_elenca1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categoria_elenca1_id_seq OWNER TO postgres;

--
-- Name: categoria_elenca1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_elenca1_id_seq OWNED BY public.categoria_elenca1.id;


--
-- Name: jogos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jogos (
    id integer NOT NULL,
    jogo character varying(100) NOT NULL,
    nota double precision NOT NULL,
    produtora character varying(100) NOT NULL,
    classificacao character varying(10) NOT NULL,
    categoria_id integer
);


ALTER TABLE public.jogos OWNER TO postgres;

--
-- Name: jogos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jogos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jogos_id_seq OWNER TO postgres;

--
-- Name: jogos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jogos_id_seq OWNED BY public.jogos.id;


--
-- Name: cadastro id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cadastro ALTER COLUMN id SET DEFAULT nextval('public.cadastro_id_seq'::regclass);


--
-- Name: categoria_elenca1 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria_elenca1 ALTER COLUMN id SET DEFAULT nextval('public.categoria_elenca1_id_seq'::regclass);


--
-- Name: jogos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jogos ALTER COLUMN id SET DEFAULT nextval('public.jogos_id_seq'::regclass);


--
-- Data for Name: cadastro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cadastro (id, nome, data_nasc, email, senha) FROM stdin;
1	Bruno Perez	12/02/1985	thesilencepzbr777@gmail.com	123
2	Raul Cara	02/05/2000	rauzitodojava@gmail.com	456
3	Fabiano Taguchi	16/08/1981	fabianoktaguchi@gmail.com	789
4	Eduardo Pz	19/09/1987	eduardoc940@gmail.com	741
5	Brunim amigo do cara	12/02/1985	brunopz@gmail.com	963
\.


--
-- Data for Name: categoria_elenca1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria_elenca1 (id, categoria) FROM stdin;
1	estrategia
2	acao
3	esporte
4	tabuleiro
5	cartas
6	casual
7	simulacao
8	corrida
9	arcade
10	rpg
\.


--
-- Data for Name: jogos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jogos (id, jogo, nota, produtora, classificacao, categoria_id) FROM stdin;
1	clash royale	4.4	superecell	10+	1
2	brawl stars	4.4	supercell	10	2
3	boom beach	4.5	supercell	10	1
4	8 ball pool	4.5	miniclip.com	livre	3
5	xadrez - jogar e aprender	4.8	chess.com	livre	4
6	volleyball arena	4.6	miniclip.com	livre	3
7	truco paulista e mineiro	4.5	megajogos	livre	5
8	buraco jogatina: jogo canastra	4.4	jogatina.com	livre	5
9	paciencia - jogo de solitario	4.9	guru puzzle game	livre	5
10	uno!	4.6	mattel163 limited	livre	5
11	cacheta online: jogo de cartas	4.6	megajogos	livre	5
12	damas - online & offline	4.7	gamovation	livre	4
13	gamao online em portugues	4.5	appgeneration - radio, podcasts, games	livre	4
14	board kings - jogo de dados	4.6	playtika	livre	4
15	the game of life 2	4.6	marmalade game studio	livre	4
16	ea sports fc mobile futebol	4.5	eletronic arts	livre	3
17	online soccer manager 23/24	4.7	gamebasics bv	livre	3
18	candy crush saga	4.7	king	livre	6
19	basketball stars: multijogador	4.7	miniclip.com	livre	3
20	fallout shelter	4.5	bethesda softworks llc	10	7
21	roblox	4.4	roblox corporation	12	7
22	simcity buildit	4.4	eletronic arts	livre	7
23	worldbox - sandbox de deus sim	4.6	maxim karpenko	10	7
24	we are illuminati: conspiracao	4.6	by aliens l.l.c	10	7
25	free fire: abaixo de zero	4.4	garena international i	14	2
26	subway surfers	4.6	sybo games	10	2
27	cover fire: jogos de tiro 3d	4.7	viva games studios	14	2
28	shadow of death: game offline	4.8	bravestars games	12	2
29	total battle: jogos de guerra	4.6	scorewarrior	10	1
30	plants vs. zombies	4.4	eletronic arts	livre	1
31	kingdom rush - tower defense td	4.8	ironhide games	10	1
32	carx highway racing	4.8	carx technologies, llc	12	8
33	need for speed: nl as corridas	4.4	eletronic arts	livre	8
34	corrida de rua 3d	4.5	ivy	livre	8
35	beach buggy racing	4.5	vector unit	livre	8
36	sonic dash - jogo de corrida	4.7	sega	livre	2
37	hill climb racing 2	4.4	fingersoft	livre	8
38	sonic the hedgehog classic	4.3	sega	livre	2
39	dan the man: action platformer	4.7	halfbrick studios	12	2
40	pac-man	4.2	bandai namco	livre	9
41	galaxiga: jogo de tiro arcade	4.7	1soft	livre	9
42	fruit ninja	4.4	halfbrick studios	livre	9
43	swordigo	4.7	touch foo	livre	2
44	rucoy online - mmorpg mmo rpg	4.8	ricardogzz	14	10
45	the legend of neverland	4.5	ark games global	12	10
46	one piece treasure cruise	4.6	bandai namco entertainment inc.	10	10
47	epic seven	4.6	smilegate holdings, inc	12	10
48	guardian tales	4.6	kakao games corp.	10	10
51	tomate	2.3	feijao	batata	4
\.


--
-- Name: cadastro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cadastro_id_seq', 5, true);


--
-- Name: categoria_elenca1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_elenca1_id_seq', 13, true);


--
-- Name: jogos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jogos_id_seq', 51, true);


--
-- Name: cadastro cadastro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cadastro
    ADD CONSTRAINT cadastro_pkey PRIMARY KEY (id);


--
-- Name: categoria_elenca1 categoria_elenca1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria_elenca1
    ADD CONSTRAINT categoria_elenca1_pkey PRIMARY KEY (id);


--
-- Name: jogos jogos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jogos
    ADD CONSTRAINT jogos_pkey PRIMARY KEY (id);


--
-- Name: jogos jogos_categoria_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jogos
    ADD CONSTRAINT jogos_categoria_id_fkey FOREIGN KEY (categoria_id) REFERENCES public.categoria_elenca1(id);


--
-- PostgreSQL database dump complete
--

