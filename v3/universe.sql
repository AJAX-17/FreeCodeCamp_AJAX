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
    name character varying(30) NOT NULL,
    type character varying(30) NOT NULL,
    size numeric NOT NULL,
    age integer NOT NULL,
    galaxy_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    distance numeric NOT NULL,
    size numeric NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    distance numeric NOT NULL,
    has_life boolean NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL
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
-- Name: ranking_moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ranking_moon (
    ranking_moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance character varying(50) NOT NULL
);


ALTER TABLE public.ranking_moon OWNER TO freecodecamp;

--
-- Name: ranking_moon_ranking_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ranking_moon_ranking_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ranking_moon_ranking_moon_id_seq OWNER TO freecodecamp;

--
-- Name: ranking_moon_ranking_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ranking_moon_ranking_moon_id_seq OWNED BY public.ranking_moon.ranking_moon_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    brightness integer NOT NULL,
    type text NOT NULL,
    is_alive boolean NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: ranking_moon ranking_moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ranking_moon ALTER COLUMN ranking_moon_id SET DEFAULT nextval('public.ranking_moon_ranking_moon_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 'A', 7, 3, 1);
INSERT INTO public.galaxy VALUES ('Wave', 'A', 2, 11, 2);
INSERT INTO public.galaxy VALUES ('Bestal', 'B', 9, 30, 3);
INSERT INTO public.galaxy VALUES ('nuker', 'C', 5, 1, 4);
INSERT INTO public.galaxy VALUES ('Unser', 'C', 8, 22, 5);
INSERT INTO public.galaxy VALUES ('Juno', 'B', 10, 19, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Nugo', 230, 3, 12, 1);
INSERT INTO public.moon VALUES ('fie', 450, 93, 2, 2);
INSERT INTO public.moon VALUES ('rego', 230, 3, 3, 3);
INSERT INTO public.moon VALUES ('fdf', 230, 3, 5, 4);
INSERT INTO public.moon VALUES ('DFK', 230, 3, 12, 5);
INSERT INTO public.moon VALUES ('FDIN', 230, 3, 12, 6);
INSERT INTO public.moon VALUES ('NDO', 230, 3, 12, 7);
INSERT INTO public.moon VALUES ('NUS87', 230, 3, 12, 8);
INSERT INTO public.moon VALUES ('NIOA90', 230, 3, 8, 9);
INSERT INTO public.moon VALUES ('FEIN', 230, 3, 13, 10);
INSERT INTO public.moon VALUES ('FDIONFE', 230, 3, 12, 11);
INSERT INTO public.moon VALUES ('LOE09', 230, 3, 12, 12);
INSERT INTO public.moon VALUES ('NU36', 230, 3, 11, 13);
INSERT INTO public.moon VALUES ('KORE93', 230, 3, 16, 14);
INSERT INTO public.moon VALUES ('DIO', 230, 3, 12, 15);
INSERT INTO public.moon VALUES ('EFNMIOU', 230, 3, 12, 16);
INSERT INTO public.moon VALUES ('DFUIBF', 230, 3, 12, 17);
INSERT INTO public.moon VALUES ('GDUIOSBUE', 230, 3, 12, 18);
INSERT INTO public.moon VALUES ('GDSIUBG', 230, 3, 17, 19);
INSERT INTO public.moon VALUES ('FIUHE', 230, 3, 12, 20);
INSERT INTO public.moon VALUES ('Alec', 230, 3, 12, 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 0, true, 1, 1);
INSERT INTO public.planet VALUES ('Juno', 4.3, false, 3, 2);
INSERT INTO public.planet VALUES ('Pluto', 2, false, 1, 3);
INSERT INTO public.planet VALUES ('Runo', 4, true, 7, 4);
INSERT INTO public.planet VALUES ('Jupter', 254, false, 13, 5);
INSERT INTO public.planet VALUES ('Neptune', 534, false, 9, 6);
INSERT INTO public.planet VALUES ('Apple', 439, true, 10, 7);
INSERT INTO public.planet VALUES ('Lono', 23, false, 6, 8);
INSERT INTO public.planet VALUES ('nuap', 7390, true, 13, 9);
INSERT INTO public.planet VALUES ('Jaku', 348, true, 2, 10);
INSERT INTO public.planet VALUES ('sunae', 4.3, false, 3, 11);
INSERT INTO public.planet VALUES ('husdf', 2, false, 1, 12);
INSERT INTO public.planet VALUES ('fadf', 4, true, 7, 13);
INSERT INTO public.planet VALUES ('Jdsie', 254, false, 13, 14);
INSERT INTO public.planet VALUES ('dfie', 24, true, 9, 15);
INSERT INTO public.planet VALUES ('dfouhdfh', 439, true, 10, 16);
INSERT INTO public.planet VALUES ('dfoidf1', 23, false, 6, 17);


--
-- Data for Name: ranking_moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ranking_moon VALUES (1, 'Apollo', '3m');
INSERT INTO public.ranking_moon VALUES (2, 'Ono', '4m');
INSERT INTO public.ranking_moon VALUES (3, 'Char', '8m');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 10, 'A', true, 1, 1);
INSERT INTO public.star VALUES ('Ney', 10, 'B', true, 2, 1);
INSERT INTO public.star VALUES ('Hey', 11, 'A', false, 3, 2);
INSERT INTO public.star VALUES ('Cey', 45, 'B', true, 4, 3);
INSERT INTO public.star VALUES ('Bay', 10, 'D', false, 5, 4);
INSERT INTO public.star VALUES ('Uey', 34, 'D', false, 6, 5);
INSERT INTO public.star VALUES ('Yey', 10, 'B', true, 7, 4);
INSERT INTO public.star VALUES ('Aey', 11, 'A', false, 8, 2);
INSERT INTO public.star VALUES ('dey', 45, 'A', false, 9, 3);
INSERT INTO public.star VALUES ('Fay', 10, 'D', false, 10, 4);
INSERT INTO public.star VALUES ('Jey', 34, 'D', false, 11, 5);
INSERT INTO public.star VALUES ('key', 34, 'D', false, 12, 6);
INSERT INTO public.star VALUES ('zey', 34, 'D', false, 13, 1);
INSERT INTO public.star VALUES ('xey', 34, 'D', false, 14, 2);
INSERT INTO public.star VALUES ('vey', 34, 'D', false, 15, 3);
INSERT INTO public.star VALUES ('bey', 34, 'C', true, 16, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: ranking_moon_ranking_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ranking_moon_ranking_moon_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 16, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: ranking_moon ranking_moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ranking_moon
    ADD CONSTRAINT ranking_moon_pkey PRIMARY KEY (ranking_moon_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon uq_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_moon UNIQUE (name);


--
-- Name: galaxy uq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_name UNIQUE (name);


--
-- Name: planet uq_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_planet UNIQUE (name);


--
-- Name: ranking_moon uq_ranking_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ranking_moon
    ADD CONSTRAINT uq_ranking_moon_name UNIQUE (name);


--
-- Name: star uq_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_star UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

