/*
	Task - Upgrade SQL Server DB055 to 2019
		+ Generate attach script
	Run on db055
*/
use bodb_CustomerLog_Archive
go

declare @__cmd nvarchar(max)
set @__cmd = 'CREATE DATABASE [bodb_CustomerLog_Archive] ON ' + char(13)

select @__cmd = @__cmd + '( FILENAME = N''' + physical_name +'''),' + char(13)
from sys.database_files

set @__cmd = LEFT(@__cmd, len(@__cmd) - 2) + char(13) + 'FOR ATTACH'
select @__cmd

go

use bodb_CustomerLog
go
declare @__cmd nvarchar(max)
set @__cmd = 'CREATE DATABASE [bodb_CustomerLog] ON ' + char(13)

select @__cmd = @__cmd + '( FILENAME = N''' + physical_name +'''),' + char(13)
from sys.database_files

set @__cmd = LEFT(@__cmd, len(@__cmd) - 2) + char(13) + 'FOR ATTACH'
select @__cmd

go

use bodb_N88Log
go
declare @__cmd nvarchar(max)
set @__cmd = 'CREATE DATABASE [bodb_N88Log] ON ' + char(13)

select @__cmd = @__cmd + '( FILENAME = N''' + physical_name +'''),' + char(13)
from sys.database_files

set @__cmd = LEFT(@__cmd, len(@__cmd) - 2) + char(13) + 'FOR ATTACH'
select @__cmd

go

use bodb_NAPLog
go
declare @__cmd nvarchar(max)
set @__cmd = 'CREATE DATABASE [bodb_NAPLog] ON ' + char(13)

select @__cmd = @__cmd + '( FILENAME = N''' + physical_name +'''),' + char(13)
from sys.database_files

set @__cmd = LEFT(@__cmd, len(@__cmd) - 2) + char(13) + 'FOR ATTACH'
select @__cmd

go

