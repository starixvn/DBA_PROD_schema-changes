/*
	Task: Drop article from replication
	Using UI or run script below @DBCUST
*/


-- Drop articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Cust_FollowBet', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Cust_FollowBet', @force_invalidate_snapshot = 1
GO