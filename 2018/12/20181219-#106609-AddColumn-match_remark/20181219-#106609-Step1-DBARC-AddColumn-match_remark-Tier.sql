/*
	Creator:	20181219@Billy
	Task:		Add column Tier to archive match_remark table - [Redmine: #106648]
	Server:		DBARC.bodb_Archive
*/


USE	bodb_Archive;
GO

--	BEGIN STEP 1:
--		Add column [Tier] to [match_remark]
----------------------------------------------------------------------------------------------------

ALTER TABLE dbo.match_remark ADD Tier TINYINT;
GO

--	BEGIN STEP 2:
--		Remove unsued [SettlementStatus] column from [match_remark]
--		This column contains only NULL value, so dropping it should be metadata operation only - Tested on MNL
----------------------------------------------------------------------------------------------------

ALTER TABLE dbo.match_remark DROP CONSTRAINT DF_match_remark_SettlementStatus;
ALTER TABLE dbo.match_remark DROP COLUMN SettlementStatus;
GO