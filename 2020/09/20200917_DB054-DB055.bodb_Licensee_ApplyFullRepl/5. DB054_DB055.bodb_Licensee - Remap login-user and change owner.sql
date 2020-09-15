/*
	Task: Remap login-user @bodb_Licensee after restoring
	Run on DB054, DB055
	
	--Check missing user
	select *
	from sys .sysusers
	where name not in(select name from db052.bodb_Licensee.sys .sysusers)
	
*/

USE bodb_Licensee
GO

EXEC sp_change_users_login 'update_one',bodbAdminNet,bodbAdminNet
EXEC sp_change_users_login 'update_one',vnteam,vnteam
EXEC sp_change_users_login 'update_one',bodbLicenseeNet,bodbLicenseeNet
EXEC sp_change_users_login 'update_one',vndba,vndba
EXEC sp_change_users_login 'update_one',SqlLink,SqlLink
EXEC sp_change_users_login 'update_one',Dot_Member,Dot_Member
EXEC sp_change_users_login 'update_one',Dot_Admin,Dot_Admin
EXEC sp_change_users_login 'update_one',bodbExtAccNet,bodbExtAccNet
EXEC sp_change_users_login 'update_one',RDCooper,RDCooper
EXEC sp_change_users_login 'update_one',RDVictor,RDVictor
EXEC sp_change_users_login 'update_one',vnHelen,vnHelen
EXEC sp_change_users_login 'update_one',Dot_Casino,Dot_Casino
EXEC sp_change_users_login 'update_one',vnRD,vnRD
EXEC sp_change_users_login 'update_one',VnAffiliate,VnAffiliate
EXEC sp_change_users_login 'update_one',DataSync,DataSync
EXEC sp_change_users_login 'update_one',bodbDownlineNet,bodbDownlineNet
EXEC sp_change_users_login 'update_one',RDJoy,RDJoy
EXEC sp_change_users_login 'update_one',vnSAS,vnSAS
EXEC sp_change_users_login 'update_one',dwrs2,dwrs2
EXEC sp_change_users_login 'update_one',rdsvntrack,rdsvntrack
EXEC sp_change_users_login 'update_one',vnBilly,vnBilly
EXEC sp_change_users_login 'update_one',vnBobby,vnBobby
GO

EXEC [bodb_Licensee].dbo.sp_changedbowner @loginame = N'sa', @map = false
GO