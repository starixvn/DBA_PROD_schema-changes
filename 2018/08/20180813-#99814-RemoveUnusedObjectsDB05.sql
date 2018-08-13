/*
	Creator:	20180813@Billy
	Task:		Drop unused objects on DB05.bodb02 - [Redmine: #99814]
	Server:		DB05
*/

--	BEGIN STEP 1:
--		Drop unused procedures - 13 objects
----------------------------------------------------------------------------------------------------

USE	bodb02;
GO

DROP PROCEDURE	dbo.[to be remove Age_CustomerSelOnlineList_Ag];
DROP PROCEDURE	dbo.[to be remove Age_CustomerSelOnlineList_MAg];
DROP PROCEDURE	dbo.[to be remove Age_CustomerSelOnlineList_SAg];
DROP PROCEDURE	dbo.[to be remove clearLogin];
DROP PROCEDURE	dbo.[to be remove Dot_Dep_OnUserQuery_Test];
DROP PROCEDURE	dbo.[to be remove GetTotalOnline];
DROP PROCEDURE	dbo.[to be remove GetTotalOnline_Report];
DROP PROCEDURE	dbo.[to be remove online_admin];
DROP PROCEDURE	dbo.[to be remove online_user];
DROP PROCEDURE	dbo.[to be remove online_usera];
DROP PROCEDURE	dbo.[to be remove online_userma];
DROP PROCEDURE	dbo.[to be remove sp_MSins_dbobettrans_thien];
DROP PROCEDURE	dbo.[to be remove Task_MissingCheck];
GO


--	BEGIN STEP 2:
--		Drop unused triggers - 1 object
----------------------------------------------------------------------------------------------------

USE	bodb02;
GO

DROP TRIGGER	dbo.TG_BalanceTrigger_ProcessData_20180630;
GO


--	BEGIN STEP 3:
--		Drop unused tables - 19 objects
----------------------------------------------------------------------------------------------------

USE	bodb02;
GO

DROP TABLE	dbo.[geoCountry_lukas];
DROP TABLE	dbo.[geoCountry_lukas2];
DROP TABLE	dbo.[to be remove answer];
DROP TABLE	dbo.[to be remove BalanceRecordJJ];
DROP TABLE	dbo.[to be remove bet_20160303];
DROP TABLE	dbo.[to be remove bettrans_lastcheck];
DROP TABLE	dbo.[to be remove bettrans_missing];
DROP TABLE	dbo.[to be remove br];
DROP TABLE	dbo.[to be remove brx];
DROP TABLE	dbo.[to be remove del_stakelevel];
DROP TABLE	dbo.[to be remove Jobs];
DROP TABLE	dbo.[to be remove jtrans];
DROP TABLE	dbo.[to be remove match_vivitmp];
DROP TABLE	dbo.[to be remove on_user];
DROP TABLE	dbo.[to be remove temp_cs];
DROP TABLE	dbo.[to be remove temp1];
DROP TABLE	dbo.[to be remove temp2];
DROP TABLE	dbo.[to be remove tmpLogBettrans];
DROP TABLE	dbo.[to be remove ViviTest];
GO