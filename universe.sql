--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(35) NOT NULL,
    age_mill_years integer,
    distance_from_earth integer,
    number_of_planets numeric,
    description text,
    has_photo boolean
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
    name character varying(35) NOT NULL,
    age_mill_years integer,
    distance_from_earth integer,
    size_mill_km2 numeric(5,2),
    description text,
    has_photo boolean,
    planet_id integer
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
    name character varying(35) NOT NULL,
    age_mill_years integer,
    distance_from_earth integer,
    size_mill_km2 numeric(5,2),
    description text,
    has_photo boolean,
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
    name character varying(35) NOT NULL,
    age_mill_years integer,
    distance_from_earth integer,
    size_mill_km2 numeric(5,2),
    description text,
    has_photo boolean,
    galaxy_id integer
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
-- Name: the_fifth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.the_fifth (
    the_fifth_id smallint NOT NULL,
    name character varying(15) NOT NULL,
    bool boolean
);


ALTER TABLE public.the_fifth OWNER TO freecodecamp;

--
-- Name: the_fifth_test_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.the_fifth_test_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.the_fifth_test_id_seq OWNER TO freecodecamp;

--
-- Name: the_fifth_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.the_fifth_test_id_seq OWNED BY public.the_fifth.the_fifth_id;


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
-- Name: the_fifth the_fifth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.the_fifth ALTER COLUMN the_fifth_id SET DEFAULT nextval('public.the_fifth_test_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1361, 15, 10000, NULL, true);
INSERT INTO public.galaxy VALUES (2, 'Sagitarius', 1000, 70000, 6, NULL, true);
INSERT INTO public.galaxy VALUES (3, 'Can Mayor', 800, 200, 100, NULL, true);
INSERT INTO public.galaxy VALUES (4, 'Magallanes', 1130, 1205, 10, NULL, true);
INSERT INTO public.galaxy VALUES (5, 'Bootes', 1500, 1605, 1526, NULL, true);
INSERT INTO public.galaxy VALUES (6, 'Minor Dwarf', 14000, 200000, 2, NULL, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 1, 94, 20.00, 'Eath', true, 4);
INSERT INTO public.moon VALUES (2, 'Phobos', 1, 1877, 8.00, 'Mars', true, 12);
INSERT INTO public.moon VALUES (3, 'Deimos', 1877, 12, 3.20, 'Mars', false, 12);
INSERT INTO public.moon VALUES (4, 'Yo o', 1610, 10, 2.10, 'Jupiter', false, 11);
INSERT INTO public.moon VALUES (5, 'Europa', 1610, 10, 3.20, 'Jupiter', false, 11);
INSERT INTO public.moon VALUES (6, 'Mimas', 1786, 11, 1.60, 'Saturn', true, 10);
INSERT INTO public.moon VALUES (7, 'Helene', 1980, 11, 0.80, 'Saturn', true, 10);
INSERT INTO public.moon VALUES (8, 'Ymir', 2000, 10, 0.60, 'Saturn', false, 9);
INSERT INTO public.moon VALUES (9, 'Hati', 2004, 10, 1.10, 'Saturn', false, 8);
INSERT INTO public.moon VALUES (10, 'Ariel', 1851, 11, 2.30, 'Uranus', true, 7);
INSERT INTO public.moon VALUES (11, 'Ophelia', 1986, 11, 0.90, 'Uranus', true, 7);
INSERT INTO public.moon VALUES (12, 'Sycorax', 1997, 11, 0.80, 'Uranus', true, 6);
INSERT INTO public.moon VALUES (13, 'Francisco', 2001, 12, 1.30, 'Uranus', false, 6);
INSERT INTO public.moon VALUES (14, 'Perdita', 1986, 12, 1.10, 'Uranus', false, 5);
INSERT INTO public.moon VALUES (15, 'Cupid', 2003, 12, 2.30, 'Uranus', true, 5);
INSERT INTO public.moon VALUES (16, 'Triad', 1989, 13, 2.10, 'Neptune', true, 12);
INSERT INTO public.moon VALUES (17, 'Halimede', 2002, 13, 5.70, 'Neptune', true, 11);
INSERT INTO public.moon VALUES (18, 'Psamathe', 2003, 14, 1.90, 'Neptune', false, 10);
INSERT INTO public.moon VALUES (19, 'Charon', 1978, 15, 0.60, 'Pluto', false, 5);
INSERT INTO public.moon VALUES (20, 'Hydra', 2005, 15, 0.10, 'Pluto', true, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'Alpha Centaury', 5200, 4, 1.53, 'G2V', true, 2);
INSERT INTO public.planet VALUES (5, 'Epsilon Eridani', 500, 11, 1.14, 'K2 V', false, 3);
INSERT INTO public.planet VALUES (6, 'TOI 5795 b', 0, 527, 32.93, 'Newly discovered', true, 6);
INSERT INTO public.planet VALUES (7, 'Wolf 359', 200, 8, 0.13, 'M6.5 Ve', true, 4);
INSERT INTO public.planet VALUES (8, 'Bernard Star', 10000, 6, 0.19, 'M4 V', true, 8);
INSERT INTO public.planet VALUES (9, 'Ross 176 b', 0, 152, 2.33, 'Newly discovered', false, 7);
INSERT INTO public.planet VALUES (10, 'Lalande 21185', 8, 8, 63.94, 'M2+V', false, 3);
INSERT INTO public.planet VALUES (11, 'Epsilon Indi A b', 0, 12, 479.00, 'Gas Epsilon', false, 5);
INSERT INTO public.planet VALUES (12, 'KOI134 c', 0, 3747, 351.90, 'Newly discovered', false, 8);
INSERT INTO public.planet VALUES (13, 'YZ Ceti d', 12, 0, 50.20, '', true, 2);
INSERT INTO public.planet VALUES (14, 'Lyutens Star', 1, 12, 45.25, 'Star', false, 6);
INSERT INTO public.planet VALUES (15, 'Gliese 876', 0, 15, 39.15, 'Newly discovered', true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sirio', 20, 90, 1.20, NULL, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 800, 723, 15.31, 'M1-M2', true, 1);
INSERT INTO public.star VALUES (4, 'Vega', 455, 25, 2.96, 'A0Va', true, 1);
INSERT INTO public.star VALUES (5, 'Canopus', 25, 309, 11.13, 'A9 II', false, 3);
INSERT INTO public.star VALUES (6, 'Antares', 15, 554, 18.09, 'M1.5lab-lb', false, 5);
INSERT INTO public.star VALUES (7, 'Aldebaran', 6400, 66, 1.61, 'K5+III B', true, 4);
INSERT INTO public.star VALUES (8, 'Capela Aa', 0, 44, 3.56, 'G3III', true, 6);


--
-- Data for Name: the_fifth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.the_fifth VALUES (1, 'one1', NULL);
INSERT INTO public.the_fifth VALUES (2, 'one1', NULL);
INSERT INTO public.the_fifth VALUES (3, 'twoo2', NULL);
INSERT INTO public.the_fifth VALUES (4, 'three3', NULL);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: the_fifth_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.the_fifth_test_id_seq', 4, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT id UNIQUE (moon_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


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
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


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
-- Name: the_fifth the_fifth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.the_fifth
    ADD CONSTRAINT the_fifth_pkey PRIMARY KEY (the_fifth_id);


--
-- Name: the_fifth the_fifth_test_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.the_fifth
    ADD CONSTRAINT the_fifth_test_id_key UNIQUE (the_fifth_id);


--
-- Name: moon moon_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

