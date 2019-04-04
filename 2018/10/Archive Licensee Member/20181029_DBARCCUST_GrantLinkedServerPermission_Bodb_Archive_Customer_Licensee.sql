/*
	Task: Add linked server permission for new DB [Bodb_Archive_Customer_Licensee] - used for project Archive Deposit Members
	Run at DBAFF

*/


USE [Bodb_Archive_Customer_Licensee]
GO
CREATE USER [SqlLink] FOR LOGIN [SqlLink]
GO
USE [Bodb_Archive_Customer_Licensee]
GO
EXEC sp_addrolemember N'db_owner', N'SqlLink'
GO