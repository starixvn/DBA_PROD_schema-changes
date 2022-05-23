
/*
	Task - Upgrade SQL Server DBCUST to 2019 - Start copy and restore log to secondaries
	Follow comments run on Related Secondaries at DR AWS/MNL
*/

-- Run on AWS DBCUST
USE msdb ;
GO
EXEC dbo.sp_start_job N'LSCopy_DBCUST_AUTHDB';
GO
EXEC dbo.sp_start_job N'LSCopy_dbcust_NAP_UserControlLS';
GO
--Must check jobs copy done then start job restore below
EXEC dbo.sp_start_job N'LSRestore_DBCUST_AUTHDB';
GO
EXEC dbo.sp_start_job N'LSRestore_dbcust_NAP_UserControlLS';
GO


-- Run on MNL DBCUST
USE msdb ;
GO
EXEC dbo.sp_start_job N'LSCopy_DBCust_AUTHDB';
GO
EXEC dbo.sp_start_job N'LSCopy_DBCUST_IPDB';
GO
EXEC dbo.sp_start_job N'LSCopy_dbcust_NAP_UserControl';
GO
--Must check jobs copy done then start job restore below
EXEC dbo.sp_start_job N'LSRestore_DBCust_AUTHDB';
GO
EXEC dbo.sp_start_job N'LSRestore_DBCUST_IPDB';
GO
EXEC dbo.sp_start_job N'LSRestore_dbcust_NAP_UserControl';
GO