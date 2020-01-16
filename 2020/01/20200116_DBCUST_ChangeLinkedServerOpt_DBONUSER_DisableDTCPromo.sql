/*
	Created by: 20200116@Daniel	
	Task: Fix issue "unable to begin a distributed transaction" when exec remote SP get robots from DBONUSER
	DB: DBCUST
	
*/


USE [master]
GO
EXEC master.dbo.sp_serveroption @server=N'DBONUSER', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO