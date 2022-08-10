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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    asteroids_type integer,
    has_life boolean,
    is_spherical boolean,
    asteroids_id integer NOT NULL
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    galaxy_type integer,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    moon_type integer,
    has_life boolean,
    is_spherical boolean,
    moon_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    planet_type integer,
    has_life boolean,
    is_spherical boolean,
    planet_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    star_type integer,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES ('ceres', 'cool', 4500, 0.0000461, 1, false, false, 1);
INSERT INTO public.asteroids VALUES ('Vesta', 'nice', 4500, 0.0000461, 1, false, false, 2);
INSERT INTO public.asteroids VALUES ('Pallas', 'cool', 4500, 0.0000461, 1, false, false, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 'gets its name from the are in the sky it appears', 1001, 2537000, 1, true, true, 1);
INSERT INTO public.galaxy VALUES ('Milky Way', 'the name describes the appearance from earth', 1361, 0, 2, true, true, 2);
INSERT INTO public.galaxy VALUES ('Antennae', 'is undergoing a galactic collision', 250, 45, 3, false, false, 3);
INSERT INTO public.galaxy VALUES ('Backward', 'moves backward', 1000, 111, 2, false, true, 4);
INSERT INTO public.galaxy VALUES ('Black eye', 'is isolated', 17, 24010000, 2, false, true, 5);
INSERT INTO public.galaxy VALUES ('Bodes', 'active nucleus', 1331, 12, 4, false, true, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon', 'from earth', 4530, 0.000000896, 1, false, true, 1, 3);
INSERT INTO public.moon VALUES ('Phobos', 'moon of mars', 4503, 0.00000823, 1, false, true, 2, 4);
INSERT INTO public.moon VALUES ('Deimos', 'moon of mars', 4503, 0.00000823, 1, false, true, 3, 4);
INSERT INTO public.moon VALUES ('Europa', 'moon jupiter', 4500, 0.0000641, 2, false, true, 4, 5);
INSERT INTO public.moon VALUES ('Io', 'moon Jupiter', 4500, 0.0000641, 1, false, true, 5, 5);
INSERT INTO public.moon VALUES ('Ganymedes', 'moon jupiter', 3503, 0.0000641, 1, false, true, 6, 5);
INSERT INTO public.moon VALUES ('Titania', 'moon of uranus', 4600, 0.0000641, 2, false, true, 7, 7);
INSERT INTO public.moon VALUES ('Oberon', 'moon uranus', 4600, 0.0000641, 1, false, true, 8, 7);
INSERT INTO public.moon VALUES ('Umbriel', 'moon uranus', 4500, 0.0000461, 1, false, true, 9, 7);
INSERT INTO public.moon VALUES ('Miranda', 'moon uranus', 4500, 0.0000461, 1, false, true, 10, 7);
INSERT INTO public.moon VALUES ('Triton', 'moon neptune', 4500, 0.0000461, 1, false, true, 11, 8);
INSERT INTO public.moon VALUES ('Hippocampus', 'moon neptune', 4500, 0.0000461, 1, false, true, 12, 8);
INSERT INTO public.moon VALUES ('Thalasa', 'moon neptune', 4500, 0.0000461, 1, false, true, 13, 8);
INSERT INTO public.moon VALUES ('Nereie', 'moon neptune', 4500, 0.0000461, 1, false, true, 14, 8);
INSERT INTO public.moon VALUES ('charon', 'moon pluto', 4500, 0.0000461, 1, false, true, 15, 9);
INSERT INTO public.moon VALUES ('Styx', 'moon pluto', 4500, 0.0000461, 1, false, true, 16, 9);
INSERT INTO public.moon VALUES ('Nyx', 'moon of pluto', 4500, 0.0000461, 1, false, true, 17, 9);
INSERT INTO public.moon VALUES ('Elara', 'moon jupiter', 4500, 0.0000461, 1, false, true, 18, 5);
INSERT INTO public.moon VALUES ('Carme', 'moon jupiter', 4500, 0.0000461, 1, false, true, 19, 5);
INSERT INTO public.moon VALUES ('Himalia', 'moon jupiter', 4500, 0.0000461, 1, false, true, 20, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 'smallest in solar system', 4503, 0.00000612, 1, false, true, 1, 1);
INSERT INTO public.planet VALUES ('Venus', 'god of love', 4503, 0.0024, 1, false, true, 2, 1);
INSERT INTO public.planet VALUES ('Earth', 'live here', 4503, 0, 1, true, true, 3, 1);
INSERT INTO public.planet VALUES ('Mars', 'had water', 4603, 0.00002, 1, false, true, 4, 1);
INSERT INTO public.planet VALUES ('Jupiter', 'big', 4603, 0.000158, 2, false, true, 5, 1);
INSERT INTO public.planet VALUES ('Saturn', 'has a ring', 4503, 0.00015, 2, false, true, 6, 1);
INSERT INTO public.planet VALUES ('Uranus', 'is blue', 4503, 0.000327, 3, false, true, 7, 1);
INSERT INTO public.planet VALUES ('Neptune', 'blue', 4503, 0.000476, 3, false, true, 8, 1);
INSERT INTO public.planet VALUES ('Pluto', 'small planet', 4600, 0.00062, 4, false, true, 9, 1);
INSERT INTO public.planet VALUES ('HD131399Ab', 'planet', 17, 320, 2, false, true, 10, 2);
INSERT INTO public.planet VALUES ('Wolf', 'close with', 2000, 12, 5, false, true, 11, 2);
INSERT INTO public.planet VALUES ('Lalane', 'planet', 5000, 8307, 5, false, true, 12, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 'center of solar system', 460, 0.000016092, 1, false, true, 1, 2);
INSERT INTO public.star VALUES ('Antares', 'one of brightest in sky', 1101000, 554, 2, false, true, 2, 2);
INSERT INTO public.star VALUES ('Uy scuti', 'brightest long tought', 10, 9500, 2, false, true, 3, 2);
INSERT INTO public.star VALUES ('alpha andromadae', 'brightest in galaxy', 60, 200, 2, false, true, 4, 1);
INSERT INTO public.star VALUES ('delta anromeda', 'visible to eye', 3200000, 106, 2, false, true, 5, 1);
INSERT INTO public.star VALUES ('Kw sagitari', 'very big', 100, 1100, 2, false, true, 6, 2);


--
-- Name: asteroids asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


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

