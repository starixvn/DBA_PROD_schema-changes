/*
	Task: Backup master db users and server permission

	Generated on old server and run on new server SITDBDIST03
*/

USE [master]
GO
CREATE USER [rdsvntrack] FOR LOGIN [rdsvntrack] WITH DEFAULT_SCHEMA=[dbo]
GO

