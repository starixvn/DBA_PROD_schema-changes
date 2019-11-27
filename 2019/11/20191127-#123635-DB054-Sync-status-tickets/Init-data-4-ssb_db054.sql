/*
	Task - Setup sync status of tickets DB052 ==> DB054
		+ Init data for ssb

	Run on DB054.bodb02
*/
use bodb02
go

declare @__bettrans_tstamp binary(8)
select @__bettrans_tstamp = max(tstamp) from dbo.bettrans with(nolock)

insert into [dbo].[Tickets_settled_setting](sKey, sValue)
values('bettrans', 0), ('bettrans_tstamp', cast(@__bettrans_tstamp as bigint)), ('ssb_logs', convert(varchar(50), getdate(), 121))