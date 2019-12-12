/*
	Task: Drop article from replication
	Using UI or run script below @ MNL DB06
*/


-- Drop articles
use [bodb02]
exec sp_dropsubscription @publication = N'DB06_DR_sync', @article = N'Cust_FollowBet', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DB06_DR_sync', @article = N'Cust_FollowBet', @force_invalidate_snapshot = 1
GO

