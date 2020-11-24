/*
	Task: Remove old columns after done copy data for new columns (DDL)
	Run @ DBCUST
*/

USE CustDB
GO

ALTER TABLE CustPTSetting3rd_Agent
DROP COLUMN SuperPT_BK, MasterPT_BK, AgentPT_BK, AutoSuperPT_BK, AutoMasterPT_BK, MinPT_BK, MaxPT_BK
GO
ALTER TABLE CustPTSetting3rd_Member
DROP COLUMN SuperPT_BK, MasterPT_BK, AgentPT_BK, AutoSuperPT_BK, AutoMasterPT_BK
GO


