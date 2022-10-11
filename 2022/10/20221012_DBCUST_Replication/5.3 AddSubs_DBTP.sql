/*
	Task: Add back subscriptions to indicated publication, exclude sub DBTKO in pub DBTP_Customer_n_Setting - add later when AWS schema is ready
	Run @ DBTP
	** ATTENTION!! Must change xxx to sa subs password and Remote to DBDIST03C and connect DBTP to run script
*/

-- Adding the transactional subscriptions
use [bodb02]
exec sp_addsubscription @publication = N'DBTP_Customer_n_Setting', @subscriber = N'DBTKO', @destination_db = N'bodb02', @subscription_type = N'Pull', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
GO
