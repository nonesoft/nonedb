
--drop role noneadmin;
create role noneadmin with superuser createdb createrole login replication connection limit 1 password 'Xdev#2587';
ALTER ROLE noneadmin SET search_path = "$user";
create schema noneadmin;


--drop role noneuser;
create role noneuser with nosuperuser nocreatedb nocreaterole login noreplication password 'Xuser974';
ALTER ROLE noneuser SET search_path = "$user";
create schema noneuser;


--drop role nonedev;
create role nonedev with nosuperuser createdb createrole login replication password 'Xdev974';
ALTER ROLE nonedev SET search_path = "$user";
create schema nonedev;



select * from pg_roles;
select * from pg_database;
select * from pg_tablespace;

create tablespace ndb_1 location 'E:\600-SERVER\DB\ndb_1';

create database NDB_DEV owner nonedev tablespace ndb_1;

create database NDB_TST owner noneadmin tablespace ndb_1;

create database NDB_PROD owner noneadmin tablespace ndb_1;

REVOKE CREATE ON SCHEMA public FROM PUBLIC;

show search_path;









