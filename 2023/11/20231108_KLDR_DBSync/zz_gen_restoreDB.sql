
declare @DBName varchar(50) = DB_NAME() 
declare @sql nvarchar (max)
select @sql =
'ALTER DATABASE ' + @DBName + ' SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [' + @DBName + '] FROM  DISK = N''G:\BACKUP_LOCAL\UM0713\DBTRANS.' + @DBName + '_20230713.bak'' WITH  FILE = 1, REPLACE, RECOVERY,
'
select @sql = @sql +
'MOVE N''' + dbfile.name + ''' TO N''' + dbfile .physical_name + ''',
'
from sys .database_files AS dbfile
select @sql = @sql + 'NOUNLOAD,  STATS = 5'
select @sql
PRINT CAST(@sql AS NTEXT)