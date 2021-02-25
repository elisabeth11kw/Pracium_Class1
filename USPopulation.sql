

DROP TABLE "Renew"."USPopulation";

CREATE TABLE "Renew"."USPopulation"
(
State character varying COLLATE pg_catalog."default",
State_abv character varying COLLATE pg_catalog."default",
Pop_cnt	NUMERIC (10,2)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "Renew"."USPopulation"
    OWNER to postgres;
	
	COPY "Renew"."USPopulation" from 'c:/USPopulation1.csv' delimiter ',' csv header;
	
