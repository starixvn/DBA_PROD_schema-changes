/*
	Task: Server Migrate - [MonDB] Update correct DBID for full backup job run
	Run on MonDB of affected server
*/

USE MonDB
GO
--Update setting
SELECT * INTO #__temp FROM dbo.DB_Backup_Setting
DELETE FROM dbo.DB_Backup_Setting

INSERT INTO MONDB.dbo.DB_Backup_Setting (database_id, dbname)
SELECT a.database_id,a.name
FROM sys.databases a 
	LEFT JOIN MONDB.dbo.DB_Backup_Setting b ON a.database_id = b.database_id
WHERE b.database_id IS NULL

UPDATE s
SET backup_request = t.backup_request
FROM dbo.DB_Backup_Setting s
	INNER JOIN #__temp t ON s.dbname = t.dbname

--check result
SELECT * FROM dbo.DB_Backup_Setting WITH(NOLOCK) ORDER BY backup_request DESC

--start job
-- starts a job named Weekly Sales Data Backup.
USE msdb ;
GO
EXEC dbo.sp_start_job N'DBA_Full_Backup';
GO
