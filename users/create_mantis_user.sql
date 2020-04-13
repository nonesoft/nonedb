create role mantis_admin with superuser login noreplication password 'XmantisAdm2587';
ALTER ROLE mantis_admin SET search_path = "$user",mantis;
create schema mantis;
