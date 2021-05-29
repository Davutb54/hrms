-- This script was generated by a beta version of the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;

CREATE TABLE public.candidates
(
    user_id integer NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL,
    identity_number character varying NOT NULL,
    year_of_birth integer NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE public.employers
(
    user_id integer NOT NULL,
    company_name character varying NOT NULL,
    website character varying NOT NULL,
    telephone character varying NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE public.job_positions
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE public.staffs
(
    user_id integer NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE public.users
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    email character varying NOT NULL,
    password character varying NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE public.candidates
    ADD FOREIGN KEY (user_id)
    REFERENCES public.users (id)
    NOT VALID;


ALTER TABLE public.employers
    ADD FOREIGN KEY (user_id)
    REFERENCES public.users (id)
    NOT VALID;


ALTER TABLE public.staffs
    ADD FOREIGN KEY (user_id)
    REFERENCES public.users (id)
    NOT VALID;

END;
