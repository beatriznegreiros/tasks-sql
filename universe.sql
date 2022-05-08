--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    type text,
    dist_earth_mla numeric,
    local_group boolean NOT NULL
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
-- Name: info_galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.info_galaxy (
    info_galaxy_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    main_material text,
    name character varying(30)
);


ALTER TABLE public.info_galaxy OWNER TO freecodecamp;

--
-- Name: info_galaxy_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.info_galaxy_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.info_galaxy_info_id_seq OWNER TO freecodecamp;

--
-- Name: info_galaxy_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.info_galaxy_info_id_seq OWNED BY public.info_galaxy.info_galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer,
    n_sisters integer NOT NULL,
    year integer NOT NULL
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
    name character varying(30),
    planet_id integer NOT NULL,
    mass_relation_earth numeric NOT NULL,
    presence_moon boolean,
    star_id integer
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
    name character varying(30),
    galaxy_id integer NOT NULL,
    dist_earth_la numeric,
    size_relation_sun numeric
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: info_galaxy info_galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info_galaxy ALTER COLUMN info_galaxy_id SET DEFAULT nextval('public.info_galaxy_info_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'spiral', 0.0265, true);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 'irregular', 0.025, true);
INSERT INTO public.galaxy VALUES (3, 'Draco 2', NULL, 0.07, true);
INSERT INTO public.galaxy VALUES (4, 'Tucana 3', NULL, 0.0747, true);
INSERT INTO public.galaxy VALUES (5, 'Segue 1', 'spiral', 0.075, true);
INSERT INTO public.galaxy VALUES (6, 'Andromeda', 'spiral', 3.9, false);


--
-- Data for Name: info_galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.info_galaxy VALUES (1, 2, 'Hydrogen', NULL);
INSERT INTO public.info_galaxy VALUES (2, 4, 'Hydrogen', NULL);
INSERT INTO public.info_galaxy VALUES (3, 5, 'Hydrogen', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', 3, 1, 20);
INSERT INTO public.moon VALUES (2, 'Europa', 4, 3, 30);
INSERT INTO public.moon VALUES (3, 'Titan', 5, 1, 20);
INSERT INTO public.moon VALUES (4, 'Enceladus', 5, 3, 30);
INSERT INTO public.moon VALUES (5, 'Bianca', 6, 41, 20);
INSERT INTO public.moon VALUES (6, 'Ariel', 6, 41, 30);
INSERT INTO public.moon VALUES (7, 'Trinculo', 6, 41, 20);
INSERT INTO public.moon VALUES (8, 'Titania', 6, 41, 30);
INSERT INTO public.moon VALUES (9, 'Stephano', 6, 41, 20);
INSERT INTO public.moon VALUES (10, 'Umbriel', 6, 41, 30);
INSERT INTO public.moon VALUES (11, 'Rosalind', 6, 41, 20);
INSERT INTO public.moon VALUES (12, 'Puck', 6, 41, 30);
INSERT INTO public.moon VALUES (13, 'Perdita', 6, 41, 20);
INSERT INTO public.moon VALUES (14, 'Portia', 6, 41, 30);
INSERT INTO public.moon VALUES (15, 'Ophelia', 6, 41, 20);
INSERT INTO public.moon VALUES (16, 'Prospero', 6, 41, 30);
INSERT INTO public.moon VALUES (17, 'Miranda', 6, 41, 20);
INSERT INTO public.moon VALUES (18, 'Oberon', 6, 41, 30);
INSERT INTO public.moon VALUES (19, 'Ferdinand', 6, 41, 20);
INSERT INTO public.moon VALUES (20, 'Francisco', 6, 41, 30);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, 0.056, false, 6);
INSERT INTO public.planet VALUES ('Venus', 2, 0.81, false, 6);
INSERT INTO public.planet VALUES ('Mars', 3, 0.11, true, 6);
INSERT INTO public.planet VALUES ('Jupiter', 4, 318, true, 6);
INSERT INTO public.planet VALUES ('Saturn', 5, 5, true, 6);
INSERT INTO public.planet VALUES ('Uranus', 6, 15, true, 6);
INSERT INTO public.planet VALUES ('Kepler 186f', 8, 1, false, 7);
INSERT INTO public.planet VALUES ('Neptune', 9, 17, true, 6);
INSERT INTO public.planet VALUES ('Alpha Centauri b', 10, 1.3, false, 8);
INSERT INTO public.planet VALUES ('Alpha Centauri c', 11, 7, false, 8);
INSERT INTO public.planet VALUES ('Gliese 876d', 12, 7.5, false, 9);
INSERT INTO public.planet VALUES ('Proxima Centuri d', 13, 0.25, false, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', 1, 550, 883);
INSERT INTO public.star VALUES (2, 'UY Scuti', 1, 5219, 1700);
INSERT INTO public.star VALUES (3, 'Alpheratz', 6, 97, 2.7);
INSERT INTO public.star VALUES (4, 'Sirius', 2, 8.57, 2.4);
INSERT INTO public.star VALUES (5, 'Alpha Tucanae', 4, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Sun', 1, 0.00001596, 1);
INSERT INTO public.star VALUES (7, 'Kepler 186', 1, 600, 0.5);
INSERT INTO public.star VALUES (8, 'Proxima Centauri', 1, 4.2, 0.14);
INSERT INTO public.star VALUES (9, 'Gliese 876', 1, 15, 0.5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: info_galaxy_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.info_galaxy_info_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: star dist; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT dist UNIQUE (dist_earth_la);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: info_galaxy info_galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info_galaxy
    ADD CONSTRAINT info_galaxy_pkey PRIMARY KEY (info_galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_dist; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_dist UNIQUE (dist_earth_mla);


--
-- Name: info_galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info_galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (galaxy_id);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: info_galaxy info_galaxy_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info_galaxy
    ADD CONSTRAINT info_galaxy_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

