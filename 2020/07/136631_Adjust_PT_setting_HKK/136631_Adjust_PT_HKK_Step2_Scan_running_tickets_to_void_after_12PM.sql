/*
	Created: 20200724@Chris
	Task: Scan tickets to void after 12PM (GMT+8)
	DB: DB061/DBTP
*/

--get supers from CSD provided list
select distinct h.custid as 'HeadlineID', cih.username as 'HeadlineUser', c.site, c.custid, c.username, c.roleid, c.currency as 'currencyID' ,e.currency, ci.Enabled
	, case when ci.closed=0 and ci.reject =0 then 'Active'
	when ci.closed=0 and ci.reject=1 then 'Suspend'
	when ci.closed=1 then 'Closed' else '' end 'Status'
into #supers
from vw_Customer c with (nolock)
inner join custInfo ci with (nolock) on c.custid = ci.custid
inner join vw_custAccount ca (nolock) on c.CustID = ca.custid
inner join vw_CustAccount h (nolock) on ca.groupID = h.groupID and h.IsGroupHeadLine = 1
inner join custInfo cih (nolock) on cih.custid = h.custid
inner join exchange e with (nolock) on ci.currency = e.exchangeid
where c.roleid in (4)
		and c.currency in (67) -- HKK
		and c.username in ('S32RMB','S32H','S32BH','S32CH','S32DH','S32EH','S32HH','S32HKD','S32KH','S32LH','S32MH','S32NH','S32PH','S32QH','S32E','SGH','SG2H','SG8H','SG10H','SG16H','SG17H','SG25H','SG27H','sg29h','SG37H','SG38H','SG39H','SG41H','SG47H','SG48H','SG50H','SG51H','SBKHK','SBKH','S96h','S36RMB','SSTMH','S553H','S668H','S42H','S42AH','YH','S42EH','PAA','S688H','S788H','MK1','MK2','MK3','MK5','MK6','MK4C','TH7','MK8','MK9','MK10','MK11C','MK12','MK17','MK19','MK21','MK16','TH25','TH26','MK23','JC1','JC7','JC2','JC6','JC9','MK27','TH28','TH29','JC10','TH89','MK31','JC82','GAX','MK32','JC83','AK1','MK33','MK35','MK36','TH3','GEH','GFH','DJA','DJB','DJC','DJD','DJE','DJ27','D27','KIN','DJF','SNG','DAP','PPH','HJ','PKK','PKA','PKB','PKC','PKD','PKE','PKF','PKG','PKH','PKJ','PKL','PKM','PKP','PKT','PKS','PKI','PKN','PKR','PKU','PKV','PKW','PKX','S09H','QQKU','JS','JS1','JS3','JS5','JS6','JS7','JSA','JSC','JSD','SYSHK','JSF','JSK','JSL','JSM','JSZ','SHG','JSU','JSV','JSW','JSX','JSY','JSO','JSI','JHA','JHB','JHC','JHD','SOP','TLM','D71','C1','C5','C7','TLH','C9','C10','C11','C15','H9','H1','C6','H2','H3','9H','EPL','MMS','H8','S1','S2','S3','S7','S9','SR','CM','ZS','A6','R8','A2','A5','US','ZJ','CQ','A9','Y1','DS','SX','CZ','C18','VKH','KKH','KKY','KKG','KKK','KKR','KAB','KGK','KGL','KGM','KGN','SRS','KAD','KBA','KBB','KBC','KBD','KBE','KAG','KAH','KAJ','KAK','KBG','KBH','KBJ','KBK','KBU','KBV','KBW','KAI','KAL','KAN','KAQ','KAS','KAU','KGQ','KGR','KBX','KBY','KK1','S56','KGF','KBZ','KCC','W39','W38','JBK','JBN','JBA','BAG','BAJ','BAP') ----input account list
order by HeadlineID, c.currency, c.roleid, c.custid



----------2. scan ticket to void after 12:05PM (GMT+8) => 0:05AM (GMT-4)
	--SB+SB2
	--Void by BetID function (already cover Metric Gaming - input translog.translogid)

	declare @maxid_bettrans bigint, @maxid_bettransG bigint, @maxid_bettransLC bigint, @maxid_bettransRnG bigint, @maxid_translog bigint
	select @maxid_bettrans = 109495468107
			, @maxid_bettransG = 1256019672
			, @maxid_bettransLC = 134116430
			, @maxid_bettransRnG = 102277958611
			, @maxid_translog = 717833343

	CREATE TABLE #bettypeSB (bettype int)

	INSERT INTO #bettypeSB(bettype)
	select distinct bettype from SportBettypeMatrix (nolock)
	where ProductID = 1

	--scan all SB+SB2 tickets
	SELECT s.HeadlineID, s.HeadlineUser, b.srecommend, s.username as 'SuperUserName', b.custid, b.username, b.currency, b.bettype, b.refno, b.transid, b.transdate, b.winlostdate, b.status, b.statusID, b.matchid
	into #ticketSB
	from bettrans b with (nolock)
	inner join #supers s with (nolock) on s.custid = b.srecommend
	where b.winlostdate >= '2020-07-27'
	and b.statusID in (0,1)
	AND transid > @maxid_bettrans
	and bettype in (select bettype from #bettypeSB where bettype not in (9,29)) 

	--Parlay
	SELECT s.HeadlineID, s.HeadlineUser, b.srecommend, s.username as 'SuperUserName', b.custid, b.username, b.currency, b.bettype, b.refno, b.transid, b.transdate, b.winlostdate, b.status, b.statusID, b.matchid
	into #ticketPL
	from bettrans b with (nolock)
	inner join #supers s with (nolock) on s.custid = b.srecommend
	where b.winlostdate >= '2020-07-27'
	and b.statusID in (0,1)
	AND transid > @maxid_bettrans
	and bettype in (select bettype from #bettypeSB where bettype in (9,29)) 

		
	--get all tickets have bettrans.status = 'running' and eventstatus = postponed/internal OR settlementstatus in ( MTD hold, undecided, result pending, under settlement) => NOT VOID
	--ONLY void EARLY bets
		CREATE TABLE #excludeMatch (matchid INT, sporttype INT, SettlementStatus INT, eventdate DATETIME, eventstatus NVARCHAR(100))

		insert into #excludeMatch (matchid, sporttype, SettlementStatus, eventdate, eventstatus)
		select matchid, sporttype, SettlementStatus, eventdate, eventstatus
		from match m (nolock)
		where ( 31 & SettlementStatus > 0 ) and eventstatus <> 'completed'
		and m.eventdate >= '2020-07-27'
		union all
		select matchid, sporttype, SettlementStatus, eventdate, eventstatus
		from match m (nolock)
		where eventstatus IN ('postponed', 'internal')
		and m.eventdate >= '2020-07-27'



			
		select * from #ticketSB t where t.matchid not in (select matchid from #excludeMatch)
		select * from #ticketPL t where t.matchid not in (select matchid from #excludeMatch)



		--scan Metric Gaming tickets
			SELECT s.HeadlineID, s.HeadlineUser, b.srecommend, s.username as 'SuperUserName', b.custid, b.username, b.currency, b.gameID, b.translogid, b.transdate, b.winlostdate, b.status, b.statusID, b.eventID 
			into #ticketMG			
			from translog b with (nolock)
			inner join #supers s with (nolock) on s.custid = b.srecommend
			where b.winlostdate >= '2020-07-27'
			and b.statusID in (0,1)
			and b.gameID between 801 and 899
			and b.productID = 1
			AND translogid > @maxid_translog
		
	
		select * from #ticketMG t where t.eventID not in (select matchid from #excludeMatch)


		
		
	----> 12:05PM (GMT+8) => 0:05AM (GMT-4)
	----> scan running ticket wldate = 26 Jul => alert --to make sure Event Team already moved event

		SELECT s.*, ci.custid, ci.username, ci.currency, b.bettype, b.* from bettrans b with (nolock)
		inner join custInfo ci with (nolock) on ci.custid = b.custid
		inner join #supers s with (nolock) on s.custid = ci.srecommend
		where b.winlostdate = '2020-07-26' --GMT-4
		and b.statusID in (0,1)
		--AND transid > @maxid_bettrans

		SELECT s.*, ci.custid, ci.username, ci.currency, b.bettype, b.* from bettransG b with (nolock)
		inner join custInfo ci with (nolock) on ci.custid = b.custid
		inner join #supers s with (nolock) on s.custid = ci.srecommend
		where b.winlostdate = '2020-07-26' --GMT-4
		and b.statusID in (0,1)
		--AND transid > @maxid_bettransG

		SELECT s.*, ci.custid, ci.username, ci.currency, b.* from bettransLC b with (nolock)
		inner join custInfo ci with (nolock) on ci.custid = b.custid
		inner join #supers s with (nolock) on s.custid = ci.srecommend
		where b.winlostdate = '2020-07-26' --GMT-4
		and b.statusID in (0,1)
		--AND transid > @maxid_bettransLC	
		
		SELECT s.*, ci.custid, ci.username, ci.currency, b.* from bettransRnG b with (nolock)
		inner join custInfo ci with (nolock) on ci.custid = b.custid
		inner join #supers s with (nolock) on s.custid = ci.srecommend
		where b.winlostdate = '2020-07-26' --GMT-4
		and b.statusID in (0,1)
		--AND transid > @maxid_bettransRnG

		SELECT s.*, ci.custid, ci.username, ci.currency, b.* from translog b with (nolock)
		inner join custInfo ci with (nolock) on ci.custid = b.custid
		inner join #supers s with (nolock) on s.custid = ci.srecommend
		where b.winlostdate = '2020-07-26' --GMT-4
		and b.statusID in (0,1)
		--AND translogid > @maxid_translog


---------// END --2. scan ticket to void after 12:05PM (GMT+8) => 0:05AM (GMT-4)



drop table #bettypeSB

drop table #supers

drop table #excludeMatch
drop table #ticketSB
drop table #ticketPL

drop table #ticketMG