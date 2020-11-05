/*
    Task: Task: Move some dbs from fps_01 to fps_02
		+ Full backup
    Server: FPS_DB01\MSSQLSERVERWEB

	Databases:
		FPS_SUB_FUN88
		FPS_SUB_M88
		FPS_SUB_BBIN
		FPS_SUB_12BET
		FPS_SUB_Newhonbet
		FPS_SUB_ALPHA
		FPS_SUB_W88
*/

SET NOCOUNT ON;

DECLARE @BackupPath VARCHAR(128) = 'T:\FPSDBBackup\__Tmp'
CREATE TABLE #databaseBackupList(RowId INT IDENTITY(1,1), databaseName VARCHAR(200))

INSERT INTO #databaseBackupList(databaseName)
SELECT name
FROM master.sys.databases d WITH (NOLOCK)
WHERE name IN ('FPS_SUB_FUN88', 'FPS_SUB_M88', 'FPS_SUB_BBIN', 'FPS_SUB_12BET', 'FPS_SUB_Newhonbet', 'FPS_SUB_ALPHA', 'FPS_SUB_W88')

DECLARE @RowId INT, @serverName VARCHAR(128), @__databaseName VARCHAR(128)
	, @date VARCHAR(50), @fileName VARCHAR(255)
SELECT @RowId = 1, @serverName = @@SERVERNAME
	, @date = REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(16), GETDATE(), 121), '-', ''), ' ', ''), ':', '')

WHILE EXISTS (SELECT TOP 1 1 FROM #databaseBackupList WHERE RowId = @RowId)
BEGIN

	SELECT @__databaseName = databaseName
	FROM #databaseBackupList WHERE RowId = @RowId

	SET @RowId = @RowId + 1

	SET @fileName = @BackupPath + '\' + @serverName + '.' + @__databaseName + '_' + @Date + '.bak'

	BACKUP DATABASE @__databaseName TO DISK = @fileName  WITH FORMAT, INIT

	RAISERROR(@fileName, 0, 0) WITH NOWAIT

END

DROP TABLE #databaseBackupList
