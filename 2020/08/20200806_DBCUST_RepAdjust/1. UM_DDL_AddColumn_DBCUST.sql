/*
	Task: Alter tables in Replication - DDL commands
	DB: DBCUST/CustDB

*/

USE [CustDB]
GO
ALTER TABLE [dbo].[TOControl_GlobalSetting] ADD IsGlobalLockTOLimit BIT NULL DEFAULT(0)
GO
ALTER TABLE [dbo].[TOControl_GlobalSetting] ADD  CONSTRAINT [DF_TOControl_GlobalSetting_IsGlobalLockTOLimit]  DEFAULT ((0)) FOR [IsGlobalLockTOLimit]
GO

USE [bodb_Licensee]
GO
ALTER TABLE [dbo].[LicenseeBAHistory] ADD [tstamp] [timestamp] NOT NULL
GO
