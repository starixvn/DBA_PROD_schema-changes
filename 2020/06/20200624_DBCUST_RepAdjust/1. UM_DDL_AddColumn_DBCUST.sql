/*
	Task: Alter tables in Replication - DDL commands
	DB: DBCUST/CustDB

*/

USE CustDB
GO
ALTER TABLE dbo.Exchange ADD OfferSite TINYINT NOT NULL CONSTRAINT [DF_Exchange_OfferSite] DEFAULT ((0))
GO
ALTER TABLE dbo.Exchange ADD IsActive BIT NOT NULL CONSTRAINT [DF_Exchange_IsActive] DEFAULT ((1))
GO