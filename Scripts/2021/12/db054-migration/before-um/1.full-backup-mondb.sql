/*
	Task - Upgrade SQL Server DB054 to 2019
		+ Full backup databases: MonDB
	Run on db054
*/
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'MonDB'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + @@servername + '.' + @__databaseName + '_' + @__datetimeString + '.bak' 
print @__fileName
backup database @__databaseName to disk = @__fileName with format, init, compression

go
