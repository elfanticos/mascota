-- Database: mascota

-- DROP DATABASE mascota;

CREATE DATABASE mascota
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Peru.1252'
    LC_CTYPE = 'Spanish_Peru.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- Table: public.animal

-- DROP TABLE public.animal;

CREATE TABLE public.animal
(
    id_aminal integer NOT NULL,
    desc_animal character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT pk_animal__01 PRIMARY KEY (id_aminal)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

COMMENT ON COLUMN public.animal.id_aminal
    IS 'id del animal';

COMMENT ON COLUMN public.animal.desc_animal
    IS 'Nombre del animal';

-- Table: public.alimento

-- DROP TABLE public.alimento;

CREATE TABLE public.alimento
(
    _id_animal integer NOT NULL,
    correlativo integer NOT NULL,
    desc_alimento character varying(120) COLLATE pg_catalog."default",
    CONSTRAINT pk_alimento__01 PRIMARY KEY (_id_animal, correlativo)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

-- Table: public.combo_tipo

-- DROP TABLE public.combo_tipo;

CREATE TABLE public.combo_tipo
(
    grupo integer NOT NULL,
    valor character varying(1) COLLATE pg_catalog."default" NOT NULL,
    desc_combo character varying(120) COLLATE pg_catalog."default",
    orden integer,
    CONSTRAINT pk_combo_tipo__01 PRIMARY KEY (grupo, valor)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

-- Table: public.edades

-- DROP TABLE public.edades;

CREATE TABLE public.edades
(
    _id_animal integer NOT NULL,
    correlativo integer NOT NULL,
    desc_edad character varying(120) COLLATE pg_catalog."default",
    CONSTRAINT pk_edades__01 PRIMARY KEY (_id_animal, correlativo)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

-- Table: public.persona

-- DROP TABLE public.persona;

CREATE TABLE public.persona
(
    id_persona integer NOT NULL DEFAULT nextval('persona_id_persona_seq'::regclass),
    nom_persona character varying(60) COLLATE pg_catalog."default",
    ape_pate_pers character varying(60) COLLATE pg_catalog."default",
    ape_mate_pers character varying(60) COLLATE pg_catalog."default",
    foto_persona character varying(120) COLLATE pg_catalog."default",
    fec_naci date,
    tipo_documento character varying(1) COLLATE pg_catalog."default",
    nro_documento character varying(20) COLLATE pg_catalog."default",
    correo_pers character varying(120) COLLATE pg_catalog."default",
    celular character varying(15) COLLATE pg_catalog."default",
    telefono character varying(15) COLLATE pg_catalog."default",
    usuario character varying(50) COLLATE pg_catalog."default",
    clave bytea,
    CONSTRAINT pk_persona__01 PRIMARY KEY (id_persona)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.raza

-- DROP TABLE public.raza;

CREATE TABLE public.raza
(
    _id_animal integer NOT NULL,
    correlativo integer NOT NULL,
    desc_raza character varying(120) COLLATE pg_catalog."default",
    CONSTRAINT pk_raza__01 PRIMARY KEY (_id_animal, correlativo)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

-- Table: public.size

-- DROP TABLE public.size;

CREATE TABLE public.size
(
    _id_animal integer NOT NULL,
    correlativo integer NOT NULL,
    desc_size character varying(120) COLLATE pg_catalog."default",
    CONSTRAINT pk_size__01 PRIMARY KEY (_id_animal, correlativo)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;