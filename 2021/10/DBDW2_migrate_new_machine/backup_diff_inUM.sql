

--Create a differential backup
--This command adds the "WITH DIFFERENTIAL" option.
BACKUP DATABASE bodb02 TO DISK = 'F:\Backup\newDBDW_migration\bodb02_20211007_migration_diff.BAK' WITH DIFFERENTIAL , COMPRESSION
BACKUP DATABASE MonDB TO DISK = 'F:\Backup\newDBDW_migration\MonDB_20211007_migration_diff.BAK' WITH DIFFERENTIAL , COMPRESSION

