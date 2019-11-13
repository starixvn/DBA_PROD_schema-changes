USE [master]
GO
--- change to full recovery model
ALTER DATABASE [bodb02] SET RECOVERY FULL WITH NO_WAIT
GO
--USE [master]
--GO
--ALTER DATABASE [bodb02] SET RECOVERY SIMPLE WITH NO_WAIT
--GO

-- have to do full backup first time after changing to full recovery model  
BACKUP DATABASE [bodb02] TO  DISK = N'E:\Backup\bodb02\bodb02_20191111_231800.bak' WITH  COMPRESSION
go


DECLARE @fromDateTime VARCHAR(200) 

SELECT TOP(1) @fromDateTime = CONVERT(VARCHAR(40), backup_finish_date, 112) + '_' + REPLACE(CONVERT(VARCHAR, backup_finish_date, 108),':','')
FROM MSDB.dbo.BackupSet WITH(NOLOCK)
WHERE database_name = 'bodb02' AND type = 'L'
ORDER BY backup_set_id DESC
IF @fromDateTime IS NULL OR @fromDateTime = ''
	SET @fromDateTime = '0000'

DECLARE @networkpath VARCHAR(100) = 'E:\Backup\bodb02\' 
		,@filetag VARCHAR(100)= @fromDateTime + '_to_' + CONVERT(VARCHAR(40),GETDATE(),112) + '_' + REPLACE(CONVERT(VARCHAR, GETDATE(), 108),':','')

SET @networkpath = @networkpath + 'DBTP.bodb02_TransactionLog_' + @filetag + '.trn.zip'
print @networkpath

BACKUP LOG [bodb02] TO DISK = @networkpath WITH COMPRESSION

------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
-- set up backup log job

SET NOCOUNT ON

DECLARE @SizeInMB DECIMAL(18,4)
SELECT TOP(1) @SizeInMB = compressed_backup_size/1048576.0
FROM MSDB.dbo.BackupSet WITH(NOLOCK)
WHERE database_name = 'bodb02' AND type = 'L'
ORDER BY backup_set_id DESC

IF @SizeInMB IS NULL
	SET @SizeInMB = 10

print @SizeInMB

IF @SizeInMB < 100 --100MB
BEGIN
	WAITFOR DELAY '00:05:00:000' --> 5 mins
	RETURN
END
ELSE IF @SizeInMB < 800
BEGIN
	WAITFOR DELAY '00:02:00:000' --> 2 mins
	RETURN
END
ELSE
BEGIN
	WAITFOR DELAY '00:01:00:000' --> 1 mins
	RETURN
END



