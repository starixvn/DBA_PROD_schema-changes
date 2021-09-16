


/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBTP - Must RDP to DBTP02C
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_API_Data_AWS', @subscriber = N'DBBAL', @destination_db = N'bodb02', @article = N'all'
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @subscriber = N'DBBAL', @destination_db = N'bodb02', @article = N'all'
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Odds_Odds_AWS', @subscriber = N'DBBAL', @destination_db = N'bodb02', @article = N'all'
GO


