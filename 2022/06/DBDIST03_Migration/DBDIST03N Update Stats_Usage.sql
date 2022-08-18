/*
	Task: Update statistics & usage
	Run on new DBDIST03N
*/

USE distribution;
EXEC sp_updatestats;
DBCC updateusage(0);
GO


USE MonDB;
EXEC sp_updatestats;
DBCC updateusage(0);
GO


USE [Monitor];
EXEC sp_updatestats;
DBCC updateusage(0);
GO