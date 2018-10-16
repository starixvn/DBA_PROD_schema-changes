/*

	Task: Alter Move-bet job, step <archive ABS and BA transaction @ db052 & DBABS> - add archive BA trans for DB053, for DBLIC new HA project
	Run at DBTRANS
*/


USE [msdb]
GO
EXEC msdb.dbo.sp_update_jobstep @job_id=N'8579c5c6-591d-4fa8-bbc4-f43da61749ba', @step_id=4 , 
		@command=N'----EXEC DBABS.bodb_abs.dbo.Task_ABS_ArchiveABData


EXEC DB052.bodb02.dbo.Task_LicenseeBATransaction_Archive
EXEC DB053.bodb02.dbo.Task_LicenseeBATransaction_Archive
----EXEC DB054.bodb02.dbo.Task_LicenseeBATransaction_Archive'
GO
