/*
	Task: Migrate DBAFF to DB052/DB053
		+ Enable routine backup
	Run on DB052
*/
USE MonDB
GO

INSERT INTO MONDB.dbo.DB_Backup_Setting (database_id, dbname)
SELECT a.database_id,a.name
FROM sys.databases a 
	LEFT JOIN MONDB.dbo.DB_Backup_Setting b ON a.database_id = b.database_id
WHERE b.database_id IS NULL

--enable backup setting
UPDATE MONDB.dbo.DB_Backup_Setting
SET backup_request = 1
WHERE dbname IN ('Affiliate_Aoncash', 'Affiliate_itcbet', 'Affiliate_MacauBet', 'Affiliate_Athena000', 'Affiliate_Spondemo')


--backup database
CREATE TABLE #databaseBackupList(rowId INT IDENTITY(1,1), databaseName VARCHAR(200))
INSERT INTO #databaseBackupList(databaseName)
SELECT name
FROM master.sys.databases(nolock) d 
	INNER JOIN MonDB.dbo.DB_Backup_Setting(nolock) s ON d.name = s.dbname
WHERE s.backup_request = 1 AND d.state = 0 AND d.is_in_standby = 0
	AND s.dbname IN ('Affiliate_Aoncash', 'Affiliate_itcbet', 'Affiliate_MacauBet', 'Affiliate_Athena000', 'Affiliate_Spondemo')

DECLARE @rowId INT, @serverName VARCHAR(128), @databaseName VARCHAR(128)
	, @date VARCHAR(50), @fileName VARCHAR(255)
SELECT @rowId = 1, @serverName = @@SERVERNAME
	, @date = CONVERT(VARCHAR(10), GETDATE(), 112)

WHILE EXISTS (SELECT TOP 1 1 FROM #databaseBackupList WHERE RowId = @RowId)
BEGIN

	SELECT @databaseName = databaseName
	FROM #databaseBackupList WHERE RowId = @RowId

	SET @RowId = @RowId + 1

	SET @fileName = 'G:\BACKUP' + '\' + @serverName + '.' + @databaseName + '_' + @Date + '.bak' 
	BACKUP DATABASE @databaseName TO DISK = @fileName  WITH FORMAT, INIT, COMPRESSION

END

DROP TABLE #databaseBackupList
