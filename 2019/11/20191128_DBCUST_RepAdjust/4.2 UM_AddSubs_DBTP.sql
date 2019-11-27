/*
	Task: Add back subscriptions to indicated publication
	Run @ DBTP
	** ATTENTION!! Must remote to DBDISTRM and connect DBTP to run script
*/


-- Adding the transactional subscriptions
use [bodb02]
exec sp_addsubscription @publication = N'DBTP_Customer_n_Setting', @subscriber = N'DBMNL', @destination_db = N'bodb02', @subscription_type = N'Pull', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
GO
