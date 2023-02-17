/*<info serverAlias="SITDB06-bodb02"></info>*/
/*
	Created: 20230103@Daniel
	Task: Drop subscription
	DB: SITDB06-bodb02
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DB06_Customer_Info_Casino', @subscriber = N'SITCASINOQA2', @destination_db = N'LiveCasinoAdmin', @article = N'all'
GO
