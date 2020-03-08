--drop table log.storage_logs;

create table log.storage_logs(
    row_id          serial,
    priority        varchar(6),
    os_user         varchar(10),
    log_date        timestamp,
    log_thread_name varchar(200),
    log_message     varchar(2000)
);