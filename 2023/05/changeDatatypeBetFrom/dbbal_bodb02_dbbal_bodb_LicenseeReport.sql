/*
	dbbal-bodb02, dbbal-bodb_LicenseeReport
	20230518@brice: extend betfrom #126137
*/

use bodb02
go

alter table dbo.bettransG alter column betfrom nvarchar(4)
alter table dbo.bettransG14 alter column betfrom nvarchar(4)
alter table dbo.bettransLC14 alter column betfrom varchar(4)
alter table dbo.translog14 alter column betfrom nvarchar(4)
alter table dbo.translog alter column betfrom nvarchar(4)
alter table dbo.bettransLC alter column betfrom varchar(4)
alter table dbo.bettransRnG alter column betfrom varchar(4)
alter table dbo.bettransRnG14 alter column betfrom varchar(4)
alter table dbo.bettransm alter column betfrom nvarchar(4)
alter table dbo.bettransm14 alter column betfrom nvarchar(4)
alter table dbo.bettrans14 alter column betfrom nvarchar(4)
alter table dbo.bettrans alter column betfrom nvarchar(4)

go

use bodb_LicenseeReport
go
alter table dbo.bettrans alter column betfrom nvarchar(4)
go