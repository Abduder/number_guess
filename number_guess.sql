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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(100),
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('Abdu', 2, 54);
INSERT INTO public.users VALUES ('ABERRAHMAN DERKAOUI 1996', 0, 1000);
INSERT INTO public.users VALUES ('ABDERRAHMAN DERKAOUI 1996', 0, 1000);
INSERT INTO public.users VALUES ('user_1664811152154', 0, 1000);
INSERT INTO public.users VALUES ('user_1664811152153', 0, 1000);
INSERT INTO public.users VALUES ('user_1664873266714', 0, 1000);
INSERT INTO public.users VALUES ('user_1664873266713', 0, 1000);
INSERT INTO public.users VALUES ('ABDERRAHMAN DERKAOUI', 3, 10);
INSERT INTO public.users VALUES ('user_1664875141540', 2, 141);
INSERT INTO public.users VALUES ('user_1664876519820', 2, 692);
INSERT INTO public.users VALUES ('user_1664875141541', 5, 162);
INSERT INTO public.users VALUES ('user_1664876519821', 5, 139);
INSERT INTO public.users VALUES ('user_1664875440314', 2, 200);
INSERT INTO public.users VALUES ('user_1664875440315', 5, 63);
INSERT INTO public.users VALUES ('user_1664875521628', 2, 73);
INSERT INTO public.users VALUES ('user_1664875521629', 5, 361);
INSERT INTO public.users VALUES ('user_1664875752623', 2, 58);
INSERT INTO public.users VALUES ('user_1664875752624', 5, 103);
INSERT INTO public.users VALUES ('user_1664876293088', 2, 2);
INSERT INTO public.users VALUES ('user_1664876293089', 5, 415);


--
-- PostgreSQL database dump complete
--

