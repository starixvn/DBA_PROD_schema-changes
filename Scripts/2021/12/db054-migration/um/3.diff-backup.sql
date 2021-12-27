
/*
	Task - Upgrade SQL Server DB054 to 2019
		+ Diff backup databases: bodb02, bodb_licensee, ServiceBorkerDB, MonDB
	Run on db054
*/
--bodb02
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'bodb02'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + @@servername + '.' + @__databaseName + '_' + @__datetimeString + '.dif' 
print @__fileName
backup database @__databaseName to disk = @__fileName with differential, format, init, compression

go
--bodb_licensee
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'bodb_licensee'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + @@servername + '.' + @__databaseName + '_' + @__datetimeString + '.dif' 
print @__fileName
backup database @__databaseName to disk = @__fileName with differential, format, init, compression

go

--ServiceBorkerDB
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'ServiceBorkerDB'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + @@servername + '.' + @__databaseName + '_' + @__datetimeString + '.dif' 
print @__fileName
backup database @__databaseName to disk = @__fileName with differential, format, init, compression

go
--bodb_ost
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'bodb_ost'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + @@servername + '.' + @__databaseName + '_' + @__datetimeString + '.dif' 
print @__fileName
backup database @__databaseName to disk = @__fileName with differential, format, init, compression

go

--MonDB
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'MonDB'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + @@servername + '.' + @__databaseName + '_' + @__datetimeString + '.dif' 
print @__fileName
backup database @__databaseName to disk = @__fileName with differential, format, init, compression

go

--bodb_CustomerLog ==> use for recover
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'bodb_CustomerLog'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + @@servername + '.' + @__databaseName + '_' + @__datetimeString + '.dif' 
print @__fileName
backup database @__databaseName to disk = @__fileName with differential, format, init, compression

go

--bodb_N88Log ==> use for recover
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'bodb_N88Log'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + @@servername + '.' + @__databaseName + '_' + @__datetimeString + '.dif' 
print @__fileName
backup database @__databaseName to disk = @__fileName with differential, format, init, compression

go

--bodb_NAPLog ==> use for recover
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'bodb_NAPLog'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + @@servername + '.' + @__databaseName + '_' + @__datetimeString + '.dif' 
print @__fileName
backup database @__databaseName to disk = @__fileName with differential, format, init, compression

go