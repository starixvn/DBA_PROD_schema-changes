/*
	Created: 20200724@Chris
	Task: Scan new tickets of HKK members after blocked MemberSite
	DB: DB061/DBTP
*/

--get max transid
select getdate()
select max(transid) from bettrans with (nolock)
select max(transid) from bettransG with (nolock)
select max(transid) from bettransLC with (nolock)
select max(transid) from bettransRnG with (nolock)
select max(translogid) from translog with (nolock)


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
		and c.username in (

--Active Headline_Void Early 23-7	(244 supers)	
'S32RMB','S32H','S32BH','S32CH','S32DH','S32EH','S32HH','S32HKD','S32KH','S32LH','S32MH','S32NH','S32PH','S32QH','S32E','SGH','SG2H','SG8H','SG10H','SG16H','SG17H','SG25H','SG27H','sg29h','SG37H','SG38H','SG39H','SG41H','SG47H','SG48H','SG50H','SG51H','SBKHK','SBKH','S96h','S36RMB','SSTMH','S553H','S668H','S42H','S42AH','YH','S42EH','PAA','S688H','S788H','MK1','MK2','MK3','MK5','MK6','MK4C','TH7','MK8','MK9','MK10','MK11C','MK12','MK17','MK19','MK21','MK16','TH25','TH26','MK23','JC1','JC7','JC2','JC6','JC9','MK27','TH28','TH29','JC10','TH89','MK31','JC82','GAX','MK32','JC83','AK1','MK33','MK35','MK36','TH3','GEH','GFH','DJA','DJB','DJC','DJD','DJE','DJ27','D27','KIN','DJF','SNG','DAP','HJ','PKK','PKA','PKB','PKC','PKD','PKE','PKF','PKG','PKH','PKJ','PKL','PKM','PKP','PKT','PKS','PKI','PKN','PKR','PKU','PKV','PKW','PKX','S09H','QQKU','JS','JS1','JS3','JS5','JS6','JS7','JSA','JSC','JSD','SYSHK','JSF','JSK','JSL','JSM','JSZ','SHG','JSU','JSV','JSW','JSX','JSY','JSO','JSI','JHA','JHB','JHC','JHD','SOP','TLM','D71','C1','C5','C7','TLH','C9','C10','C11','C15','H9','H1','C6','H2','H3','9H','EPL','MMS','H8','S1','S2','S3','S7','S9','SR','CM','ZS','A6','R8','A2','A5','US','ZJ','CQ','A9','Y1','DS','SX','CZ','C18','VKH','KKH','KKY','KKG','KKK','KKR','KAB','KGK','KGL','KGM','KGN','SRS','KAD','KBA','KBB','KBC','KBD','KBE','KAG','KAH','KAJ','KAK','KBG','KBH','KBJ','KBK','KBU','KBV','KBW','KAI','KAL','KAN','KAQ','KAS','KAU','KGQ','KGR','KBX','KBY','KK1','S56','KGF','KBZ','KCC','W39','W38','JBK','JBN','JBA','BAG','BAJ','BAP'
		
--Active Headline_Void Early 24-7	(31 supers)
,'SLH','SLJ','SLZ','BPH','HPP','HPO','HPU','HPV','HPQ','HPY','HPR','SX3','SZZ','SX5','SX6','SX8','HP3','SX9','HSS','SX10','SX11','DJA','DJB','DJC','DJ27','D27','DJF','SNG','DAP','S3HH','S3HK'

--Active Headline_Void Early 25-7	(49 supers)	
,'JYT','JYG','JYU','JYK','YYL','SG4H','SG7H','SG15H','SG21H','SG9H','SG31H','SG32H','SG33H','SG36H','SG40H','SG43H','SG45H','SG46H','SG6H','SG49H','SG1H','801H','802H','802AH','801AH','801BH','801CH','801DH','801HK','801Z','803H','805H','806H','807H','808H','801SH','801W','SG33Z','801Q','SG33M','801F','801G','801J','801N','EE89','801TH','801L','GG69','802CH'

--
,'QWB'
) ----input account list--Total: 317 supers (8 duplicated)
order by HeadlineID, c.currency, c.roleid, c.custid


------1. scan new ticket after 9AM (GMT+8)
	---> avoid incident from TW
	---> scan all products (alert if have new tickets)
	---> Run 1 more time at 5PM (GMT+8)

	declare @maxid_bettrans bigint, @maxid_bettransG bigint, @maxid_bettransLC bigint, @maxid_bettransRnG bigint, @maxid_translog bigint
	select @maxid_bettrans = 109515343393
			, @maxid_bettransG = 1256107826
			, @maxid_bettransLC = 135122523
			, @maxid_bettransRnG = 102285719568
			, @maxid_translog = 719112227

	declare @scantime datetime
	select @scantime = '2020-07-26 21:00:00.000' --GMT-4 => GMT+8 = '2020-07-27 09:00:00.000'

	SELECT s.*, b.bettype, b.* from bettrans b with (nolock)
	inner join #supers s with (nolock) on s.custid = b.srecommend
	where b.transdate >= @scantime
	and b.statusID in (0,1)
	AND transid > @maxid_bettrans

	SELECT s.*, ci.custid, ci.username, ci.currency, b.bettype, b.* from bettransG b with (nolock)
	inner join custInfo ci with (nolock) on ci.custid = b.custid
	inner join #supers s with (nolock) on s.custid = ci.srecommend
	where b.transdate >= @scantime
	and b.statusID in (0,1)
	AND transid > @maxid_bettransG

	SELECT s.*, b.gameID, b.* from bettransLC b with (nolock)
	inner join #supers s with (nolock) on s.custid = b.srecommend
	where b.transdate >= @scantime
	and b.statusID in (0,1)
	AND transid > @maxid_bettransLC
		
	SELECT s.*, b.gameID, b.* from bettransRnG b with (nolock)
	inner join #supers s with (nolock) on s.custid = b.srecommend
	where b.transdate >= @scantime
	and b.statusID in (0,1)
	AND transid > @maxid_bettransRnG

	SELECT s.*, b.gameID, b.* from translog b with (nolock)
	inner join #supers s with (nolock) on s.custid = b.srecommend
	where b.transdate >= @scantime
	and b.statusID in (0,1)
	AND translogid > @maxid_translog
		
------// END --1. scan new ticket after 9AM (GMT+8)	

	

drop table #supers
