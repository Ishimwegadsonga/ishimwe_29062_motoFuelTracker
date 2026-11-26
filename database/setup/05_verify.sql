SELECT name, open_mode FROM v$pdbs WHERE name = 'ISHIMWE_29062_GAD_MOTOFUEL_DB';
SELECT username, default_tablespace, temporary_tablespace FROM dba_users WHERE username = 'GAD_ADMIN';
SELECT tablespace_name, bytes/1024/1024 AS size_mb, autoextensible, maxbytes/1024/1024 AS max_size_mb FROM dba_data_files WHERE tablespace_name IN ('MOTOFUEL_DATA', 'MOTOFUEL_IDX');
SELECT tablespace_name, bytes/1024/1024 AS size_mb, autoextensible, maxbytes/1024/1024 AS max_size_mb FROM dba_temp_files WHERE tablespace_name = 'MOTOFUEL_TEMP';
ARCHIVE LOG LIST;