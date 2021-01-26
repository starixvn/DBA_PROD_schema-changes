/*
	Task: Drop article
	Run script below @ MNL DB06
*/

use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_API_Data', @article = N'Ticketvoiding_VoidBetAutomation_Service', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTrans_API_Data', @article = N'Ticketvoiding_VoidBetAutomation_Service', @force_invalidate_snapshot = 1
GO