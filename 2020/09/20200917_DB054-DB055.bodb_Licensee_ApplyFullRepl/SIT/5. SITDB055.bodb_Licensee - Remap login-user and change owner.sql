/*
	Task: Remap login-user @bodb_Licensee after restoring
	Run on SIT Env - SITDB055, need create folder AFF, BA, DW_rpt_Betting, OWA, rptLicWL in G:\USER_DB\bodb_Licensee\
	
	--Check missing user
	select *
	from sys .sysusers
	where name not in(select name from db052.bodb_Licensee.sys .sysusers)
	
*/

USE bodb_Licensee
GO

EXEC sp_change_users_login 'update_one',[vnteam],[vnteam]
EXEC sp_change_users_login 'update_one',[vnRD],[vnRD]
EXEC sp_change_users_login 'update_one',[vndba],[vndba]
EXEC sp_change_users_login 'update_one',[VnAffiliate],[VnAffiliate]
EXEC sp_change_users_login 'update_one',[SqlLink],[SqlLink]
EXEC sp_change_users_login 'update_one',[RDVictor],[RDVictor]
EXEC sp_change_users_login 'update_one',[vnelodie],[vnelodie]
EXEC sp_change_users_login 'update_one',[RDKai],[RDKai]
EXEC sp_change_users_login 'update_one',[vndbaDeployment],[vndbaDeployment]
EXEC sp_change_users_login 'update_one',[RDCooper],[RDCooper]
EXEC sp_change_users_login 'update_one',[RDBenLin],[RDBenLin]
EXEC sp_change_users_login 'update_one',[Dot_Member],[Dot_Member]
EXEC sp_change_users_login 'update_one',[Dot_Casino],[Dot_Casino]
EXEC sp_change_users_login 'update_one',[Dot_Admin],[Dot_Admin]
EXEC sp_change_users_login 'update_one',[DataSync],[DataSync]
EXEC sp_change_users_login 'update_one',[bodbLicenseeNet],[bodbLicenseeNet]
EXEC sp_change_users_login 'update_one',[bodbExtAccNet],[bodbExtAccNet]
EXEC sp_change_users_login 'update_one',[bodbAdminNet],[bodbAdminNet]
EXEC sp_change_users_login 'update_one',[rdsvntrack],[rdsvntrack]
EXEC sp_change_users_login 'update_one',[vnkathy],[vnkathy]
EXEC sp_change_users_login 'update_one',[RDCharlie.chang],[RDCharlie.chang]
EXEC sp_change_users_login 'update_one',[PMJessica.chen],[PMJessica.chen]
EXEC sp_change_users_login 'update_one',[PMSteve.liao],[PMSteve.liao]
EXEC sp_change_users_login 'update_one',[PMAngela.chan],[PMAngela.chan]
EXEC sp_change_users_login 'update_one',[PMAgnes.lee],[PMAgnes.lee]
EXEC sp_change_users_login 'update_one',[PMJackal.chien],[PMJackal.chien]
EXEC sp_change_users_login 'update_one',[PMAriel.Lin],[PMAriel.Lin]
EXEC sp_change_users_login 'update_one',[PMBert.chang],[PMBert.chang]
EXEC sp_change_users_login 'update_one',[PMMichael.su],[PMMichael.su]
EXEC sp_change_users_login 'update_one',[PMAriel.Chang],[PMAriel.Chang]
EXEC sp_change_users_login 'update_one',[PMThomas.Chou],[PMThomas.Chou]
EXEC sp_change_users_login 'update_one',[PMJacky.wu],[PMJacky.wu]
EXEC sp_change_users_login 'update_one',[BARyan.Chou],[BARyan.Chou]
EXEC sp_change_users_login 'update_one',[vnsophia],[vnsophia]
EXEC sp_change_users_login 'update_one',[vnhelen],[vnhelen]
EXEC sp_change_users_login 'update_one',[vnjamie],[vnjamie]
EXEC sp_change_users_login 'update_one',[bodbDownlineNet],[bodbDownlineNet]
EXEC sp_change_users_login 'update_one',[dwrs2],[dwrs2]
GO

EXEC [bodb_Licensee].dbo.sp_changedbowner @loginame = N'sa', @map = false
GO