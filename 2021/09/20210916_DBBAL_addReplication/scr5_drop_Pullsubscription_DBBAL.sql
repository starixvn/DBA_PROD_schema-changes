

use [bodb02]
exec sp_droppullsubscription @publisher = N'DBTP', @publisher_db = N'bodb02', @publication = N'DBTP_Bet_n_ExecRep_AWS'
GO
