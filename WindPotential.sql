-- Table: "Renew"."Wind_Potential"

DROP TABLE "Renew"."Wind_Potential";

CREATE TABLE "Renew"."Wind_Potential"
(
	state character varying COLLATE pg_catalog."default",
	st character varying COLLATE pg_catalog."default",
	Ann_50MeterCapMW NUMERIC,
Ann_80Meter30GenGWH NUMERIC,
Ann_80Meter30CapMW NUMERIC,
Ann_80Meter35GenGWH NUMERIC,
Ann_80Meter35CapMW NUMERIC,
Ann_80Meter40GenGWH NUMERIC,
Ann_80Meter40CapMW NUMERIC,
Ann_100Meter30GenGWH NUMERIC,
Ann_100Meter30CapMW NUMERIC,
Ann_100Meter35GenGWH NUMERIC,
Ann_100Meter35CapMW NUMERIC,
Ann_100Meter40GenGWH NUMERIC,
Ann_100Meter40CapMW NUMERIC,
Ann_Offshore_PotGenGWH NUMERIC,
Ann_OffshorePotCapMW NUMERIC,
Ann_Gen_GWH NUMERIC
)

WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "Renew"."Wind_Potential"
    OWNER to postgres;
	
	
COPY "Renew"."Wind_Potential" from 'c:/WindPotential.csv' delimiter ',' csv header;