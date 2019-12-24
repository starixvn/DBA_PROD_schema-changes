/*
	Task: CS_ProductBetSetting: Drop artical / remove table from replication
	Using UI or run script below @DBCUST
*/

-- drop article
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_ProblemAccount', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_ProblemAccount', @force_invalidate_snapshot = 1
GO

-- drop article
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @article = N'Acc_GroupExtraPTSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExchangeDaily', @article = N'Acc_GroupExtraPTSetting', @force_invalidate_snapshot = 1
GO



