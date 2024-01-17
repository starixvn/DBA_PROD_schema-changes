/*
	Task: Drop all subscribers in related publication for add/remove articles
	Run on KL DBTRANS
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @subscriber = N'DB04ADMIN1', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @subscriber = N'DB04ADMIN2', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @subscriber = N'DB05', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @subscriber = N'DB052', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @subscriber = N'DB053', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @subscriber = N'DB054', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @subscriber = N'DB055', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @subscriber = N'DB05BK1', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @subscriber = N'DB062', @destination_db = N'bodb02', @article = N'all'
GO