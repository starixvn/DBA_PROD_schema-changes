
---check current Increment number 
USE [FPS_DeviceFingerprint]
GO

select max(d.Increment)  from Device_bigint d with(nolock)
select max(d.Increment)  from Device d with(nolock)

---first row from log is the endID from the first run
select top 100 * from DEL_Temp_TransferData_Log l with(nolock)

go 

USE [msdb]
GO
EXEC msdb.dbo.sp_update_jobstep @job_id=N'6fc29799-893b-4d35-b490-95364f880f49', @step_id=2 , 
		@command=N'exec FPS_DeviceFingerprint.dbo.SyncData_ToDeviceBigInt
	@EndId  = 1478803910, ---  should be use a bigger number
	@BatchSize  = 5000,
	@MinId  = 1473459430'
GO
