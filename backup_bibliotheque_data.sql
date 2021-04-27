--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 13.2

-- Started on 2021-04-28 00:04:24

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

--
-- TOC entry 2850 (class 0 OID 27396)
-- Dependencies: 203
-- Data for Name: livre; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.livre (id_livre, titre, auteur, resume) VALUES (1, 'Les Aventures d''Alice au pays des merveilles ', 'Charles Lutwidge Dodgson ', 'Alice s''ennuie auprès de sa sœur qui lit un livre (« sans images, ni dialogues ») tandis qu''elle ne fait rien. « À quoi bon un livre sans images, ni dialogues ? », se demande Alice.');
INSERT INTO public.livre (id_livre, titre, auteur, resume) VALUES (2, 'L''Assommoir', 'Emile Zola ', 'Gervaise Macquart, le personnage principal, une Provençale originaire de Plassans, boiteuse mais plutôt jolie, a suivi son amant, Auguste Lantier, à Paris, avec leurs deux enfants, Claude et Étienne Lantier. Très vite, Lantier, paresseux, infidèle et ne supportant pas de vivre dans la misère, quitte Gervaise et ses enfants pour s''enfuir avec Adèle.');
INSERT INTO public.livre (id_livre, titre, auteur, resume) VALUES (3, 'Le Malade imaginaire', 'Molière', 'La pièce tourne autour d''Argan, le « malade imaginaire », éponyme. Il est veuf et a épousé en secondes noces Béline, qui simule des soins attentionnés, mais n''attend en réalité que la mort de son mari pour hériter.
');
INSERT INTO public.livre (id_livre, titre, auteur, resume) VALUES (4, 'Kingdom Hearts l''intégrale', 'Tetsuya Nomura', 'Sora et ses amis vivent paisiblement sur une île paradisiaque. L’irruption des Sans-Cœur, êtres énigmatiques tout droit sortis des Ténèbres, met fin à leur quiétude et plonge Sora dans une épopée rocambolesque.');
INSERT INTO public.livre (id_livre, titre, auteur, resume) VALUES (5, 'Harry Potter à l''école des sorciers', 'J. K. Rowling', 'L''histoire, se situant dans les années 19903, raconte la jeunesse de Harry Potter, sorcier orphelin élevé sans affection ni considération par la seule famille vivante qui lui reste : son oncle et sa tante moldus (sans pouvoirs magiques).
');
INSERT INTO public.livre (id_livre, titre, auteur, resume) VALUES (6, 'Le seigneur des anneaux', 'J. R. R. Tolkien', 'Après un prologue décrivant les Hobbits et leurs mœurs, le passé de la Terre du Milieu et un rapide résumé des aventures de Bilbon Sacquet, le livre I s''ouvre sur le cent onzième anniversaire de ce dernier, soixante années après les événements décrits dans Le Hobbit.');


--
-- TOC entry 2852 (class 0 OID 27407)
-- Dependencies: 205
-- Data for Name: exemplaire; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.exemplaire (id_exemplaire, id_livre) VALUES (1, 1);
INSERT INTO public.exemplaire (id_exemplaire, id_livre) VALUES (2, 2);
INSERT INTO public.exemplaire (id_exemplaire, id_livre) VALUES (3, 3);
INSERT INTO public.exemplaire (id_exemplaire, id_livre) VALUES (4, 4);
INSERT INTO public.exemplaire (id_exemplaire, id_livre) VALUES (5, 5);
INSERT INTO public.exemplaire (id_exemplaire, id_livre) VALUES (6, 2);
INSERT INTO public.exemplaire (id_exemplaire, id_livre) VALUES (7, 1);


--
-- TOC entry 2854 (class 0 OID 27415)
-- Dependencies: 207
-- Data for Name: utilisateur; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.utilisateur (id_utilisateur, prenom, nom, email, mot_de_passe) VALUES (1, 'Alexandra ', 'Alsen', 'alexandra.alsen.dykler@gmail.com', '$2a$10$UONMttPIVIp4WwMizjGKU.G8dwYAe4n49QvITPkpc5U/hFAFF8Yvu');
INSERT INTO public.utilisateur (id_utilisateur, prenom, nom, email, mot_de_passe) VALUES (2, 'Tony ', 'Stark', 'I.am.Ironman@gmail.com', '$2a$10$h9zyY3JfY5bd.Iaqi5NBROy7i/N5Vxk4/Cx/.VEeFOPFA2.Pg4iDK');
INSERT INTO public.utilisateur (id_utilisateur, prenom, nom, email, mot_de_passe) VALUES (3, 'Anakin', 'Skywalker', 'LukeIamyourfather@hotmail.com', '$2a$10$Z4.Z5gcM1nFaMH3SB7RgVeGeGXqaX/muHP4bGp0w/UG3jyz8doqPO');
INSERT INTO public.utilisateur (id_utilisateur, prenom, nom, email, mot_de_passe) VALUES (4, 'Ichigo', 'Momomya', 'neko@gmail.com', '$2a$10$IdaOnAsrfTvFtbzIFZSNg.XCaPYfoucdj6VwTl9GdKGadgdO3nvuK');
INSERT INTO public.utilisateur (id_utilisateur, prenom, nom, email, mot_de_passe) VALUES (5, 'Harry', 'Kingsman', 'hitman@yahoo.com', '$2a$10$nghcOb5UR6V4U8IjfvzVjOjIlmCVvsKR.Tiz1383E5rDEG6iiBCGm');
INSERT INTO public.utilisateur (id_utilisateur, prenom, nom, email, mot_de_passe) VALUES (6, 'test', 'test', 'test@test.com', '$2a$10$uUDRmXCV3qsNzackL6Bnmexd8W8Ini0z.Jf.bKoOn32Ltph56tUxW');
INSERT INTO public.utilisateur (id_utilisateur, prenom, nom, email, mot_de_passe) VALUES (7, 'Alexandra', 'Dykler', 'alexandra.dykler@gmail.com', '$2a$10$YDOePRscHPBnwQfwRAoFw.zfJzKIDm0ySoi64KFB3skiUF.s0q0/O');


--
-- TOC entry 2856 (class 0 OID 27426)
-- Dependencies: 209
-- Data for Name: pret; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pret (id_pret, id_utilisateur, id_exemplaire, date_reservation, date_de_fin, statut) VALUES (7, 3, 4, '2021-03-04', '2021-03-25', 'terminé');
INSERT INTO public.pret (id_pret, id_utilisateur, id_exemplaire, date_reservation, date_de_fin, statut) VALUES (8, 1, 1, '2021-03-23', '2021-06-18', 'terminé');
INSERT INTO public.pret (id_pret, id_utilisateur, id_exemplaire, date_reservation, date_de_fin, statut) VALUES (5, 1, 2, '2021-02-16', '2021-04-09', 'prolongé');
INSERT INTO public.pret (id_pret, id_utilisateur, id_exemplaire, date_reservation, date_de_fin, statut) VALUES (3, 2, 5, '2021-03-16', '2021-05-06', 'en cours');
INSERT INTO public.pret (id_pret, id_utilisateur, id_exemplaire, date_reservation, date_de_fin, statut) VALUES (6, 5, 3, '2021-01-18', '2021-05-08', 'en cours');
INSERT INTO public.pret (id_pret, id_utilisateur, id_exemplaire, date_reservation, date_de_fin, statut) VALUES (4, 4, 1, '2021-02-23', '2022-01-18', 'prolongé');


--
-- TOC entry 2862 (class 0 OID 0)
-- Dependencies: 204
-- Name: exemplaire_id_exemplaire_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exemplaire_id_exemplaire_seq', 6, true);


--
-- TOC entry 2863 (class 0 OID 0)
-- Dependencies: 202
-- Name: livre_id_livre_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.livre_id_livre_seq', 5, true);


--
-- TOC entry 2864 (class 0 OID 0)
-- Dependencies: 208
-- Name: pret_id_pret_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pret_id_pret_seq', 7, true);


--
-- TOC entry 2865 (class 0 OID 0)
-- Dependencies: 206
-- Name: utilisateur_id_utilisateur_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.utilisateur_id_utilisateur_seq', 7, true);


-- Completed on 2021-04-28 00:04:25

--
-- PostgreSQL database dump complete
--

