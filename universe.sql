--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: colosal_beast; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.colosal_beast (
    colosal_beast_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    galaxy_id integer
);


ALTER TABLE public.colosal_beast OWNER TO freecodecamp;

--
-- Name: colosal_beast_beast_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.colosal_beast_beast_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colosal_beast_beast_id_seq OWNER TO freecodecamp;

--
-- Name: colosal_beast_beast_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.colosal_beast_beast_id_seq OWNED BY public.colosal_beast.colosal_beast_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planets integer,
    black_holes numeric(10,0),
    mayenter boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_interdimensional_portal boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    calamitys integer,
    has_interdimensional_portal boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    age integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: colosal_beast colosal_beast_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.colosal_beast ALTER COLUMN colosal_beast_id SET DEFAULT nextval('public.colosal_beast_beast_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: colosal_beast; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.colosal_beast VALUES (1, 'Golbez', 148, 2);
INSERT INTO public.colosal_beast VALUES (2, 'Bill Cipher', 808080, 4);
INSERT INTO public.colosal_beast VALUES (3, 'Time Baby', 20783, 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 3, 1, true);
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', 1, 2, false);
INSERT INTO public.galaxy VALUES (3, 'Cigar Galaxy', 2, 0, true);
INSERT INTO public.galaxy VALUES (4, 'Cosmos Redshift 7', 3, 7, false);
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 1, 0, true);
INSERT INTO public.galaxy VALUES (6, 'Comet Galaxy', 2, 3, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ivion', '', false, 1);
INSERT INTO public.moon VALUES (2, 'Tahiri', '', false, 1);
INSERT INTO public.moon VALUES (3, 'Uter', '', false, 2);
INSERT INTO public.moon VALUES (4, 'Amides', 'Files Corrupted', true, 3);
INSERT INTO public.moon VALUES (5, 'Hion', 'First activator of Calamity', true, 4);
INSERT INTO public.moon VALUES (6, 'Punus', '', false, 4);
INSERT INTO public.moon VALUES (7, 'Boxora', '', false, 4);
INSERT INTO public.moon VALUES (8, 'Lenia', '', false, 5);
INSERT INTO public.moon VALUES (9, 'Retreron', '', true, 6);
INSERT INTO public.moon VALUES (10, 'Tara', 'Full of explosion craters, used to have a portal', false, 7);
INSERT INTO public.moon VALUES (11, 'Olillon', '', false, 7);
INSERT INTO public.moon VALUES (12, 'Baniri', 'Might not be a moon??', false, 7);
INSERT INTO public.moon VALUES (13, 'Kilia', '', false, 8);
INSERT INTO public.moon VALUES (14, 'Akeon', '', true, 9);
INSERT INTO public.moon VALUES (15, 'Denides', '', false, 10);
INSERT INTO public.moon VALUES (16, 'Ucarro', '', false, 10);
INSERT INTO public.moon VALUES (17, 'Drilora', 'Clean...', false, 10);
INSERT INTO public.moon VALUES (18, 'Uruta', 'Only portal', true, 11);
INSERT INTO public.moon VALUES (19, 'Vyke', '', false, 11);
INSERT INTO public.moon VALUES (20, 'Ketera', 'Visible to HIM', false, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tulia', 2, false, 1);
INSERT INTO public.planet VALUES (2, 'Zexade', 4, false, 1);
INSERT INTO public.planet VALUES (3, 'Taxore', 1, false, 1);
INSERT INTO public.planet VALUES (4, 'Druinov', 17, true, 2);
INSERT INTO public.planet VALUES (5, 'Uchilles', 0, true, 3);
INSERT INTO public.planet VALUES (6, 'Kuriuq', 2, false, 3);
INSERT INTO public.planet VALUES (7, 'Ibreon XII', 12, true, 4);
INSERT INTO public.planet VALUES (8, 'Davinda', 28, true, 4);
INSERT INTO public.planet VALUES (9, 'Zaphus', 132, true, 4);
INSERT INTO public.planet VALUES (10, 'Edyria', 2, true, 5);
INSERT INTO public.planet VALUES (11, 'Aroria II', 0, false, 6);
INSERT INTO public.planet VALUES (12, 'Izeon', 1, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Lynx', 1, 24, 'Smallest star');
INSERT INTO public.star VALUES (2, 'Crux', 2, 40, 'Possibly Already extinguished');
INSERT INTO public.star VALUES (3, 'Draco', 3, 32, '');
INSERT INTO public.star VALUES (4, 'Gao', 4, 83, 'No Information');
INSERT INTO public.star VALUES (5, 'Apollo', 5, 7, 'Star of the Milky Way');
INSERT INTO public.star VALUES (6, 'Castor', 6, 13, 'Ate atleast 2 moons');


--
-- Name: colosal_beast_beast_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.colosal_beast_beast_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: colosal_beast colosal_beast_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.colosal_beast
    ADD CONSTRAINT colosal_beast_name_key UNIQUE (name);


--
-- Name: colosal_beast colosal_beast_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.colosal_beast
    ADD CONSTRAINT colosal_beast_pkey PRIMARY KEY (colosal_beast_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: colosal_beast fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.colosal_beast
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

