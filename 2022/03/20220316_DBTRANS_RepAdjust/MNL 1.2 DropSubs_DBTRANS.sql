/*
	Task: Drop all subscriptions from the indicated publication
	Run @ MNL DBTRANS
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_Transfer', @subscriber = N'DB05', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_Transfer', @subscriber = N'DB052', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_Transfer', @subscriber = N'DB06', @destination_db = N'bodb02', @article = N'all'
GO