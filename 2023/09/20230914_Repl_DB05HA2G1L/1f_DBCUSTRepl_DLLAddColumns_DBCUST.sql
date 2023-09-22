/*
	Task: Drop & add columns (DDL) for various tables from main DBCUST
	Run on DBCUST
*/

/*<info serverAlias="DBCUST-CustDB"></info>*/
/*
	Created: Winfred
	Date: 20230828
	Task:  Deposit - Support Jolly Sports RedmineID:#193161
	DB: DBCust/CustDB and all replicated server of table Site
*/

USE CustDB
GO

ALTER TABLE dbo.Site ADD SpecialPlatfrom TINYINT NULL CONSTRAINT [DF_Site_SpecialPlatform]  DEFAULT ((0))
GO


/*
	Created: 20230825@Tacy
	Task: Add column CreditGroupID, LicenseeGroupID on table [exchange]
		 https://nexdev.net/issues/192624 [RedmineID: #192624]
	Database: DBCUST/CustDB
*/

USE CustDB
GO

ALTER TABLE exchange ADD CreditGroupID TINYINT NULL
GO

ALTER TABLE exchange ADD CreditGroupID TINYINT NULL
GO
