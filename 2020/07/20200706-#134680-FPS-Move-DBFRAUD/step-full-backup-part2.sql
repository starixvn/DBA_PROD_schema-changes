/*
    Task: Move DBFRAUD to new Server
		+ Full backup
    Server: DBFRAUD

	Full backup:
		FPS_ADMIN
		FPS_LOG
		FPS_EVI
		IPDB
		FPS_MiddleService
*/

SET NOCOUNT ON;

DECLARE @BackupPath VARCHAR(128) = 'T:\FPSDBBackup\__Tmp'
CREATE TABLE #databaseBackupList(RowId INT IDENTITY(1,1), databaseName VARCHAR(200))

;WITH cte_Database AS (
	SELECT NAME
	FROM (
	VALUES ('FPS_ADMIN'),
		('FPS_LOG'),
		('FPS_EVI'),
		('IPDB'),
		('FPS_MiddleService')
	) as t (name)
)
INSERT INTO #databaseBackupList(databaseName)
SELECT d.name
FROM master.sys.databases d WITH (NOLOCK)
INNER JOIN cte_Database c on c.name = d.name

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
