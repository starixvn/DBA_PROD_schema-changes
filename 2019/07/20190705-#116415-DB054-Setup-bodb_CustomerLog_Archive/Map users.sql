
/*
	Task: #116415-DB054-Setup-bodb_CustomerLog_Archive
	Step: Attach db
*/
USE bodb_CustomerLog_Archive
GO

EXEC sp_change_users_login 'Update_One','bodbAdminNet', 'bodbAdminNet'
EXEC sp_change_users_login 'Update_One','bodbDownlineNet', 'bodbDownlineNet'
EXEC sp_change_users_login 'Update_One','bodbDownlineNetView', 'bodbDownlineNetView'
EXEC sp_change_users_login 'Update_One','bodbExtAccNet', 'bodbExtAccNet'
EXEC sp_change_users_login 'Update_One','bodbLicenseeNet', 'bodbLicenseeNet'
EXEC sp_change_users_login 'Update_One','Dot_Admin', 'Dot_Admin'
EXEC sp_change_users_login 'Update_One','Dot_Member', 'Dot_Member'
EXEC sp_change_users_login 'Update_One','Dot_Casino', 'Dot_Casino'

EXEC sp_change_users_login 'Update_One','vnteam', 'vnteam'
EXEC sp_change_users_login 'Update_One','SqlLink', 'SqlLink'