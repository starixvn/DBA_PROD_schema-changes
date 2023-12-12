/*
	Task: Add pull sub DBKLC1 at publisher DBTP10C
	Created: Daniel@20231212
	Run on DBTP10C

*/

-- Adding the transactional pull subscriptions
use [bodb02]
exec sp_addsubscription @publication = N'DBTP_Bet14', @subscriber = N'DBKLC1', @destination_db = N'bodb02', @subscription_type = N'Pull', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
GO
