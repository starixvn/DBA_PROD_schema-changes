/*<info serverAlias="FPS_DB02-FPS_DeviceFingerprint"></info>*/
/*
	Created: 20230217@Sol
	Task: set up logshipping for FPS_DeviceFingerprint
	DB: FPS_DB02-FPS_DeviceFingerprint
*/

-- Execute the following statements at the Primary to configure Log Shipping 

DECLARE @LS_BackupJobId	AS uniqueidentifier 
DECLARE @LS_PrimaryId	AS uniqueidentifier 
DECLARE @SP_Add_RetCode	As int 

DECLARE @database AS sysname = N'FPS_DeviceFingerprint' 
		,@backup_directory VARCHAR(500) = N'\\10.1.1.12\LogShipping\FPS_DB02.FPS_DeviceFingerprint' 
		,@backup_share VARCHAR(500) = N'\\10.1.1.12\LogShipping\FPS_DB02.FPS_DeviceFingerprint' 
		,@backup_job_name sysname = N'LSBackup_FPS_DeviceFingerprint' 
		,@secondary_server AS sysname = N'[.125]'


EXEC @SP_Add_RetCode = master.dbo.sp_add_log_shipping_primary_database 
		--using param
		@database = @database
		,@backup_directory = @backup_directory
		,@backup_share = @backup_share
		,@backup_job_name = @backup_job_name

		--using value
		,@backup_retention_period = 4320
		,@backup_compression = 2
		,@backup_threshold = 60 
		,@threshold_alert_enabled = 1
		,@history_retention_period = 5760 
		,@backup_job_id = @LS_BackupJobId OUTPUT 
		,@primary_id = @LS_PrimaryId OUTPUT 
		,@overwrite = 1 


IF (@@ERROR = 0 AND @SP_Add_RetCode = 0) 
BEGIN 

DECLARE @LS_BackUpScheduleUID	As uniqueidentifier 
DECLARE @LS_BackUpScheduleID	AS int 


EXEC msdb.dbo.sp_add_schedule 
		@schedule_name =N'LSBackupSchedule_FPS_DB02' 
		,@enabled = 1 
		,@freq_type = 4 
		,@freq_interval = 1 
		,@freq_subday_type = 4 
		,@freq_subday_interval = 15 
		,@freq_recurrence_factor = 0 
		,@active_start_date = 20230322 
		,@active_end_date = 99991231 
		,@active_start_time = 0 
		,@active_end_time = 235900 
		,@schedule_uid = @LS_BackUpScheduleUID OUTPUT 
		,@schedule_id = @LS_BackUpScheduleID OUTPUT 

EXEC msdb.dbo.sp_attach_schedule 
		@job_id = @LS_BackupJobId 
		,@schedule_id = @LS_BackUpScheduleID  

EXEC msdb.dbo.sp_update_job 
		@job_id = @LS_BackupJobId 
		,@enabled = 1 


END 


EXEC master.dbo.sp_add_log_shipping_alert_job 

EXEC master.dbo.sp_add_log_shipping_primary_secondary 
		--using param
		@primary_database = @database --main db
		,@secondary_server = @secondary_server 
		,@secondary_database = @database --log shipping db name
		,@overwrite = 1 

GO