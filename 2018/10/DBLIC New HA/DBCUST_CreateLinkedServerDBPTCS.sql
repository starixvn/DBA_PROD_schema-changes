/*
	Task: Create linked server DBPTCS - point to DB053 for DBLIC new HA project
	Created: Daniel@20181010
	Server: DBCUST 
	Note: Need set password for SqlLink acc

*/

USE [master]
GO

EXEC master.dbo.sp_addlinkedserver @server = N'DBPTCS', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBPTCS',@useself=N'False',@locallogin=NULL,@rmtuser=N'SqlLink',@rmtpassword='########' -- set sqllink's password here
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBPTCS',@useself=N'True',@locallogin=N'NT AUTHORITY\SYSTEM',@rmtuser=NULL,@rmtpassword=NULL

GO

EXEC master.dbo.sp_serveroption @server=N'DBPTCS', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBPTCS', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBPTCS', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBPTCS', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBPTCS', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBPTCS', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBPTCS', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBPTCS', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBPTCS', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DBPTCS', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBPTCS', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBPTCS', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBPTCS', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO


