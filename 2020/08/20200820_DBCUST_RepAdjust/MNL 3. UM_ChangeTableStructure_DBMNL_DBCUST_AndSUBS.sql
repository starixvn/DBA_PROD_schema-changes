/*
	Created: 20200817@Daniel
	Task: Remove idenitty proprerty of exchange.exchangeid [Redmine: #134978] - Import data & Rename table (MNL)
	** Must remove the table exchange from Replication 1st
	Run on MNL servers: DBMNL, DBCUST, DB04x, DB05x, DB06, DBTRANS, DB02, DBODDS163, DBDW
*/


--================================================================================================================================================
-- 3. import all data from old table to new table
insert [exchange_new](exchangeid, currency, stakerate, actualrate, commaxpayout, creator, minbet, minbetlive, AUDRate, ZARRate, GBPRate, EURORate, US$Rate, Code, Description, MultipliedBy, ExVirtualRate, PJUnitPrice, 
                         OfferSite, IsActive)
select exchangeid, currency, stakerate, actualrate, commaxpayout, creator, minbet, minbetlive, AUDRate, ZARRate, GBPRate, EURORate, US$Rate, Code, Description, MultipliedBy, ExVirtualRate, PJUnitPrice, 
                         OfferSite, IsActive
from dbo.exchange with (nolock)
GO

--================================================================================================================================================
-- 4. Drop old table
drop table dbo.exchange
GO

--================================================================================================================================================
-- 5. rename new objects to main
exec sp_rename 'dbo.exchange_new', 'exchange'
exec sp_rename 'dbo.PK_exchange_new', 'PK_exchange'
exec sp_rename 'dbo.DF_Exchange_new_OfferSite', 'DF_Exchange_OfferSite'
exec sp_rename 'dbo.DF_Exchange_new_IsActive', 'DF_Exchange_IsActive'
GO

