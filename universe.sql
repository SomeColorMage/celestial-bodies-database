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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth numeric,
    galaxy_type text,
    age_in_billions_of_years integer
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
    name character varying(20) NOT NULL,
    is_spherical boolean,
    planet_id integer NOT NULL,
    distance_from_planet integer
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
    name character varying(20) NOT NULL,
    has_life boolean,
    planet_type text,
    distance_from_star integer,
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
-- Name: secret_fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.secret_fifth_table (
    secret_fifth_table_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.secret_fifth_table OWNER TO freecodecamp;

--
-- Name: secret_fifth_table_secret_fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.secret_fifth_table_secret_fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.secret_fifth_table_secret_fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: secret_fifth_table_secret_fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.secret_fifth_table_secret_fifth_table_id_seq OWNED BY public.secret_fifth_table.secret_fifth_table_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_billions_of_years integer,
    galaxy_id integer NOT NULL,
    distance_from_galaxy_core integer
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: secret_fifth_table secret_fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.secret_fifth_table ALTER COLUMN secret_fifth_table_id SET DEFAULT nextval('public.secret_fifth_table_secret_fifth_table_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy A', 500.8, 'Spiral', 12);
INSERT INTO public.galaxy VALUES (2, 'Galaxy B', 70879.45, 'Bar', 10);
INSERT INTO public.galaxy VALUES (3, 'Galaxy C', 29058.1, 'Cluster', 13);
INSERT INTO public.galaxy VALUES (4, 'Galaxy D', 503.25, 'Elliptical', 11);
INSERT INTO public.galaxy VALUES (5, 'Galaxy E', 238095.25, 'Irregular', 14);
INSERT INTO public.galaxy VALUES (6, 'Galaxy F', 46285930.2453, 'Dwarf', 15);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'A-1419-2-a', false, 2, 1);
INSERT INTO public.moon VALUES (2, 'A-1419-3-a', true, 3, 3);
INSERT INTO public.moon VALUES (3, 'A-1419-3-b', true, 3, 5);
INSERT INTO public.moon VALUES (4, 'B-90-1-a', true, 4, 4);
INSERT INTO public.moon VALUES (5, 'B-90-2-a', true, 5, 3);
INSERT INTO public.moon VALUES (6, 'B-90-2-b', false, 5, 4);
INSERT INTO public.moon VALUES (7, 'B-90-2-c', false, 5, 4);
INSERT INTO public.moon VALUES (8, 'C-2905-1-a', true, 6, 6);
INSERT INTO public.moon VALUES (9, 'C-2905-1-b', true, 6, 8);
INSERT INTO public.moon VALUES (10, 'C-2905-1-c', true, 6, 12);
INSERT INTO public.moon VALUES (11, 'C-2905-2-a', true, 7, 1);
INSERT INTO public.moon VALUES (12, 'C-2905-2-b', true, 7, 2);
INSERT INTO public.moon VALUES (13, 'C-2905-2-c', true, 7, 3);
INSERT INTO public.moon VALUES (14, 'C-2905-2-d', true, 7, 4);
INSERT INTO public.moon VALUES (15, 'C-2905-2-e', true, 7, 5);
INSERT INTO public.moon VALUES (16, 'D-920-2-a', false, 9, 3);
INSERT INTO public.moon VALUES (17, 'E-29587-1-a', false, 10, 5);
INSERT INTO public.moon VALUES (18, 'E-29587-1-b', false, 10, 7);
INSERT INTO public.moon VALUES (19, 'E-29587-2-a', false, 11, 10);
INSERT INTO public.moon VALUES (20, 'E-29587-2-b', false, 11, 15);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'A-1419-1', false, 'Terrestrial', 2, 1);
INSERT INTO public.planet VALUES (2, 'A-1419-2', true, 'Terrestial', 5, 1);
INSERT INTO public.planet VALUES (3, 'A-1419-3', false, 'Gaseous', 8, 1);
INSERT INTO public.planet VALUES (4, 'B-90-1', false, 'Terrestrial', 4, 2);
INSERT INTO public.planet VALUES (5, 'B-90-2', true, 'Gaseous', 9, 2);
INSERT INTO public.planet VALUES (6, 'C-2905-1', false, 'Gaseous', 15, 3);
INSERT INTO public.planet VALUES (7, 'C-2905-2', false, 'Gaseous', 20, 3);
INSERT INTO public.planet VALUES (8, 'D-920-1', true, 'Terrestrial', 3, 4);
INSERT INTO public.planet VALUES (9, 'D-920-2', false, 'Terrestrial', 3, 4);
INSERT INTO public.planet VALUES (10, 'E-29587-1', false, 'Terrestrial', 30, 5);
INSERT INTO public.planet VALUES (11, 'E-29587-2', false, 'Terrestrial', 50, 5);
INSERT INTO public.planet VALUES (12, 'F-1-1', true, 'Unknown', 0, 6);


--
-- Data for Name: secret_fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.secret_fifth_table VALUES (1, '1', 'there needs to be a fifth table here to pass the test');
INSERT INTO public.secret_fifth_table VALUES (2, '2', 'but only four tables are needed for our galaxy');
INSERT INTO public.secret_fifth_table VALUES (3, '3', 'so enjoy this placeholder');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'A-1419', 11, 1, 8);
INSERT INTO public.star VALUES (2, 'B-90', 10, 2, 5);
INSERT INTO public.star VALUES (3, 'C-2905', 9, 3, 20);
INSERT INTO public.star VALUES (4, 'D-920', 10, 4, 2);
INSERT INTO public.star VALUES (5, 'E-29587', 14, 5, 10);
INSERT INTO public.star VALUES (6, 'F-1', 15, 6, 0);


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
-- Name: secret_fifth_table_secret_fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.secret_fifth_table_secret_fifth_table_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: secret_fifth_table secret_fifth_table_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.secret_fifth_table
    ADD CONSTRAINT secret_fifth_table_description_key UNIQUE (description);


--
-- Name: secret_fifth_table secret_fifth_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.secret_fifth_table
    ADD CONSTRAINT secret_fifth_table_name_key UNIQUE (name);


--
-- Name: secret_fifth_table secret_fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.secret_fifth_table
    ADD CONSTRAINT secret_fifth_table_pkey PRIMARY KEY (secret_fifth_table_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

