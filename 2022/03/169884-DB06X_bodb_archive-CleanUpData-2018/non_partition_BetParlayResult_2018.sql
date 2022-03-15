/*
	Task remove data 2018 year in bodb_Archive
	Run on DB06x.bodb_Archive
*/

declare @__winlostdate smalldatetime, @__dateto smalldatetime, @__message varchar(200)
select @__winlostdate = '2018-01-01', @__dateto = '2019-01-01'

while @__winlostdate < @__dateto
begin
	
	while 1 = 1
	begin
		delete top(3000) d 
		from dbo.BetParlayResult d with(rowlock) 
		where winlostdate = @__winlostdate
		
		if @@rowcount = 0
			break
	end
	set @__message = 'winlostdate: ' + convert(varchar(50), @__winlostdate, 121) + ' ---- currentdt: ' + convert(varchar(50), getdate(), 121)
	raiserror(@__message, 0, 1) with nowait

	--//
	set @__winlostdate = dateadd(day, 1, @__winlostdate)
end
