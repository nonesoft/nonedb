DROP TRIGGER IF EXISTS trg_ins_all_folders;
DROP TRIGGER IF EXISTS trg_upd_all_folders;

CREATE TRIGGER trg_ins_all_folders AFTER INSERT ON all_folders 
  BEGIN
    UPDATE all_folders SET created_when = strftime('%d-%m-%Y %H:%M:%S', 'now') WHERE folderid = new.folderid;
  END;

CREATE TRIGGER trg_upd_all_folders UPDATE ON all_folders 
  BEGIN
    UPDATE all_folders SET updated_when = strftime('%d-%m-%Y %H:%M:%S', 'now') WHERE old.folderid = new.folderid;
  END;