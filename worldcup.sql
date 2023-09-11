--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (107, 2018, 'Final', 4, 2, 321, 322);
INSERT INTO public.games VALUES (108, 2018, 'Third Place', 2, 0, 323, 324);
INSERT INTO public.games VALUES (109, 2018, 'Semi-Final', 2, 1, 322, 324);
INSERT INTO public.games VALUES (110, 2018, 'Semi-Final', 1, 0, 321, 323);
INSERT INTO public.games VALUES (111, 2018, 'Quarter-Final', 3, 2, 322, 325);
INSERT INTO public.games VALUES (112, 2018, 'Quarter-Final', 2, 0, 324, 326);
INSERT INTO public.games VALUES (113, 2018, 'Quarter-Final', 2, 1, 323, 327);
INSERT INTO public.games VALUES (114, 2018, 'Quarter-Final', 2, 0, 321, 328);
INSERT INTO public.games VALUES (115, 2018, 'Eighth-Final', 2, 1, 324, 329);
INSERT INTO public.games VALUES (116, 2018, 'Eighth-Final', 1, 0, 326, 330);
INSERT INTO public.games VALUES (117, 2018, 'Eighth-Final', 3, 2, 323, 331);
INSERT INTO public.games VALUES (118, 2018, 'Eighth-Final', 2, 0, 327, 332);
INSERT INTO public.games VALUES (119, 2018, 'Eighth-Final', 2, 1, 322, 333);
INSERT INTO public.games VALUES (120, 2018, 'Eighth-Final', 2, 1, 325, 334);
INSERT INTO public.games VALUES (121, 2018, 'Eighth-Final', 2, 1, 328, 335);
INSERT INTO public.games VALUES (122, 2018, 'Eighth-Final', 4, 3, 321, 336);
INSERT INTO public.games VALUES (123, 2014, 'Final', 1, 0, 337, 336);
INSERT INTO public.games VALUES (124, 2014, 'Third Place', 3, 0, 338, 327);
INSERT INTO public.games VALUES (125, 2014, 'Semi-Final', 1, 0, 336, 338);
INSERT INTO public.games VALUES (126, 2014, 'Semi-Final', 7, 1, 337, 327);
INSERT INTO public.games VALUES (127, 2014, 'Quarter-Final', 1, 0, 338, 339);
INSERT INTO public.games VALUES (128, 2014, 'Quarter-Final', 1, 0, 336, 323);
INSERT INTO public.games VALUES (129, 2014, 'Quarter-Final', 2, 1, 327, 329);
INSERT INTO public.games VALUES (130, 2014, 'Quarter-Final', 1, 0, 337, 321);
INSERT INTO public.games VALUES (131, 2014, 'Eighth-Final', 2, 1, 327, 340);
INSERT INTO public.games VALUES (132, 2014, 'Eighth-Final', 2, 0, 329, 328);
INSERT INTO public.games VALUES (133, 2014, 'Eighth-Final', 2, 0, 321, 341);
INSERT INTO public.games VALUES (134, 2014, 'Eighth-Final', 2, 1, 337, 342);
INSERT INTO public.games VALUES (135, 2014, 'Eighth-Final', 2, 1, 338, 332);
INSERT INTO public.games VALUES (136, 2014, 'Eighth-Final', 2, 1, 339, 343);
INSERT INTO public.games VALUES (137, 2014, 'Eighth-Final', 1, 0, 336, 330);
INSERT INTO public.games VALUES (138, 2014, 'Eighth-Final', 2, 1, 323, 344);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (321, 'France');
INSERT INTO public.teams VALUES (322, 'Croatia');
INSERT INTO public.teams VALUES (323, 'Belgium');
INSERT INTO public.teams VALUES (324, 'England');
INSERT INTO public.teams VALUES (325, 'Russia');
INSERT INTO public.teams VALUES (326, 'Sweden');
INSERT INTO public.teams VALUES (327, 'Brazil');
INSERT INTO public.teams VALUES (328, 'Uruguay');
INSERT INTO public.teams VALUES (329, 'Colombia');
INSERT INTO public.teams VALUES (330, 'Switzerland');
INSERT INTO public.teams VALUES (331, 'Japan');
INSERT INTO public.teams VALUES (332, 'Mexico');
INSERT INTO public.teams VALUES (333, 'Denmark');
INSERT INTO public.teams VALUES (334, 'Spain');
INSERT INTO public.teams VALUES (335, 'Portugal');
INSERT INTO public.teams VALUES (336, 'Argentina');
INSERT INTO public.teams VALUES (337, 'Germany');
INSERT INTO public.teams VALUES (338, 'Netherlands');
INSERT INTO public.teams VALUES (339, 'Costa Rica');
INSERT INTO public.teams VALUES (340, 'Chile');
INSERT INTO public.teams VALUES (341, 'Nigeria');
INSERT INTO public.teams VALUES (342, 'Algeria');
INSERT INTO public.teams VALUES (343, 'Greece');
INSERT INTO public.teams VALUES (344, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 138, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 344, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

