select * from sys.objects where name = 'rpt_Betting'

select * from sys.partitions where object_id = 1557580587 and partition_number = 116

select top 100 * from rpt_Betting with (nolock)
where $PARTITION.pf_rptBetting_monthly(rptdate) = 117

select $PARTITION.pf_rptBetting_monthly(rptdate) [part], Year(rptdate) [Year], Month(rptdate) [Month], count(1)
from rpt_Betting with (nolock)
--where $PARTITION.pf_rptBetting_monthly(rptdate) = 117
group by $PARTITION.pf_rptBetting_monthly(rptdate), Year(rptdate), Month(rptdate)
order by part desc

------------------------------

select * from sys.objects where name = 'rptCustomerMatch'

select * from sys.partitions where object_id = 382624406 and partition_number = 116

select count(1) from rptCustomerMatch with (nolock)
where $PARTITION.pf_rptCustomerMatch_monthly(winlostdate) = 57
	and winlostdate = '20180920'

select $PARTITION.pf_rptCustomerMatch_monthly(winlostdate) [part], Year(winlostdate) [Year], Month(winlostdate) [Month], count(*)
from rptCustomerMatch with (nolock)
where $PARTITION.pf_rptCustomerMatch_monthly(winlostdate) IN( 54,53,52,51,50)
group by $PARTITION.pf_rptCustomerMatch_monthly(winlostdate), Year(winlostdate), Month(winlostdate)
order by part desc

----------------
select * from sys.objects where name = 'rptCustomerActive'

select * from sys.partitions where object_id = 430624577 --and partition_number = 116

select * from rptCustomerActive with (nolock)
where $PARTITION.pf_rptCustomerActive_monthly(transdate) in(77,76,75)

select $PARTITION.pf_rptCustomerActive_monthly(transdate) [part], Year(transdate) [Year], Month(transdate) [Month], count(1)
from rptCustomerActive with (nolock)
where $PARTITION.pf_rptCustomerActive_monthly(transdate) in(77,76,75)
group by $PARTITION.pf_rptCustomerActive_monthly(transdate), Year(transdate), Month(transdate)
order by part desc

------------------------------
select * from sys.objects where name = 'rptCustomerTurnover'

select * from sys.partitions where object_id = 398624463 --and partition_number = 116

select * from rptCustomerTurnover with (nolock)
where $PARTITION.pf_rptCustomerTurnover_monthly(winlostdate) in(37,36,35)

select $PARTITION.pf_rptCustomerTurnover_monthly(winlostdate) [part], Year(winlostdate) [Year], Month(winlostdate) [Month], count(1)
from rptCustomerTurnover with (nolock)
where $PARTITION.pf_rptCustomerTurnover_monthly(winlostdate)  in(32)
group by $PARTITION.pf_rptCustomerTurnover_monthly(winlostdate), Year(winlostdate), Month(winlostdate)
order by part desc


------------------------------
select * from sys.objects where name = 'rptLicIPBetting'

select * from sys.partitions where object_id = 1422628111 --and partition_number = 116

select * from rptLicIPBetting with (nolock)
where $PARTITION.pf_rptLicIPBetting_monthly(winlostdate) in(105,104,103)

select $PARTITION.pf_rptLicIPBetting_monthly(winlostdate) [part], Year(winlostdate) [Year], Month(winlostdate) [Month], count(1)
from rptLicIPBetting with (nolock)
where $PARTITION.pf_rptLicIPBetting_monthly(winlostdate)   in(105,104,103)
group by $PARTITION.pf_rptLicIPBetting_monthly(winlostdate), Year(winlostdate), Month(winlostdate)
order by part desc

------------------------------
select * from sys.objects where name = 'rptLicWinloss2'

select * from sys.partitions where object_id = 1605580758 --and partition_number = 116

select * from rptLicWinloss2 with (nolock)
where $PARTITION.pf_rptLicensee_monthly(winlostdate) in(105,104,103)

select $PARTITION.pf_rptLicensee_monthly(winlostdate) [part], Year(winlostdate) [Year], Month(winlostdate) [Month], count(*)
from rptLicWinloss2 with (nolock)
where $PARTITION.pf_rptLicensee_monthly(winlostdate)   between 1 and 20
group by $PARTITION.pf_rptLicensee_monthly(winlostdate), Year(winlostdate), Month(winlostdate)
order by part desc


------------------------------
select * from sys.objects where name = 'rptLicWinlossGMT'

select * from sys.partitions where object_id = 1134627085 --and partition_number = 116

select * from rptLicWinlossGMT with (nolock)
where $PARTITION.pf_rptLicWLGMT_monthly(rptDateGMT)   in(9,10,11)

select $PARTITION.pf_rptLicWLGMT_monthly(rptDateGMT) [part], Year(rptDateGMT) [Year], Month(rptDateGMT) [Month], count(1)
from rptLicWinlossGMT with (nolock)
where $PARTITION.pf_rptLicWLGMT_monthly(rptDateGMT)   in(9,10,11)
group by $PARTITION.pf_rptLicWLGMT_monthly(rptDateGMT), Year(rptDateGMT), Month(rptDateGMT)
order by part desc


------------------------------
select * from sys.objects where name = 'rptWinlostbyLeague'

select * from sys.partitions where object_id = 414624520 --and partition_number = 116

select * from rptWinlostbyLeague with (nolock)
where $PARTITION.pf_rptWinlostByLeague_monthly(winlostdate) in(55,56,57)

select $PARTITION.pf_rptWinlostByLeague_monthly(winlostdate) [part], Year(winlostdate) [Year], Month(winlostdate) [Month], count(1)
from rptWinlostbyLeague with (nolock)
where $PARTITION.pf_rptWinlostByLeague_monthly(winlostdate) in(55,56,57)
group by $PARTITION.pf_rptWinlostByLeague_monthly(winlostdate), Year(winlostdate), Month(winlostdate)
order by part desc

------------------------------
select * from sys.objects where name = 'tbl_Customer_Account'

select * from sys.partitions where object_id = 1390627997 --and partition_number = 116

select count(1) from tbl_Customer_Account with (nolock)
where $PARTITION.pf_kpiCustomer_Account_quarterly_new(transdate) in(35) --35,34,33
	and Year(transdate) = 2018 and Month(transdate) = 9

select $PARTITION.pf_kpiCustomer_Account_quarterly_new(transdate) [part], Year(transdate) [Year], Month(transdate) [Month], count(1)
from tbl_Customer_Account with (nolock)
where $PARTITION.pf_kpiCustomer_Account_quarterly_new(transdate) in(35)
group by $PARTITION.pf_kpiCustomer_Account_quarterly_new(transdate), Year(transdate), Month(transdate)
order by part desc


select count(1) from tbl_Customer_Account with (nolock)
where $PARTITION.pf_kpiCustomer_Account_quarterly_new(transdate) in(34)
	and Year(transdate) = 2018 and Month(transdate) = 6