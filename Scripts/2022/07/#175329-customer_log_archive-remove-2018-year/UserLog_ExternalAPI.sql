set nocount on
declare @__message varchar(200)
while 1 = 1
begin
	delete top(3000) from dbo.UserLog_ExternalAPI with(rowlock)
	where LogDate < '2019-01-01'

	if @@rowcount = 0
		break
	set @__message = convert(varchar(50), getdate(), 121)
	raiserror(@__message, 0, 0) with nowait

end