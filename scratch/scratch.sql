CREATE table helloworld (id int, title char(10));

select * from helloworld;

COPY neweggs FROM '~/org/read/sedawk/awk/data/neweggs.csv' DELIMITER ',' CSV HEADER;

\dt;

\d+ hoteldata;

select count(*) from hoteldata;

select hotel, address from hoteldata limit 5;

drop table tdm_utf8;

\l+ tninja;

\d+

\d+ hoteldata_utf8

CREATE SCHEMA cd;

CREATE TABLE cd.members
  (
	memid integer NOT NULL, 
	surname character varying(200) NOT NULL, 
	firstname character varying(200) NOT NULL, 
	address character varying(300) NOT NULL, 
	zipcode integer NOT NULL, 
	telephone character varying(20) NOT NULL, 
	recommendedby INTEGER,
	joindate timestamp not null,
	CONSTRAINT members_pk PRIMARY KEY (memid),
	CONSTRAINT fk_members_recommendedby FOREIGN KEY (recommendedby)
	REFERENCES cd.members(memid) ON DELETE SET NULL
	);

\d+ cd.members

\l+

\connect sandbox

\dt;

select count(*) from tdm_utf8;

select t0.abc, t0.def
from table1 AS t0
where t0.abc = x and t0.def = y

CREATE TABLE cd.members
  (
	memid integer NOT NULL, 
	surname character varying(200) NOT NULL, 
	firstname character varying(200) NOT NULL, 
	address character varying(300) NOT NULL, 
	zipcode integer NOT NULL, 
	telephone character varying(20) NOT NULL, 
	recommendedby integer,
	joindate timestamp not null,
	CONSTRAINT members_pk PRIMARY KEY (memid),
	CONSTRAINT fk_members_recommendedby FOREIGN KEY (recommendedby)
	REFERENCES cd.members(memid) ON DELETE SET NULL
	);

-- Thanks lord, we are able to connect to postgresql

-- next, import table

\d+ import

SELECT * FROM import.redfine;

\dn

SET search_path TO import; 

\d+;

-- DROP TABLE _94027_1;
-- DROP TABLE redfin;

SELECT COUNT(*) FROM redfin;

\d redfin;

SELECT sale_type, city, address, favorite, price FROM redfin LIMIT 10;

\d+

\c sandbox

\l+

SELECT 1, 'a'
