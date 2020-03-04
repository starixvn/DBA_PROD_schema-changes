/*
	Task: Alter tables in Replication - DDL commands
	DB: DBCUST/CustDB

*/

USE CustDB
GO

--Drop constraint 
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_MaxPerMatch151_AU
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_DisableOpenTote
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_MaxPerMatch152_UK
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_Maxpermatch151_OT
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_MaxPerMatch152_AU
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_DisableBingo
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_MaxPerMatch153_AU
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_SyncBingo
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_Disable151_AU
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_Disable152_UK
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_Disable152_AU
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_CustInfo_DisableLiveCasino
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_CustInfo_SyncLiveCasino
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_maxpermatch183
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_Disable153_AU
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_CustInfo_IsAutoResetP2P
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_maxpermatch185
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_CustInfo_DisableP2P
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_CustInfo_DisableFunP2P
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_DisableBinaryOptions
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_maxpermatch181
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_isAutoResetLiveCasino
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_MaxWinLiveCasino
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_CustInfo_MaxTransferP2P
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custinfo_DisableMicrogameLC
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custinfo_DisableMicrogameRNG
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_maxpermatch182
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_DisableVirtualSports
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_HideVirtualSports
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_maxpermatch180
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_DisableHRFixedOdds
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_maxpermatch186
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_maxpermatch154
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_DisableCasinoBonus
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custinfo_MaxPerMatch44
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_DisableHorseRacing
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_DisableFinancial
GO
ALTER TABLE dbo.Custinfo DROP CONSTRAINT DF_custInfo_maxpermatch184
GO

--> Drop column
ALTER TABLE dbo.Custinfo DROP COLUMN Disable151_AU
GO
ALTER TABLE dbo.Custinfo DROP COLUMN Disable152_AU
GO
ALTER TABLE dbo.Custinfo DROP COLUMN Disable152_UK
GO
ALTER TABLE dbo.Custinfo DROP COLUMN Disable153_AU
GO
ALTER TABLE dbo.Custinfo DROP COLUMN DisableBinaryOptions
GO
ALTER TABLE dbo.Custinfo DROP COLUMN DisableBingo
GO
ALTER TABLE dbo.Custinfo DROP COLUMN DisableCasinoBonus
GO
ALTER TABLE dbo.Custinfo DROP COLUMN DisableFinancial
GO
ALTER TABLE dbo.Custinfo DROP COLUMN DisableFunP2P
GO
ALTER TABLE dbo.Custinfo DROP COLUMN DisableHorseRacing
GO
ALTER TABLE dbo.Custinfo DROP COLUMN DisableHRFixedOdds
GO
ALTER TABLE dbo.Custinfo DROP COLUMN DisableLiveCasino
GO
ALTER TABLE dbo.Custinfo DROP COLUMN DisableMicrogameLC
GO
ALTER TABLE dbo.Custinfo DROP COLUMN DisableMicrogameRNG
GO
ALTER TABLE dbo.Custinfo DROP COLUMN DisableOpenTote
GO
ALTER TABLE dbo.Custinfo DROP COLUMN DisableP2P
GO
ALTER TABLE dbo.Custinfo DROP COLUMN DisableVirtualSports
GO
ALTER TABLE dbo.Custinfo DROP COLUMN HideVirtualSports
GO
ALTER TABLE dbo.Custinfo DROP COLUMN isAutoResetLiveCasino
GO
ALTER TABLE dbo.Custinfo DROP COLUMN IsAutoResetP2P
GO
ALTER TABLE dbo.Custinfo DROP COLUMN maxpermatch151
GO
ALTER TABLE dbo.Custinfo DROP COLUMN MaxPerMatch151_AU
GO
ALTER TABLE dbo.Custinfo DROP COLUMN maxpermatch151_OT
GO
ALTER TABLE dbo.Custinfo DROP COLUMN MaxPerMatch152_AU
GO
ALTER TABLE dbo.Custinfo DROP COLUMN MaxPerMatch152_UK
GO
ALTER TABLE dbo.Custinfo DROP COLUMN MaxPerMatch153_AU
GO
ALTER TABLE dbo.Custinfo DROP COLUMN maxpermatch154
GO
ALTER TABLE dbo.Custinfo DROP COLUMN maxpermatch180
GO
ALTER TABLE dbo.Custinfo DROP COLUMN maxpermatch181
GO
ALTER TABLE dbo.Custinfo DROP COLUMN maxpermatch182
GO
ALTER TABLE dbo.Custinfo DROP COLUMN maxpermatch183
GO
ALTER TABLE dbo.Custinfo DROP COLUMN maxpermatch184
GO
ALTER TABLE dbo.Custinfo DROP COLUMN maxpermatch185
GO
ALTER TABLE dbo.Custinfo DROP COLUMN maxpermatch186
GO
ALTER TABLE dbo.Custinfo DROP COLUMN maxpermatch201
GO
ALTER TABLE dbo.Custinfo DROP COLUMN MaxPerMatch44
GO
ALTER TABLE dbo.Custinfo DROP COLUMN MaxtransferP2P
GO
ALTER TABLE dbo.Custinfo DROP COLUMN MaxWinLiveCasino
GO
ALTER TABLE dbo.Custinfo DROP COLUMN SyncBingo
GO
ALTER TABLE dbo.Custinfo DROP COLUMN SyncLiveCasino
GO


----------------------------
ALTER TABLE ProblemAccount ADD isMarkVoid BIT NULL CONSTRAINT [DF_ProblemAccount_isMarkVoid] DEFAULT ((0))
GO
ALTER TABLE ProblemAccount ADD Matchid1 INT NULL
GO
ALTER TABLE ProblemAccount ADD Matchid2 INT NULL
GO
ALTER TABLE ProblemAccount ADD SubIssueTypeId TINYINT
GO


-------------------
USE bodb_Licensee
GO
ALTER TABLE Licensees ADD IsAcknowledgement BIT NULL CONSTRAINT [DF_Licensees_IsAcknowledgement] DEFAULT ((0))
GO