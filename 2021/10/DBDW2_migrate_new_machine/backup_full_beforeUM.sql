
-- create full backup 
BACKUP DATABASE bodb02 TO  DISK = N'F:\Backup\newDBDW_migration\bodb02_20211007_migration_full.bak' WITH COMPRESSION
BACKUP DATABASE MonDB TO  DISK = N'F:\Backup\newDBDW_migration\MonDB_20211007_migration_full.bak' WITH COMPRESSION