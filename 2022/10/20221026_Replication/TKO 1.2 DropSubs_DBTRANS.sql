/*
	Task: Drop all subscriptions from the indicated publication
	Run @ AWS DBTRANS
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @subscriber = N'DB04ADMIN1', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @subscriber = N'DB05', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @subscriber = N'DB052', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @subscriber = N'DB054', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO