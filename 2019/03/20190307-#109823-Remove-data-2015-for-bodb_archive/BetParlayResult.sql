
/*
	Task - Remove data 2015 for bodb_archive @ betParlayResult_Archive
	Run on DB06.bodb_archive
*/


declare @winlostdate smalldatetime, @message varchar(200)

set @winlostdate = '2015-10-01 00:00:00'

while @winlostdate < '2016-01-01'
begin
	while 1 = 1
	begin
		delete top (3000) from dbo.BetParlayResult with(rowlock)
		where winlostdate = @winlostdate

		if @@rowcount = 0
			break
	end

	set @message = '@winlostdate: ' + convert(varchar(50), @winlostdate, 121) + '^currentdatetime: ' + convert(varchar(50), getdate(), 121)
	raiserror (@message, 0, 1) with nowait
	set @winlostdate = dateadd(day, 1, @winlostdate)
end
go
