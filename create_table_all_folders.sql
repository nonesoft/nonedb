-- drop table all_folders;
-- Folders are top node of each lists which contains records
create table all_folders
(
    folderid    integer not null
    , folder_name 		text
    , ownerid     		text
    , groupid     		text
    , last_update_when  text
    , last_update_by    text
    , created_when    	text
    , created_by      	text
    , updated_when    	text
    , updated_by      	text
    , arch            	text
    , constraint pk_folderid primary key (folderid)
);


create table folder_records
(
	fld_recid		integer not null
	, folderid		integer not null
	, recordid		integer not null
	, record_table_name	text
    , created_when  text
    , created_by    text
    , updated_when  text
    , updated_by    text
    , arch          text
    , constraint pk_folder_records primary key (fld_rec_id)	
);


create table records_cache
(
	cacheid			integer not null
	, folderid		integer not null
	, recordid		integer not null
	, record_desc	text
	, record_cnt	integer
	, record_date	text
	, record_state	integer
	, record_table_name	text
	, created_when  text
    , created_by    text
    , updated_when  text
    , updated_by    text
    , arch          text
	, constraint pk_cacheid primary key (cacheid)	
);


create table all_records
(
	recordid		integer not null
	, record_text	text
	, record_date	text
	, record_state	integer
    , created_when  text
    , created_by    text
    , updated_when  text
    , updated_by    text
    , arch          text
	, constraint pk_recordid primary key (recordid)	
)

create table c_app_constants
(
	itemid		integer not null
	, item_name		text
	, item_desc		text
	, item_group	text
	, item_num_code	integer
	, item_text_code	text
	, item_valid_from	text
	, item_valid_to		text
	, item_order		integer
    , created_when  text
    , created_by    text
    , updated_when  text
    , updated_by    text
    , arch          text	
	, constraint pk_itemid primary key (itemid)	
);



