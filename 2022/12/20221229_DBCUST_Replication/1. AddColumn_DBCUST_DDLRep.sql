/*
	Task: DDL Alter add table columns
	Run @ DBCUST
*/

USE [CustDB]
GO

ALTER TABLE custinfo ADD CCNonSports SMALLINT
GO

ALTER TABLE VRLeagueGroup ADD LeagueGroupOrder SMALLINT
GO

ALTER TABLE ProductSettingDetail ADD SubType TINYINT NULL
GO
