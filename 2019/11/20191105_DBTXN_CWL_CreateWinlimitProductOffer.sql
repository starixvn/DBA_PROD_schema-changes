/*
	Task:	create new table WinLimit_ProductOffer
	Database:	DBTXN.bodb02	
*/

USE [bodb02];
GO

CREATE TABLE dbo.WinLimit_ProductOffer(
	ProductID           TINYINT NOT NULL
   , BetType             SMALLINT
   , IsActive_SMA        BIT
   , IsActive_Company    BIT
	CONSTRAINT PK_WinLimit_ProductOffer PRIMARY KEY CLUSTERED (ProductID ASC)
	WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [winlimit_table])
ON [winlimit_table];
GO