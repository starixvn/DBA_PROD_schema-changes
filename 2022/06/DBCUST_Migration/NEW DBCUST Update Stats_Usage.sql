/*
	Task: Update statistics & usage
	Run on new DBCUST
*/


USE [AUTHDB];
EXEC sp_updatestats;
DBCC updateusage(0);
GO


USE [bodb_CustomerLog];
EXEC sp_updatestats;
DBCC updateusage(0);
GO


USE [bodb_Licensee];
EXEC sp_updatestats;
DBCC updateusage(0);
GO


USE [CustDB];
EXEC sp_updatestats;
DBCC updateusage(0);
GO


USE IPDB;
EXEC sp_updatestats;
DBCC updateusage(0);
GO


USE MonDB;
EXEC sp_updatestats;
DBCC updateusage(0);
GO


USE [N88_UserControl];
EXEC sp_updatestats;
DBCC updateusage(0);
GO

USE [NAP_UserControl];
EXEC sp_updatestats;
DBCC updateusage(0);
GO


USE [SiteConfig];
EXEC sp_updatestats;
DBCC updateusage(0);
GO



