/*
	Task - Setup db054 such as db042
		+ Sync status tickets
	Run on DB054.bodb02	
*/

--truncate data in [14]

use bodb02
go

truncate table dbo.bettrans14
truncate table dbo.bettransInfo14
truncate table dbo.bettransm14
truncate table dbo.bettransRnG14
truncate table dbo.bettransLC14
truncate table dbo.translog14
truncate table dbo.bettransG14

go
