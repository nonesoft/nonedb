insert into nonedb.log_action
values(nextval('nonedb.log_action_rec_id_seq'),'DEBUG','Testovaci radek - trigger','TRIGGER');

commit;

update nonedb.log_action
set action_type = 'INFO'
where rec_id = 3;