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
    galaxy_id character varying(40) NOT NULL,
    planet boolean,
    cluster character varying(40) NOT NULL,
    star numeric,
    name character varying(40)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(40),
    moon_id character varying(40) NOT NULL,
    planet_id integer,
    type text NOT NULL,
    size character varying
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    moon boolean,
    type character varying(30) NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(40),
    star_id integer NOT NULL,
    galaxy_id character varying(40),
    universe integer,
    type text NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    planet text NOT NULL,
    moon character varying(40),
    star integer,
    no_of_galaxies integer,
    name character varying(40)
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('1', NULL, 'no', NULL, 'Andromade Galaxy');
INSERT INTO public.galaxy VALUES ('2', NULL, 'no', NULL, 'Cygnus A');
INSERT INTO public.galaxy VALUES ('3', NULL, 'no', NULL, 'Milky Way');
INSERT INTO public.galaxy VALUES ('4', NULL, 'yes', NULL, 'Coma Cluster');
INSERT INTO public.galaxy VALUES ('5', NULL, 'yes', NULL, 'Virgo Cluster');
INSERT INTO public.galaxy VALUES ('6', NULL, 'yes', NULL, 'M81 Group');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Copernicus', '1', 3, 'fifth largest', 'large');
INSERT INTO public.moon VALUES ('Phobos', '2', 4, 'hit by impact crater', 'small');
INSERT INTO public.moon VALUES ('Deimos', '3', 4, 'hit by crater', 'small');
INSERT INTO public.moon VALUES ('Adrastea', '4', 5, 'hit by crater', '4th largest');
INSERT INTO public.moon VALUES ('Callisto', '5', 5, 'long dead world', '2nd largest');
INSERT INTO public.moon VALUES ('Europa', '6', 5, 'ocean of salty water', 'quarter of earth');
INSERT INTO public.moon VALUES ('Io', '7', 5, 'most active volcanos', 'same as earths moon');
INSERT INTO public.moon VALUES ('Ganymede', '8', 5, 'only moon with magnetic field', 'largest');
INSERT INTO public.moon VALUES ('Autonoe', '9', 5, 'Pasiphae group', 'small');
INSERT INTO public.moon VALUES ('Amalthea', '10', 5, 'Galilean moon', '4th largest of Jupiter');
INSERT INTO public.moon VALUES ('Enceladus', '12', 6, 'sprays ocean into space', 'as wide as Arizona');
INSERT INTO public.moon VALUES ('Titan', '13', 6, 'Only moon with clouds', 'bigger than Earths moon');
INSERT INTO public.moon VALUES ('Aegaeon', '14', 6, 'moonlet', 'Smallest moon of Saturn');
INSERT INTO public.moon VALUES ('Dione', '15', 6, 'heavily craterd terrain', '562km radius');
INSERT INTO public.moon VALUES ('Hyperion', '11', 6, 'largest nonspherical', 'small');
INSERT INTO public.moon VALUES ('Ariel', '16', 7, 'Youngest of all moons of Uranus', 'one of 5 largest');
INSERT INTO public.moon VALUES ('Oberon', '17', 7, 'Half ice and half rock', '2nd largest of Uranus');
INSERT INTO public.moon VALUES ('Umbriel', '18', 7, 'Darkest moon of Uranus', 'One of 5 largest');
INSERT INTO public.moon VALUES ('Charon', '20', 9, 'First known moon discovered of Pluto', 'Largest of Pluto');
INSERT INTO public.moon VALUES ('Triton', '19', 8, 'Only large moon to orbite in retrograde', 'Largest of Neptune');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (true, 'planet', 'Earth', 3, NULL);
INSERT INTO public.planet VALUES (true, 'planet', 'Mars', 4, NULL);
INSERT INTO public.planet VALUES (true, 'planet', 'Jupiter', 5, NULL);
INSERT INTO public.planet VALUES (true, 'planet', 'Saturn', 6, NULL);
INSERT INTO public.planet VALUES (true, 'planet', 'Uranus', 7, NULL);
INSERT INTO public.planet VALUES (true, 'planet', 'Neptune', 8, NULL);
INSERT INTO public.planet VALUES (false, 'planet', 'Venus', 2, NULL);
INSERT INTO public.planet VALUES (false, 'planet', 'Mercury', 1, NULL);
INSERT INTO public.planet VALUES (true, 'dwarf planet', 'Pluto', 9, NULL);
INSERT INTO public.planet VALUES (false, 'dwarf planet', 'Ceres', 10, NULL);
INSERT INTO public.planet VALUES (false, 'dwarf planet', 'Makemake', 11, NULL);
INSERT INTO public.planet VALUES (false, 'dwarf planet', 'Haumea', 12, NULL);
INSERT INTO public.planet VALUES (false, 'dwarf planet', 'Eris', 13, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, NULL, 1, 'G');
INSERT INTO public.star VALUES ('Alpheratz', 2, '1', 1, 'binary');
INSERT INTO public.star VALUES ('Mirach', 3, '1', 1, 'giant star');
INSERT INTO public.star VALUES ('Deneb', 4, '2', 1, 'forms the Summer triangle');
INSERT INTO public.star VALUES ('Sadr', 5, '2', 1, 'supergiant');
INSERT INTO public.star VALUES ('VY Canis Majoris', 6, '3', 1, 'largest');
INSERT INTO public.star VALUES ('RW Cephei', 7, '3', 1, '3rd largest');


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'Earth', 'moon', 1, NULL, 'milky way');
INSERT INTO public.universe VALUES (2, 'Jupiter', 'Europa', 1, NULL, 'milky way');
INSERT INTO public.universe VALUES (3, 'Jupiter', 'Callisto', 1, NULL, 'milky way');


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name UNIQUE (name);


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
-- Name: star type_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT type_unique UNIQUE (type);


--
-- Name: galaxy unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_id UNIQUE (galaxy_id);


--
-- Name: universe universe_id__unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_id__unique UNIQUE (universe_id);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

