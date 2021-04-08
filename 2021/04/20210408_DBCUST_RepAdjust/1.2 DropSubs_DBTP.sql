/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBTP - Must RDP to DBTP02C
*/

-- Dropping the transactional subscriptions
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee', @subscriber = N'DBMNL', @destination_db = N'bodb_licensee', @article = N'all'
GO
