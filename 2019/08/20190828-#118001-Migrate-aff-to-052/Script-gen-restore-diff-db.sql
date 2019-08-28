/*
	Task: Migrate DBAFF to DB052/DB053
		+ Restore diff backup
	Run on DB052
*/

use master
go

declare @table table (
	LogicalName nvarchar(1000), 
	PhysicalName nvarchar(1000), 
	Type varchar(10), 
	FileGroupName varchar(1000),
	Size varchar(100),
	MaxSize varchar(100),
	FileId varchar(10),
	CreateLSN varchar(1000), 
	DropLSN varchar(1000),
	UniqueId varchar(1000),
	ReadOnlyLSN varchar(100),
	ReadWriteLSN varchar(100),
	BackupSizeInBytes varchar(100),
	SourceBlockSize varchar(100),
	FileGroupId varchar(100),
	LogGroupGUID varchar(100),
	DifferentialBaseLSN varchar(1000),
	DifferentialBaseGUID varchar(1000),
	IsReadOnly varchar(100),
	IsPresent varchar(10),
	TDEThumbprint varchar(10)
	)

DECLARE @databaseName VARCHAR(200) = 'Affiliate_Aoncash'

INSERT INTO @table
EXEC('restore filelistonly from disk = ''D:\Backup\'+@databaseName+'_diff_backup_migrate_2019_08_28.diff''')
SELECT 'RESTORE DATABASE '+@databaseName+' FROM DISK = N''D:\Backup\'+@databaseName+'_diff_backup_migrate_2019_08_28.diff'' ',''
UNION ALL
SELECT 'WITH RECOVERY, FILE = 1,',''
UNION ALL
SELECT 'MOVE N''' + LogicalName + '''' , ' TO N''' + REPLACE(PhysicalName,'G:\IBC_DB\'+@databaseName+'\','M:\IBC_DB\'+@databaseName+'\') + ''','
FROM @table
UNION ALL
SELECT '  NOUNLOAD,  STATS = 10',''

--continue with the rest databases
--==Affiliate_Athena000, Affiliate_itcbet, Affiliate_MacauBet, Affiliate_Spondemo

