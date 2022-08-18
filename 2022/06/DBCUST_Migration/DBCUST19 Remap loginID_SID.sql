/*
	Task - Upgrade SQL Server DBCUST to 2019: Remap loginID - SID after restoring DBs
	Run on new server DBCUST19
*/


USE [AUTHDB]
GO
ALTER USER [nagios] WITH LOGIN = [nagios];
ALTER USER [Auth_user] WITH LOGIN = [Auth_user];
ALTER USER [RDAlvin] WITH LOGIN = [RDAlvin];
ALTER USER [RDMei] WITH LOGIN = [RDMei];
ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
ALTER USER [vnPatrick] WITH LOGIN = [vnPatrick];
GO


USE [bodb_CustomerLog]
GO
ALTER USER [RDVincent] WITH LOGIN = [RDVincent];
ALTER USER [bodbAdminNet] WITH LOGIN = [bodbAdminNet];
ALTER USER [bodbDownlineNet] WITH LOGIN = [bodbDownlineNet];
ALTER USER [bodbDownlineNetView] WITH LOGIN = [bodbDownlineNetView];
ALTER USER [bodbExtAccNet] WITH LOGIN = [bodbExtAccNet];
ALTER USER [bodbLicenseeNet] WITH LOGIN = [bodbLicenseeNet];
ALTER USER [bodbRMSNet] WITH LOGIN = [bodbRMSNet];
ALTER USER [Dot_Admin] WITH LOGIN = [Dot_Admin];
ALTER USER [Dot_CoreAPI] WITH LOGIN = [Dot_CoreAPI];
ALTER USER [Dot_Member] WITH LOGIN = [Dot_Member];
ALTER USER [RDAlfie] WITH LOGIN = [RDAlfie];
ALTER USER [RDAlvin] WITH LOGIN = [RDAlvin];
ALTER USER [RDCharlie] WITH LOGIN = [RDCharlie];
ALTER USER [RDCooper] WITH LOGIN = [RDCooper];
ALTER USER [RDLeon] WITH LOGIN = [RDLeon];
ALTER USER [RDMei] WITH LOGIN = [RDMei];
ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
ALTER USER [RDSylvia] WITH LOGIN = [RDSylvia];
ALTER USER [RDVictor] WITH LOGIN = [RDVictor];
ALTER USER [RDVivi1] WITH LOGIN = [RDVivi1];
ALTER USER [SqlLink] WITH LOGIN = [SqlLink];
ALTER USER [vnBilly] WITH LOGIN = [vnBilly];
ALTER USER [vnBobby] WITH LOGIN = [vnBobby];
ALTER USER [vnBrice] WITH LOGIN = [vnBrice];
ALTER USER [vnDaniel] WITH LOGIN = [vnDaniel];
ALTER USER [vnDBA] WITH LOGIN = [vnDBA];
ALTER USER [vnHelen] WITH LOGIN = [vnHelen];
ALTER USER [vnPatrick] WITH LOGIN = [vnPatrick];
ALTER USER [vnteam] WITH LOGIN = [vnteam];
ALTER USER [vntraceteam] WITH LOGIN = [vntraceteam];
GO


USE [bodb_Licensee]
GO
ALTER USER [RDVincent] WITH LOGIN = [RDVincent];
ALTER USER [bodbAdminNet] WITH LOGIN = [bodbAdminNet];
ALTER USER [bodbDownlineNet] WITH LOGIN = [bodbDownlineNet];
ALTER USER [bodbExtAccNet] WITH LOGIN = [bodbExtAccNet];
ALTER USER [bodbLicenseeNet] WITH LOGIN = [bodbLicenseeNet];
ALTER USER [Dot_Admin] WITH LOGIN = [Dot_Admin];
ALTER USER [Dot_Admin_Portal] WITH LOGIN = [Dot_Admin_Portal];
ALTER USER [Dot_Casino] WITH LOGIN = [Dot_Casino];
ALTER USER [Dot_Member] WITH LOGIN = [Dot_Member];
ALTER USER [RDAlfie] WITH LOGIN = [RDAlfie];
ALTER USER [RDAlvin] WITH LOGIN = [RDAlvin];
ALTER USER [RDCharlie] WITH LOGIN = [RDCharlie];
ALTER USER [RDLeon] WITH LOGIN = [RDLeon];
ALTER USER [RDMei] WITH LOGIN = [RDMei];
ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
ALTER USER [RDSylvia] WITH LOGIN = [RDSylvia];
ALTER USER [RDVictor] WITH LOGIN = [RDVictor];
ALTER USER [SqlLink] WITH LOGIN = [SqlLink];
ALTER USER [thien] WITH LOGIN = [thien];
ALTER USER [vnBilly] WITH LOGIN = [vnBilly];
ALTER USER [vnBobby] WITH LOGIN = [vnBobby];
ALTER USER [vnBrice] WITH LOGIN = [vnBrice];
ALTER USER [vnDaniel] WITH LOGIN = [vnDaniel];
ALTER USER [vnDBA] WITH LOGIN = [vnDBA];
ALTER USER [vnHelen] WITH LOGIN = [vnHelen];
ALTER USER [vnPatrick] WITH LOGIN = [vnPatrick];
ALTER USER [vnteam] WITH LOGIN = [vnteam];
GO


USE [CustDB]
GO
ALTER USER [RDVincent] WITH LOGIN = [RDVincent];
ALTER USER [API_Vender] WITH LOGIN = [API_Vender];
ALTER USER [bodbadmin] WITH LOGIN = [bodbadmin];
ALTER USER [bodbAdminNet] WITH LOGIN = [bodbAdminNet];
ALTER USER [bodbDownlineNet] WITH LOGIN = [bodbDownlineNet];
ALTER USER [bodbDownlineNetView] WITH LOGIN = [bodbDownlineNetView];
ALTER USER [bodbExtAccNet] WITH LOGIN = [bodbExtAccNet];
ALTER USER [bodbLicenseeNet] WITH LOGIN = [bodbLicenseeNet];
ALTER USER [bodbPolicyNetView] WITH LOGIN = [bodbPolicyNetView];
ALTER USER [bodbRMSNet] WITH LOGIN = [bodbRMSNet];
ALTER USER [CNS_Sales] WITH LOGIN = [CNS_Sales];
ALTER USER [DataSync] WITH LOGIN = [DataSync];
ALTER USER [Dot_3rdparty] WITH LOGIN = [Dot_3rdparty];
ALTER USER [Dot_Admin] WITH LOGIN = [Dot_Admin];
ALTER USER [Dot_BetLab] WITH LOGIN = [Dot_BetLab];
ALTER USER [Dot_Bonus] WITH LOGIN = [Dot_Bonus];
ALTER USER [Dot_Casino] WITH LOGIN = [Dot_Casino];
ALTER USER [Dot_CoreAPI] WITH LOGIN = [Dot_CoreAPI];
ALTER USER [Dot_Evolution] WITH LOGIN = [Dot_Evolution];
ALTER USER [Dot_Intg] WITH LOGIN = [Dot_Intg];
ALTER USER [Dot_Member] WITH LOGIN = [Dot_Member];
ALTER USER [Dot_P2P] WITH LOGIN = [Dot_P2P];
ALTER USER [ibcrep] WITH LOGIN = [ibcrep];
ALTER USER [Member2API] WITH LOGIN = [Member2API];
ALTER USER [Portal] WITH LOGIN = [Portal];
ALTER USER [RDAlfie] WITH LOGIN = [RDAlfie];
ALTER USER [RDAlvin] WITH LOGIN = [RDAlvin];
ALTER USER [RDBenLee] WITH LOGIN = [RDBenLee];
ALTER USER [RDCharlie] WITH LOGIN = [RDCharlie];
ALTER USER [RDCooper] WITH LOGIN = [RDCooper];
ALTER USER [RDLeon] WITH LOGIN = [RDLeon];
ALTER USER [RDMei] WITH LOGIN = [RDMei];
ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
ALTER USER [RDSylvia] WITH LOGIN = [RDSylvia];
ALTER USER [RDVictor] WITH LOGIN = [RDVictor];
ALTER USER [RDVivi1] WITH LOGIN = [RDVivi1];
ALTER USER [repl_ap] WITH LOGIN = [repl_ap];
ALTER USER [SqlLink] WITH LOGIN = [SqlLink];
ALTER USER [thien] WITH LOGIN = [thien];
ALTER USER [twteam] WITH LOGIN = [twteam];
ALTER USER [vnBilly] WITH LOGIN = [vnBilly];
ALTER USER [vnBobby] WITH LOGIN = [vnBobby];
ALTER USER [vnBrice] WITH LOGIN = [vnBrice];
ALTER USER [vnDaniel] WITH LOGIN = [vnDaniel];
ALTER USER [vnDBA] WITH LOGIN = [vnDBA];
ALTER USER [vnHelen] WITH LOGIN = [vnHelen];
ALTER USER [vnPatrick] WITH LOGIN = [vnPatrick];
ALTER USER [vnteam] WITH LOGIN = [vnteam];
GO


USE [IPDB]
GO
ALTER USER [RDVincent] WITH LOGIN = [RDVincent];
ALTER USER [bodbadmin] WITH LOGIN = [bodbadmin];
ALTER USER [bodbAdminNet] WITH LOGIN = [bodbAdminNet];
ALTER USER [bodbDownlineNet] WITH LOGIN = [bodbDownlineNet];
ALTER USER [bodbDownlineNetView] WITH LOGIN = [bodbDownlineNetView];
ALTER USER [bodbExtAccNet] WITH LOGIN = [bodbExtAccNet];
ALTER USER [bodbLicenseeNet] WITH LOGIN = [bodbLicenseeNet];
ALTER USER [Dot_Admin] WITH LOGIN = [Dot_Admin];
ALTER USER [Dot_Member] WITH LOGIN = [Dot_Member];
ALTER USER [RDAlfie] WITH LOGIN = [RDAlfie];
ALTER USER [RDAlvin] WITH LOGIN = [RDAlvin];
ALTER USER [RDCharlie] WITH LOGIN = [RDCharlie];
ALTER USER [RDCooper] WITH LOGIN = [RDCooper];
ALTER USER [RDLeon] WITH LOGIN = [RDLeon];
ALTER USER [RDMei] WITH LOGIN = [RDMei];
ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
ALTER USER [RDSylvia] WITH LOGIN = [RDSylvia];
ALTER USER [RDVictor] WITH LOGIN = [RDVictor];
ALTER USER [RDVivi1] WITH LOGIN = [RDVivi1];
ALTER USER [SqlLink] WITH LOGIN = [SqlLink];
ALTER USER [thien] WITH LOGIN = [thien];
ALTER USER [vnBilly] WITH LOGIN = [vnBilly];
ALTER USER [vnBobby] WITH LOGIN = [vnBobby];
ALTER USER [vnBrice] WITH LOGIN = [vnBrice];
ALTER USER [vnDaniel] WITH LOGIN = [vnDaniel];
ALTER USER [vnDBA] WITH LOGIN = [vnDBA];
ALTER USER [vnPatrick] WITH LOGIN = [vnPatrick];
ALTER USER [vnteam] WITH LOGIN = [vnteam];
ALTER USER [vntraceteam] WITH LOGIN = [vntraceteam];
GO


USE [MonDB]
GO
ALTER USER [RDVincent] WITH LOGIN = [RDVincent];
ALTER USER [bodbAdminNet] WITH LOGIN = [bodbAdminNet];
--ALTER USER [DBCUST1\DBA_Scheduler] WITH LOGIN = [DBCUST1\DBA_Scheduler];
--ALTER USER [DBCUST2\DBA_Scheduler] WITH LOGIN = [DBCUST2\DBA_Scheduler];
ALTER USER [DBCUSTN1\DBA_Scheduler] WITH LOGIN = [DBCUSTN1\DBA_Scheduler];
ALTER USER [DBCUSTN2\DBA_Scheduler] WITH LOGIN = [DBCUSTN2\DBA_Scheduler];
ALTER USER [MonDB_User] WITH LOGIN = [MonDB_User];
ALTER USER [ONEWORKS\RDBenLee] WITH LOGIN = [ONEWORKS\RDBenLee];
ALTER USER [ONEWORKS\RDCooper] WITH LOGIN = [ONEWORKS\RDCooper];
ALTER USER [ONEWORKS\RDSteven] WITH LOGIN = [ONEWORKS\RDSteven];
ALTER USER [ONEWORKS\RDSylvia] WITH LOGIN = [ONEWORKS\RDSylvia];
ALTER USER [ONEWORKS\RDVictor] WITH LOGIN = [ONEWORKS\RDVictor];
ALTER USER [ONEWORKS\RDVincent] WITH LOGIN = [ONEWORKS\RDVincent];
ALTER USER [ONEWORKS\RDVivi] WITH LOGIN = [ONEWORKS\RDVivi];
ALTER USER [ONEWORKS\sasrp] WITH LOGIN = [ONEWORKS\sasrp];
ALTER USER [ONEWORKS\Thien.net] WITH LOGIN = [ONEWORKS\Thien.net];
ALTER USER [ONEWORKS\Viet] WITH LOGIN = [ONEWORKS\Viet];
ALTER USER [ONEWORKS\vnDaniel] WITH LOGIN = [ONEWORKS\vnDaniel];
ALTER USER [RDAlfie] WITH LOGIN = [RDAlfie];
ALTER USER [RDAlvin] WITH LOGIN = [RDAlvin];
ALTER USER [RDBenLee] WITH LOGIN = [RDBenLee];
ALTER USER [RDCharlie] WITH LOGIN = [RDCharlie];
ALTER USER [RDLeon] WITH LOGIN = [RDLeon];
ALTER USER [RDMei] WITH LOGIN = [RDMei];
ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
ALTER USER [RDSylvia] WITH LOGIN = [RDSylvia];
ALTER USER [RDVictor] WITH LOGIN = [RDVictor];
ALTER USER [SqlLink] WITH LOGIN = [SqlLink];
ALTER USER [thien] WITH LOGIN = [thien];
ALTER USER [vnBilly] WITH LOGIN = [vnBilly];
ALTER USER [vnBobby] WITH LOGIN = [vnBobby];
ALTER USER [vnBrice] WITH LOGIN = [vnBrice];
ALTER USER [vnDaniel] WITH LOGIN = [vnDaniel];
ALTER USER [vnDBA] WITH LOGIN = [vnDBA];
ALTER USER [vnHelen] WITH LOGIN = [vnHelen];
ALTER USER [vnPatrick] WITH LOGIN = [vnPatrick];
ALTER USER [vnteam] WITH LOGIN = [vnteam];
GO


USE [N88_UserControl]
GO
ALTER USER [RDVincent] WITH LOGIN = [RDVincent];
ALTER USER [bodbAdminNet] WITH LOGIN = [bodbAdminNet];
ALTER USER [bodbLicenseeNet] WITH LOGIN = [bodbLicenseeNet];
ALTER USER [RDAlfie] WITH LOGIN = [RDAlfie];
ALTER USER [RDAlvin] WITH LOGIN = [RDAlvin];
ALTER USER [RDCharlie] WITH LOGIN = [RDCharlie];
ALTER USER [RDLeon] WITH LOGIN = [RDLeon];
ALTER USER [RDMei] WITH LOGIN = [RDMei];
ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
ALTER USER [RDSylvia] WITH LOGIN = [RDSylvia];
ALTER USER [RDVictor] WITH LOGIN = [RDVictor];
ALTER USER [SqlLink] WITH LOGIN = [SqlLink];
ALTER USER [thien] WITH LOGIN = [thien];
ALTER USER [vnBobby] WITH LOGIN = [vnBobby];
ALTER USER [vnBrice] WITH LOGIN = [vnBrice];
ALTER USER [vnDaniel] WITH LOGIN = [vnDaniel];
ALTER USER [vnDBA] WITH LOGIN = [vnDBA];
ALTER USER [vnPatrick] WITH LOGIN = [vnPatrick];
ALTER USER [vnteam] WITH LOGIN = [vnteam];
GO


USE [NAP_UserControl]
GO
ALTER USER [RDVincent] WITH LOGIN = [RDVincent];
ALTER USER [bodbAdminNet] WITH LOGIN = [bodbAdminNet];
ALTER USER [BODBDownlineNet] WITH LOGIN = [BODBDownlineNet];
ALTER USER [BODBDownlineNetView] WITH LOGIN = [BODBDownlineNetView];
ALTER USER [bodbExtAccNet] WITH LOGIN = [bodbExtAccNet];
ALTER USER [bodbLicenseeNet] WITH LOGIN = [bodbLicenseeNet];
ALTER USER [bodbPolicyNetView] WITH LOGIN = [bodbPolicyNetView];
ALTER USER [Dot_Member] WITH LOGIN = [Dot_Member];
ALTER USER [RDAlfie] WITH LOGIN = [RDAlfie];
ALTER USER [RDAlvin] WITH LOGIN = [RDAlvin];
ALTER USER [RDCharlie] WITH LOGIN = [RDCharlie];
ALTER USER [RDLeon] WITH LOGIN = [RDLeon];
ALTER USER [RDMei] WITH LOGIN = [RDMei];
ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
ALTER USER [RDSylvia] WITH LOGIN = [RDSylvia];
ALTER USER [RDVictor] WITH LOGIN = [RDVictor];
ALTER USER [SqlLink] WITH LOGIN = [SqlLink];
ALTER USER [thien] WITH LOGIN = [thien];
ALTER USER [vnBilly] WITH LOGIN = [vnBilly];
ALTER USER [vnBobby] WITH LOGIN = [vnBobby];
ALTER USER [vnBrice] WITH LOGIN = [vnBrice];
ALTER USER [vnDaniel] WITH LOGIN = [vnDaniel];
ALTER USER [vnDBA] WITH LOGIN = [vnDBA];
ALTER USER [vnPatrick] WITH LOGIN = [vnPatrick];
ALTER USER [vnteam] WITH LOGIN = [vnteam];
GO


USE [SiteConfig]
GO
ALTER USER [RDVincent] WITH LOGIN = [RDVincent];
ALTER USER [bodbAdminNet] WITH LOGIN = [bodbAdminNet];
ALTER USER [BODBDownlineNet] WITH LOGIN = [BODBDownlineNet];
ALTER USER [BODBDownlineNetView] WITH LOGIN = [BODBDownlineNetView];
ALTER USER [bodbExtAccNet] WITH LOGIN = [bodbExtAccNet];
ALTER USER [bodbLicenseeNet] WITH LOGIN = [bodbLicenseeNet];
ALTER USER [bodbPolicyNetView] WITH LOGIN = [bodbPolicyNetView];
ALTER USER [Dot_Member] WITH LOGIN = [Dot_Member];
ALTER USER [RDAlfie] WITH LOGIN = [RDAlfie];
ALTER USER [RDAlvin] WITH LOGIN = [RDAlvin];
ALTER USER [RDCharlie] WITH LOGIN = [RDCharlie];
ALTER USER [RDLeon] WITH LOGIN = [RDLeon];
ALTER USER [RDMei] WITH LOGIN = [RDMei];
ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
ALTER USER [RDSylvia] WITH LOGIN = [RDSylvia];
ALTER USER [RDVictor] WITH LOGIN = [RDVictor];
ALTER USER [SqlLink] WITH LOGIN = [SqlLink];
ALTER USER [thien] WITH LOGIN = [thien];
ALTER USER [vnBilly] WITH LOGIN = [vnBilly];
ALTER USER [vnBobby] WITH LOGIN = [vnBobby];
ALTER USER [vnBrice] WITH LOGIN = [vnBrice];
ALTER USER [vnDaniel] WITH LOGIN = [vnDaniel];
ALTER USER [vnDBA] WITH LOGIN = [vnDBA];
ALTER USER [vnPatrick] WITH LOGIN = [vnPatrick];
ALTER USER [vnteam] WITH LOGIN = [vnteam];
GO