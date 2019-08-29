/*
	Task: Migrate DBAFF to DB052/DB053
		+ Map users
	Run on DB052
*/

USE Affiliate_Aoncash
GO
EXEC sp_change_users_login 'Update_One','bodbAdminNet','bodbAdminNet';
EXEC sp_change_users_login 'Update_One','bodbDownlineNet','bodbDownlineNet';
EXEC sp_change_users_login 'Update_One','bodbDownlineNetView','bodbDownlineNetView';
EXEC sp_change_users_login 'Update_One','SqlLink','SqlLink';
EXEC sp_change_users_login 'Update_One','vnAffiliate','vnAffiliate';

USE Affiliate_Athena000
GO
EXEC sp_change_users_login 'Update_One','bodbAdminNet','bodbAdminNet';
EXEC sp_change_users_login 'Update_One','bodbDownlineNet','bodbDownlineNet';
EXEC sp_change_users_login 'Update_One','bodbDownlineNetView','bodbDownlineNetView';
EXEC sp_change_users_login 'Update_One','SqlLink','SqlLink';
EXEC sp_change_users_login 'Update_One','vnAffiliate','vnAffiliate';

USE Affiliate_itcbet
GO
EXEC sp_change_users_login 'Update_One','bodbAdminNet','bodbAdminNet';
EXEC sp_change_users_login 'Update_One','bodbDownlineNet','bodbDownlineNet';
EXEC sp_change_users_login 'Update_One','bodbDownlineNetView','bodbDownlineNetView';
EXEC sp_change_users_login 'Update_One','SqlLink','SqlLink';
EXEC sp_change_users_login 'Update_One','vnAffiliate','vnAffiliate';

USE Affiliate_MacauBet
GO
EXEC sp_change_users_login 'Update_One','bodbAdminNet','bodbAdminNet';
EXEC sp_change_users_login 'Update_One','bodbDownlineNet','bodbDownlineNet';
EXEC sp_change_users_login 'Update_One','bodbDownlineNetView','bodbDownlineNetView';
EXEC sp_change_users_login 'Update_One','SqlLink','SqlLink';
EXEC sp_change_users_login 'Update_One','vnAffiliate','vnAffiliate';

USE Affiliate_Spondemo
GO
EXEC sp_change_users_login 'Update_One','bodbAdminNet','bodbAdminNet';
EXEC sp_change_users_login 'Update_One','bodbDownlineNet','bodbDownlineNet';
EXEC sp_change_users_login 'Update_One','bodbDownlineNetView','bodbDownlineNetView';
EXEC sp_change_users_login 'Update_One','SqlLink','SqlLink';
EXEC sp_change_users_login 'Update_One','vnAffiliate','vnAffiliate';