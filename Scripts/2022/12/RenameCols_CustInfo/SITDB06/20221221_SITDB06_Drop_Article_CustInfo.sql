/*<info serverAlias="SITDB06-bodb02"></info>*/
/*
	Created: 20221221@Sol
	Task: Drop custinfo article
	DB: SITDB06-bodb02
*/

-- ### PUBLICATION = DB06_CUSTOMER_INFO_CASINO ###
---#####################################

-- Dropping the transactional articles
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DB06_Customer_Info_Casino', @article = N'custInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DB06_Customer_Info_Casino', @article = N'custInfo', @force_invalidate_snapshot = 1
GO

-- ### PUBLICATION = DB06_CUSTOMER_INFO ###
---#####################################

-- Dropping the transactional articles
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DB06_Customer_Info', @article = N'custInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DB06_Customer_Info', @article = N'custInfo', @force_invalidate_snapshot = 1

GO