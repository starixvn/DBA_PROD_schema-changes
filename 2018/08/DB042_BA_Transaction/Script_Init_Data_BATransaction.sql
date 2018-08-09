
/*
	Init data for LicenseeBATransaction_active table
	Run on DB042.bodb_Licensee
*/
use bodb_Licensee
go

truncate table dbo.LicenseeBATransaction_active

insert into dbo.LicenseeBATransaction_active([TransID], [transdate], [custid], [recommend], [srecommend])
select [TransID], [transdate], [custid], [recommend], [srecommend]
from DB0EXT.bodb_Licensee.dbo.LicenseeBATransaction_active with(nolock)

--check count
select count(1) from dbo.LicenseeBATransaction_active with(nolock)
select count(1) from  DB0EXT.bodb_Licensee.dbo.LicenseeBATransaction_active with(nolock)
