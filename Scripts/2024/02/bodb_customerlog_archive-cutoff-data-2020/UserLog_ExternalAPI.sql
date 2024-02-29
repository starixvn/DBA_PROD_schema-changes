/*<info serverAlias="DBLOG-bodb_CustomerLog_Archive" executers="" viewers="" isFunction="0" isNested="0"></info>*/

set nocount on
declare @__messageInfo varchar(200)
create table #__logIds (logid bigint)
declare @__tempLogIds table(logid bigint)

while 1 = 1
begin
	truncate table #__logIds

	insert into #__logIds(logid)
	select top(50000) logid 
	from dbo.UserLog_ExternalAPI with(nolock)
	where LogDate < '2021-01-01'

	if @@rowcount = 0
		break

	while 1 = 1
	begin

		delete from @__tempLogIds
		delete top(3000)
		from #__logIds output deleted.logid into @__tempLogIds(logid)

		if @@rowcount = 0
			break

		delete l from dbo.UserLog_ExternalAPI l with(rowlock)
		where exists (select top 1 1 from @__tempLogIds t where t.logid = l.LogID)

	end

	set @__messageInfo = convert(varchar(50), getdate(), 121)
	raiserror(@__messageInfo, 0, 1) with nowait

end
go
