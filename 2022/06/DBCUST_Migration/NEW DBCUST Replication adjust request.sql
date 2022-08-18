/*
	Task: Add new columns DDL to tables in Replication
	Run on DBCUST-CUSTDB
	--ATTENTION!! Must follow comments run script step by step below
*/

--============================================================================================
--1. Add new columns to table ProductSettingDetail
USE CUSTDB
GO
ALTER TABLE ProductSettingDetail ADD ProductSettingID INT , Parent_ProductSettingID INT
GO

--ATTENTION: Must wait for the DDL repl command DONE apply on all Subs

-- UPDATE ProductSettingDetail.ProductSettingID
;WITH TMP AS(
SELECT SettingType, SportType, BetType, IsLive
	, RN = ROW_NUMBER() OVER( ORDER BY SettingType, SportType, BetType, IsLive)
FROM ProductSettingDetail WITH(NOLOCK)
)
UPDATE p
SET p.ProductSettingID = t.RN
FROM ProductSettingDetail p WITH(ROWLOCK,UPDLOCK)
	INNER JOIN TMP t 
		ON t.SettingType = p.SettingType
		AND t.SportType = p.SportType
		AND t.IsLive = p.IsLive
		AND t.BetType = p.BetType

--ATTENTION: Must wait for the repl data command DONE apply on all Subs

--Set UNIQUE for ProductSettingID
ALTER TABLE ProductSettingDetail ALTER COLUMN  ProductSettingID INT NOT NULL
GO
ALTER TABLE ProductSettingDetail ADD CONSTRAINT UQ_ProductSettingID UNIQUE (ProductSettingID)
GO
----------------------------------------------------------


--============================================================================================
--2. Add new columns to table StakeLevelGroupDetail, Dep_StakeLevelGroupDetail
USE CustDB
GO
ALTER TABLE StakeLevelGroupDetail ADD MaxGameStake [decimal](19, 8) NULL;
GO
ALTER TABLE Dep_StakeLevelGroupDetail ADD MaxGameStake [decimal](19, 8) NULL;
