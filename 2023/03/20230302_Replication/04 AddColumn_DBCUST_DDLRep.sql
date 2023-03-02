/*
	Task: DDL Alter table columns
	Run @ DBCUST
*/


/*<info serverAlias="DBCUST-CUSTDB"></info>*/
/*	
	Created: 20221012@Eden
	Task: DROP unsused columns on Custinfo tables [#179014]
	DB: DBCUST/CUSTDB and ALL REPLICATIONS
*/
--Drop Constraint of unused Columns
USE CUSTDB
GO
ALTER TABLE dbo.custInfo DROP CONSTRAINT DF_custInfo_DisableCasino --DisableCasino
GO
ALTER TABLE dbo.custInfo DROP CONSTRAINT DF_custInfo_SyncCasino --SyncCasino
GO
ALTER TABLE dbo.custInfo DROP CONSTRAINT DF_custInfo_DisableGoldDeluxe --DisableGoldDeluxe
GO
ALTER TABLE dbo.custInfo DROP CONSTRAINT DF_custInfo_HideGoldDeluxe --HideGoldDeluxe
GO
ALTER TABLE dbo.custInfo DROP CONSTRAINT DF_custInfo_MaxPerBall161 --MaxPerBall161
GO
ALTER TABLE dbo.custInfo DROP CONSTRAINT DF_custInfo_maxpermatch161 --maxpermatch161
GO
ALTER TABLE dbo.custInfo DROP CONSTRAINT DF_CustInfo_maxpermatch164 --maxpermatch164
GO
ALTER TABLE dbo.custInfo DROP CONSTRAINT DF_custInfo_MaxPerMatch99MP --MaxPerMatch99MP
GO
--Drop unused Columns
ALTER TABLE dbo.custinfo DROP COLUMN maxpermatch          
									,MaxPerMatch1MP       
									,maxpermatch2         
									,maxpermatch3         
									,maxpermatch5         
									,maxpermatch8         
									,maxpermatch10        
									,maxpermatch11        
									,maxpermatch12        
									,maxpermatch99        
									,MaxPerMatch99MP      
									,maxpermatch161       
									,MaxPerBall161        
									,maxpermatch164       
									,HideGoldDeluxe       
									,DisableGoldDeluxe    
									,DisableCasino        
									,SyncCasino 
GO

---------------------------------------------------------


/*<info serverAlias="DBCUST-CustDB"></info>*/
/*
	Created: 20221412@Evan
	DB:  DBCUST-CustDB
	Task: Drop column PJUnitPrice table Exchange
	https://nexdev.net/issues/181417
*/

USE CustDB
GO
ALTER TABLE dbo.Exchange DROP COLUMN PJUnitPrice
GO
-----------------------------------------------------------


/*<info serverAlias="DBCUST-CustDB"></info>*/
/*
	Created: 20230228@Johnson
	Task: Add new column autosuspend3 into custinfo for Auto suspend VR Basketball [redmine: #184339]
	DB: DBCUST/CustDB
*/

--Step 1: add column autosuspend3 into custinfo
--run at @DBCUST/CustDB
USE CustDB
GO
ALTER TABLE custinfo ADD autosuspend3 BIT
GO
--------------------------------------------------------------


/*<info serverAlias="DBCUST-CustDB"></info>*/
/*
	Created: 20221221@Tacy
	Task: 01. Add column SiteLabel on table Site
		 https://nexdev.net/issues/181596 [RedmineID: #181596]
	Database: DBCUST/CustDB
*/

USE CustDB
GO
ALTER TABLE [dbo].[Site] ADD SiteLabel VARCHAR(50) NULL
GO
-------------------------------------------------------------------


/*<info serverAlias="DBCUST-bodb_Licensee"></info>*/
/*
	Created: 20230228@Johnson
	Task: Database structure for Max Game, FGG, Jili commission for LAP [redmine: #182922]
	DB: DBCUST/bodb_Licensee
*/
USE bodb_Licensee
GO

ALTER TABLE LicenseeCustComm ADD MaxGameComm DECIMAL(9,8) NULL, CONSTRAINT [DF_LicenseeCustComm_MaxGameComm] DEFAULT ((0)) FOR [MaxGameComm]
GO
ALTER TABLE LicenseeCustComm ADD FGGComm DECIMAL(9,8) NULL, CONSTRAINT [DF_LicenseeCustComm_FGGComm] DEFAULT ((0)) FOR [FGGComm]
GO
ALTER TABLE LicenseeCustComm ADD JiliComm DECIMAL(9,8) NULL, CONSTRAINT [DF_LicenseeCustComm_JiliComm] DEFAULT ((0)) FOR [JiliComm]
GO

ALTER TABLE LicenseeGroupComm ADD MaxGameComm DECIMAL(9,8) NULL, CONSTRAINT [DF_LicenseeGroupComm_MaxGameComm] DEFAULT ((0)) FOR [MaxGameComm]
GO
ALTER TABLE LicenseeGroupComm ADD FGGComm DECIMAL(9,8) NULL, CONSTRAINT [DF_LicenseeGroupComm_FGGComm] DEFAULT ((0)) FOR [FGGComm]
GO
ALTER TABLE LicenseeGroupComm ADD JiliComm DECIMAL(9,8) NULL, CONSTRAINT [DF_LicenseeGroupComm_JiliComm] DEFAULT ((0)) FOR [JiliComm]
GO







