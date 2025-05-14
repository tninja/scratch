CREATE table helloworld (id int, title char(10));

select * from helloworld;

COPY neweggs FROM '~/org/read/sedawk/awk/data/neweggs.csv' DELIMITER ',' CSV HEADER;

\dt;

\d+ hoteldata;

select count(*) from hoteldata;

select hotel, address from hoteldata limit 5;

drop table tdm_utf8;

\l+ tninja;

\d+;

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

\d+ import.p262*

\dt import.*

\dn

\c sandbox

\l+

SELECT 1, 'a';

\conninfo

SELECT * FROM import.p1527;

-- CREATE TABLE test(a INTEGER NOT NULL);

\d+ import.p1132_actions;

select
    sum(pg_column_size(user_id)) as total_size,
    sum(pg_column_size(user_id)) * 100.0 / pg_relation_size('import.p1132_actions') as percentage
from import.p1132_actions;

SELECT * FROM import.p1132_actions;

with recursive r(a, b, i) as (
  select 0::bigint, 1::bigint, 0::bigint
  union all
  select b, a + b, i+1 from r -- where b < 4000
)
select * from r LIMIT 100;

\d+;

-- Check IMAP

-- https://multicorn.org/foreign-data-wrappers/#idimap-foreign-data-wrapper

CREATE EXTENSION IF NOT EXISTS multicorn;

CREATE SERVER imap_srv foreign data wrapper multicorn options (
    wrapper 'multicorn.imapfdw.ImapFdw'
);

-- https://multicorn.org/

-- DROP FOREIGN TABLE if EXISTS tninja_gmail;

-- create foreign table tninja_gmail (
--     "Message-ID" character varying,
--     "From" character varying,
--     "Subject" character varying,
--     "payload" character varying,
--     "flags" character varying[],
--     "To" character varying) server imap_srv options (
--         host 'imap.gmail.com',
--         port '993',
--         payload_column 'payload',
--         flags_column 'flags',
--         ssl 'True',
--         login 'tninja',
--         password 'Yp841225'
-- );


-- SELECT * FROM tninja_gmail LIMIT 3;

SELECT 1;

DROP FOREIGN TABLE if EXISTS tninja1980_hotmail;

create foreign table tninja1980_hotmail (
    "Message-ID" character varying,
    "From" character varying,
    "Subject" character varying,
    "payload" character varying,
    "flags" character varying[],
    "To" character varying) server imap_srv options (
        host 'imap-mail.outlook.com',
        port '993',
        payload_column 'payload',
        flags_column 'flags',
        ssl 'True',
        login 'tninja1980@hotmail.com',
        password 'tk5611450',
        imap_server_charset 'US-ASCII'
);

SELECT COUNT(1) FROM tninja1980_hotmail LIMIT 1;

SELECT COUNT(1) FROM embedding;

SELECT * FROM embedding;
