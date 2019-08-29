/*
	Task: Migrate DBAFF to DB052/DB053
		+ Enable routine backup
	Run on DB052
*/

--==>> add more step to DBA_Reorg_Index job
use master
GO

DECLARE @CMDs TABLE (rn int PRIMARY KEY IDENTITY(1,1), cmd nvarchar(1000))			

INSERT INTO @CMDs (cmd)
SELECT 'exec ' + name+'.dbo.DBA_reindex' 
FROM sys.databases
WHERE name LIKE 'Affiliate_%'
	AND is_read_only = 0
	AND state_desc = 'ONLINE'
	AND name not in ('Affiliate_12bet_Archive')

declare @rn int, @cmd nvarchar(1000)
SET @rn = 1

WHILE EXISTS(SELECT 1 FROM @CMDs WHERE rn = @rn)
BEGIN
	SELECT @cmd = cmd FROM @CMDs WHERE rn = @rn
	SET @rn = @rn + 1

	EXEC sp_executesql @cmd
END
