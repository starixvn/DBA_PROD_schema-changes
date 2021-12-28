/*
	Task - Upgrade SQL Server DB054 to 2019
		+ Full backup databases: bodb_Licensee, bodb_ost, bodb02, ServiceBrokerDB, MonDB
			, bodb_CustomerLog, bodb_N88Log, bodb_NAPLog
	Run on db055
*/
--bodb02
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'bodb02'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + replace(@@servername, '\', '_') + '.' + @__databaseName + '_' + @__datetimeString + '.bak' 
print @__fileName
backup database @__databaseName to disk = @__fileName with format, init, compression

go
--bodb_licensee
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'bodb_licensee'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + replace(@@servername, '\', '_') + '.' + @__databaseName + '_' + @__datetimeString + '.bak' 
print @__fileName
backup database @__databaseName to disk = @__fileName with format, init, compression

go

--ServiceBrokerDB
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'ServiceBrokerDB'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + replace(@@servername, '\', '_') + '.' + @__databaseName + '_' + @__datetimeString + '.bak' 
print @__fileName
backup database @__databaseName to disk = @__fileName with format, init, compression

go
--bodb_ost
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'bodb_ost'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + replace(@@servername, '\', '_') + '.' + @__databaseName + '_' + @__datetimeString + '.bak' 
print @__fileName
backup database @__databaseName to disk = @__fileName with format, init, compression

go

--MonDB
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'MonDB'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + replace(@@servername, '\', '_') + '.' + @__databaseName + '_' + @__datetimeString + '.bak' 
print @__fileName
backup database @__databaseName to disk = @__fileName with format, init, compression

go

--bodb_CustomerLog ==> use for recover
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'bodb_CustomerLog'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + replace(@@servername, '\', '_') + '.' + @__databaseName + '_' + @__datetimeString + '.bak' 
print @__fileName
backup database @__databaseName to disk = @__fileName with format, init, compression

go

--bodb_N88Log ==> use for recover
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'bodb_N88Log'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + replace(@@servername, '\', '_') + '.' + @__databaseName + '_' + @__datetimeString + '.bak' 
print @__fileName
backup database @__databaseName to disk = @__fileName with format, init, compression

go

--bodb_NAPLog ==> use for recover
set nocount on
declare @__fileName varchar(512)
	, @__databaseName varchar(200)
	, @__datetimeString varchar(30)
	, @__backupPath varchar(200)

select @__backupPath = 'G:\backup', @__databaseName = 'bodb_NAPLog'
	, @__datetimeString = replace(replace(convert(varchar(19), getdate(), 121), ':', ''), ' ', '-')

set @__fileName = @__backupPath + '\' + replace(@@servername, '\', '_') + '.' + @__databaseName + '_' + @__datetimeString + '.bak' 
print @__fileName
backup database @__databaseName to disk = @__fileName with format, init, compression

go