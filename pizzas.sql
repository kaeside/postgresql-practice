--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.5.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: batches; Type: TABLE; Schema: public; Owner: Sunshine
--

CREATE TABLE batches (
    id integer NOT NULL,
    pizza_id integer,
    quantity integer NOT NULL
);


ALTER TABLE batches OWNER TO "Sunshine";

--
-- Name: batches_id_seq; Type: SEQUENCE; Schema: public; Owner: Sunshine
--

CREATE SEQUENCE batches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE batches_id_seq OWNER TO "Sunshine";

--
-- Name: batches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Sunshine
--

ALTER SEQUENCE batches_id_seq OWNED BY batches.id;


--
-- Name: pizzas; Type: TABLE; Schema: public; Owner: Sunshine
--

CREATE TABLE pizzas (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE pizzas OWNER TO "Sunshine";

--
-- Name: pizzas_id_seq; Type: SEQUENCE; Schema: public; Owner: Sunshine
--

CREATE SEQUENCE pizzas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pizzas_id_seq OWNER TO "Sunshine";

--
-- Name: pizzas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Sunshine
--

ALTER SEQUENCE pizzas_id_seq OWNED BY pizzas.id;


--
-- Name: pizzas_toppings; Type: TABLE; Schema: public; Owner: Sunshine
--

CREATE TABLE pizzas_toppings (
    pizza_id integer NOT NULL,
    topping_id integer NOT NULL
);


ALTER TABLE pizzas_toppings OWNER TO "Sunshine";

--
-- Name: recipes; Type: TABLE; Schema: public; Owner: Sunshine
--

CREATE TABLE recipes (
    id integer NOT NULL,
    name text NOT NULL,
    pizza_id integer
);


ALTER TABLE recipes OWNER TO "Sunshine";

--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: Sunshine
--

CREATE SEQUENCE recipes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE recipes_id_seq OWNER TO "Sunshine";

--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Sunshine
--

ALTER SEQUENCE recipes_id_seq OWNED BY recipes.id;


--
-- Name: recipes_tags; Type: TABLE; Schema: public; Owner: Sunshine
--

CREATE TABLE recipes_tags (
    recipe_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE recipes_tags OWNER TO "Sunshine";

--
-- Name: steps; Type: TABLE; Schema: public; Owner: Sunshine
--

CREATE TABLE steps (
    id integer NOT NULL,
    description text NOT NULL,
    recipe_id integer
);


ALTER TABLE steps OWNER TO "Sunshine";

--
-- Name: steps_id_seq; Type: SEQUENCE; Schema: public; Owner: Sunshine
--

CREATE SEQUENCE steps_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE steps_id_seq OWNER TO "Sunshine";

--
-- Name: steps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Sunshine
--

ALTER SEQUENCE steps_id_seq OWNED BY steps.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: Sunshine
--

CREATE TABLE tags (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE tags OWNER TO "Sunshine";

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: Sunshine
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tags_id_seq OWNER TO "Sunshine";

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Sunshine
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: toppings; Type: TABLE; Schema: public; Owner: Sunshine
--

CREATE TABLE toppings (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE toppings OWNER TO "Sunshine";

--
-- Name: toppings_id_seq; Type: SEQUENCE; Schema: public; Owner: Sunshine
--

CREATE SEQUENCE toppings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE toppings_id_seq OWNER TO "Sunshine";

--
-- Name: toppings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Sunshine
--

ALTER SEQUENCE toppings_id_seq OWNED BY toppings.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY batches ALTER COLUMN id SET DEFAULT nextval('batches_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY pizzas ALTER COLUMN id SET DEFAULT nextval('pizzas_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY recipes ALTER COLUMN id SET DEFAULT nextval('recipes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY steps ALTER COLUMN id SET DEFAULT nextval('steps_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY toppings ALTER COLUMN id SET DEFAULT nextval('toppings_id_seq'::regclass);


--
-- Data for Name: batches; Type: TABLE DATA; Schema: public; Owner: Sunshine
--

COPY batches (id, pizza_id, quantity) FROM stdin;
1	4	200
2	5	200
\.


--
-- Name: batches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Sunshine
--

SELECT pg_catalog.setval('batches_id_seq', 2, true);


--
-- Data for Name: pizzas; Type: TABLE DATA; Schema: public; Owner: Sunshine
--

COPY pizzas (id, name) FROM stdin;
1	Cheese Pizza
2	Supreme Pizza
3	Beef Pizza
4	Chocolate Pizza
5	Hawaiian Pizza
6	Sushi Pizza
7	Sushi Pizza
\.


--
-- Name: pizzas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Sunshine
--

SELECT pg_catalog.setval('pizzas_id_seq', 7, true);


--
-- Data for Name: pizzas_toppings; Type: TABLE DATA; Schema: public; Owner: Sunshine
--

COPY pizzas_toppings (pizza_id, topping_id) FROM stdin;
3	2
3	5
5	5
\.


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: Sunshine
--

COPY recipes (id, name, pizza_id) FROM stdin;
1	Kaesides Cheese Pizza	1
\.


--
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Sunshine
--

SELECT pg_catalog.setval('recipes_id_seq', 1, true);


--
-- Data for Name: recipes_tags; Type: TABLE DATA; Schema: public; Owner: Sunshine
--

COPY recipes_tags (recipe_id, tag_id) FROM stdin;
1	1
\.


--
-- Data for Name: steps; Type: TABLE DATA; Schema: public; Owner: Sunshine
--

COPY steps (id, description, recipe_id) FROM stdin;
1	put some cheese on a pizza	1
\.


--
-- Name: steps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Sunshine
--

SELECT pg_catalog.setval('steps_id_seq', 1, true);


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: Sunshine
--

COPY tags (id, name) FROM stdin;
1	cheesey
\.


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Sunshine
--

SELECT pg_catalog.setval('tags_id_seq', 1, true);


--
-- Data for Name: toppings; Type: TABLE DATA; Schema: public; Owner: Sunshine
--

COPY toppings (id, name) FROM stdin;
1	Cheese
2	Bacon
3	Chocolate
4	Anchovies
5	Pesto
6	Pepperoni
\.


--
-- Name: toppings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Sunshine
--

SELECT pg_catalog.setval('toppings_id_seq', 6, true);


--
-- Name: batches_pkey; Type: CONSTRAINT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY batches
    ADD CONSTRAINT batches_pkey PRIMARY KEY (id);


--
-- Name: pizzas_pkey; Type: CONSTRAINT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY pizzas
    ADD CONSTRAINT pizzas_pkey PRIMARY KEY (id);


--
-- Name: pizzas_toppings_pkey; Type: CONSTRAINT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY pizzas_toppings
    ADD CONSTRAINT pizzas_toppings_pkey PRIMARY KEY (pizza_id, topping_id);


--
-- Name: recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- Name: recipes_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY recipes_tags
    ADD CONSTRAINT recipes_tags_pkey PRIMARY KEY (recipe_id, tag_id);


--
-- Name: steps_pkey; Type: CONSTRAINT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY steps
    ADD CONSTRAINT steps_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: toppings_pkey; Type: CONSTRAINT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY toppings
    ADD CONSTRAINT toppings_pkey PRIMARY KEY (id);


--
-- Name: batches_pizza_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY batches
    ADD CONSTRAINT batches_pizza_id_fkey FOREIGN KEY (pizza_id) REFERENCES pizzas(id);


--
-- Name: pizzas_toppings_pizza_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY pizzas_toppings
    ADD CONSTRAINT pizzas_toppings_pizza_id_fkey FOREIGN KEY (pizza_id) REFERENCES pizzas(id);


--
-- Name: pizzas_toppings_topping_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY pizzas_toppings
    ADD CONSTRAINT pizzas_toppings_topping_id_fkey FOREIGN KEY (topping_id) REFERENCES toppings(id);


--
-- Name: recipes_pizza_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY recipes
    ADD CONSTRAINT recipes_pizza_id_fkey FOREIGN KEY (pizza_id) REFERENCES pizzas(id);


--
-- Name: recipes_tags_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY recipes_tags
    ADD CONSTRAINT recipes_tags_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES recipes(id);


--
-- Name: recipes_tags_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY recipes_tags
    ADD CONSTRAINT recipes_tags_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES tags(id);


--
-- Name: steps_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Sunshine
--

ALTER TABLE ONLY steps
    ADD CONSTRAINT steps_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES recipes(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: Sunshine
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM "Sunshine";
GRANT ALL ON SCHEMA public TO "Sunshine";
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

