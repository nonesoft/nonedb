-- ******************************************************************
--
-- Title       : create_table_log.sql
-- Description : Table create script for log actions.
-- System      : Komercni
-- Date        : 13.10.2010
-- Author      : Michal Nadvornik
--
-- $Revision: /main/2 $
-- $Log:  $ 


--drop table ndb_l1_owner.action_logs;

--create table log for logging action
create table ndb_l1_owner.action_logs
(
   rec_id			serial primary key not null,
   user_id		varchar(30) not null,
   action_id		varchar(30) not null,
   desc_action		text not null,
   created_when	timestamp,
   created_by		varchar(30),
   updated_when	timestamp,
   updated_by		varchar(30),
   arch			varchar(1) default null
);

comment on table ndb_l1_owner.action_logs is 'Tabulka pro logovani akci.';
comment on column ndb_l1_owner.action_logs.rec_id is 'ID zaznamu - generovano';
comment on column ndb_l1_owner.action_logs.user_id is 'ID uzivatele - doplneno triggerem';
comment on column ndb_l1_owner.action_logs.action_id is 'ID akce (INFO, DEBUG, atd.)';
comment on column ndb_l1_owner.action_logs.desc_action is 'Text co se delo a chceme logovat';
comment on column ndb_l1_owner.action_logs.created_by is 'Vytvoreno kym - doplneno triggerem';
comment on column ndb_l1_owner.action_logs.created_when is 'Vytvoreno kdy - doplneno triggerem';
comment on column ndb_l1_owner.action_logs.updated_when is 'Upraveno kdy - doplneno triggerem';
comment on column ndb_l1_owner.action_logs.updated_by is 'Upraveno kym - doplneno triggerem';
comment on column ndb_l1_owner.action_logs.arch is 'Archivacni flag - default null';
