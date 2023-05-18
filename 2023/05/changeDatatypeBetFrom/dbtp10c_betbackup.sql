/*
	dbtp10c-betbackup
	20230518@brice: extend betfrom #126137
*/

use BetBackup
go

alter table dbo.bettransm alter column betfrom nvarchar(4)
go
alter table dbo.bettrans alter column betfrom nvarchar(4)