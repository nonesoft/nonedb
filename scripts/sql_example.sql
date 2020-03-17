--Pridani primarniho klice na sloupec tabulky
--alter table nonedb.addresses add primary key (address_id);

--Cizi klic na sloupec
--ALTER TABLE distributors ADD CONSTRAINT distfk FOREIGN KEY (address) REFERENCES addresses (address) MATCH FULL;

--Pridani komentare na tabulku, sloupce
--comment on table nonedb.log_action is 'Logovaci tabulka pro vyvoj db';