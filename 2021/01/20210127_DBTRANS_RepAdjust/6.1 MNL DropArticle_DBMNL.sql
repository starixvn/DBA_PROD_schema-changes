/*
	Task: Change article from replication
	Using UI or run script below @ DBMNL
*/

use [bodb02]
exec sp_dropsubscription @publication = N'DBMNL_API_Data_T', @article = N'Ticketvoiding_VoidBetAutomation_Service', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBMNL_API_Data_T', @article = N'Ticketvoiding_VoidBetAutomation_Service', @force_invalidate_snapshot = 1
GO