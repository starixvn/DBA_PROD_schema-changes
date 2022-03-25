/*<info serverAlias="DBARC-bodb_Archive" executers="" viewers="" isFunction="0" isNested="0"></info>*/
/*
	Task remove data 2018 year in bodb_Archive
	Run on DB06x.bodb_Archive
*/
use bodb_Archive;
declare @__winlostdate smalldatetime, @__dateto smalldatetime, @__message varchar(200)
select @__winlostdate = '2018-01-01', @__dateto = '2019-01-01'

create table #__matchIds (matchid int)
declare @__matchIdsTemp table (matchid int primary key)

while @__winlostdate < @__dateto
begin
	truncate table #__matchIds

	insert into #__matchIds(matchid)
	select matchid from dbo.match_bk with(nolock) where eventdate = @__winlostdate group by matchid 

	while 1 = 1
	begin
		delete from @__matchIdsTemp
		delete top(1000) from #__matchIds output deleted.matchid into @__matchIdsTemp(matchid)
		
		if @@rowcount = 0
			break

		retry:
		delete top(3000) t
		from dbo.odds_bk t with(rowlock) 
		where exists (select top 1 1 from @__matchIdsTemp tt where t.matchid = tt.matchid)
		
		if @@rowcount > 0
			goto retry

	end
	set @__message = 'winlostdate: ' + convert(varchar(50), @__winlostdate, 121) + ' ---- currentdt: ' + convert(varchar(50), getdate(), 121)
	raiserror(@__message, 0, 1) with nowait

	--//
	set @__winlostdate = dateadd(day, 1, @__winlostdate)
end
