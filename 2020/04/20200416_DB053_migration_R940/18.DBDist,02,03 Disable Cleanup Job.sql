-- Gen Script to Enable/Disable Repl Clean-up Job
USE msdb
GO
--1.Enable
SELECT 'EXEC msdb.dbo.sp_update_job @job_name = N''' + name +''', @enabled = 1;'
FROM msdb.dbo.sysjobs
where category_id=11
and enabled = 1
GO
--2.Start
SELECT 'EXEC msdb.dbo.sp_start_job ''' + name +''''
FROM msdb.dbo.sysjobs
where category_id=11
GO

/*  Category_ID
10 REPL-Distribution
11 REPL-Distribution Cleanup
12 REPL-History Cleanup
13 REPL-LogReader
15 REPL-Snapshot
17 REPL-Subscription Cleanup
*/
-- 3.Check if there is any distribution job enabled
use msdb
GO
select name,enabled from msdb.dbo.sysjobs
where category_id=11
GO


-- DBDist
EXEC msdb.dbo.sp_update_job @job_name = N'Distribution clean up: dist_dbtrans', @enabled = 1;
EXEC msdb.dbo.sp_start_job 'Distribution clean up: dist_dbtrans';
GO

-- DBDist03
EXEC msdb.dbo.sp_update_job @job_name = N'Distribution clean up: dist_dbcust', @enabled = 1;
EXEC msdb.dbo.sp_start_job 'Distribution clean up: dist_dbcust';
GO

-- DBDist02
EXEC msdb.dbo.sp_update_job @job_name = N'Distribution clean up: DIST_DB02_', @enabled = 1;
EXEC msdb.dbo.sp_start_job 'Distribution clean up: DIST_DB02_';
GO


/*
-- DBDistRM
EXEC msdb.dbo.sp_update_job @job_name = N'Distribution clean up: dist_dbdistrm', @enabled = 1;
EXEC msdb.dbo.sp_stop_job 'Distribution clean up: dist_dbdistrm';
GO
*/

