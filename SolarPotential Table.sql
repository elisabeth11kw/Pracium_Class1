

 DROP TABLE "Renew"."SolarPotential";

CREATE TABLE "Renew"."SolarPotential"
(
State character varying COLLATE pg_catalog."default",
State_abv character varying COLLATE pg_catalog."default",
solar_cnt	NUMERIC (10,2)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "Renew"."SolarPotential"
    OWNER to postgres;
	
COPY "Renew"."SolarPotential" from 'c:/SolarPotential1.csv' delimiter ',' csv header;