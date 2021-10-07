/*
	Task: Remap loginID-SID
	Run on TMPDBDW
*/
USE bodb02
GO
EXEC sp_change_users_login 'update_one','dwrs','dwrs'
EXEC sp_change_users_login 'update_one','phuc','phuc'
EXEC sp_change_users_login 'update_one','vnteam','vnteam'
EXEC sp_change_users_login 'update_one','vnDon','vnDon'
EXEC sp_change_users_login 'update_one','SqlLink','SqlLink'
EXEC sp_change_users_login 'update_one','RDCooper','RDCooper'
EXEC sp_change_users_login 'update_one','RDVictor','RDVictor'
EXEC sp_change_users_login 'update_one','bodbAdminNet','bodbAdminNet'
EXEC sp_change_users_login 'update_one','bodbLicenseeNet','bodbLicenseeNet'
EXEC sp_change_users_login 'update_one','vnTom','vnTom'
EXEC sp_change_users_login 'update_one','dwrs2','dwrs2'
EXEC sp_change_users_login 'update_one','vndba','vndba'
EXEC sp_change_users_login 'update_one','bodbSPUNet','bodbSPUNet'
EXEC sp_change_users_login 'update_one','rdsvntrack','rdsvntrack'
EXEC sp_change_users_login 'update_one','vnDominic','vnDominic'
EXEC sp_change_users_login 'update_one','vnHelen','vnHelen'
EXEC sp_change_users_login 'update_one','vnBobby','vnBobby'
EXEC sp_change_users_login 'update_one','RDCharlie','RDCharlie'
EXEC sp_change_users_login 'update_one','vnBrice','vnBrice'


---------------------------------------------------------------------------------
USE MonDB
GO
EXEC sp_change_users_login 'update_one','MonDB_User','MonDB_User'
EXEC sp_change_users_login 'update_one','bodbAdminNet','bodbAdminNet'
EXEC sp_change_users_login 'update_one','rdsvntrack','rdsvntrack'
EXEC sp_change_users_login 'update_one','vnteam','vnteam'
EXEC sp_change_users_login 'update_one','SqlLink','SqlLink'
EXEC sp_change_users_login 'update_one','vnBilly','vnBilly'
EXEC sp_change_users_login 'update_one','vnHelen','vnHelen'
EXEC sp_change_users_login 'update_one','vnBobby','vnBobby'
EXEC sp_change_users_login 'update_one','RDCharlie','RDCharlie'
EXEC sp_change_users_login 'update_one','vnBrice','vnBrice'

EXEC sp_change_users_login 'update_one','DBDw\DBA_Scheduler','DBDw\DBA_Scheduler'