
CREATE SEQUENCE public.livre_id_livre_seq;

CREATE TABLE public.Livre (
                id_livre INTEGER NOT NULL DEFAULT nextval('public.livre_id_livre_seq'),
                titre VARCHAR(300) NOT NULL,
                auteur VARCHAR(100) NOT NULL,
                resume VARCHAR(500),
                CONSTRAINT livre_pk PRIMARY KEY (id_livre)
);


ALTER SEQUENCE public.livre_id_livre_seq OWNED BY public.Livre.id_livre;

CREATE SEQUENCE public.exemplaire_id_exemplaire_seq;

CREATE TABLE public.Exemplaire (
                id_exemplaire INTEGER NOT NULL DEFAULT nextval('public.exemplaire_id_exemplaire_seq'),
                id_livre INTEGER NOT NULL,
                CONSTRAINT exemplaire_pk PRIMARY KEY (id_exemplaire)
);


ALTER SEQUENCE public.exemplaire_id_exemplaire_seq OWNED BY public.Exemplaire.id_exemplaire;

CREATE SEQUENCE public.utilisateur_id_utilisateur_seq;

CREATE TABLE public.Utilisateur (
                id_utilisateur INTEGER NOT NULL DEFAULT nextval('public.utilisateur_id_utilisateur_seq'),
                prenom VARCHAR(50) NOT NULL,
                nom VARCHAR(100) NOT NULL,
                email VARCHAR(200) NOT NULL,
                mot_de_passe VARCHAR(200) NOT NULL,
                CONSTRAINT utilisateur_pk PRIMARY KEY (id_utilisateur)
);


ALTER SEQUENCE public.utilisateur_id_utilisateur_seq OWNED BY public.Utilisateur.id_utilisateur;

CREATE SEQUENCE public.pret_id_pret_seq;

CREATE TABLE public.Pret (
                id_pret INTEGER NOT NULL DEFAULT nextval('public.pret_id_pret_seq'),
                id_utilisateur INTEGER NOT NULL,
                id_exemplaire INTEGER NOT NULL,
                date_reservation DATE NOT NULL,
                date_de_fin DATE NOT NULL,
                statut VARCHAR NOT NULL,
                CONSTRAINT pret_pk PRIMARY KEY (id_pret)
);


ALTER SEQUENCE public.pret_id_pret_seq OWNED BY public.Pret.id_pret;

ALTER TABLE public.Exemplaire ADD CONSTRAINT livre_exemplaire_fk
FOREIGN KEY (id_livre)
REFERENCES public.Livre (id_livre)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Pret ADD CONSTRAINT exemplaire_pret_fk
FOREIGN KEY (id_exemplaire)
REFERENCES public.Exemplaire (id_exemplaire)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Pret ADD CONSTRAINT utilisateur_pret_fk
FOREIGN KEY (id_utilisateur)
REFERENCES public.Utilisateur (id_utilisateur)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
