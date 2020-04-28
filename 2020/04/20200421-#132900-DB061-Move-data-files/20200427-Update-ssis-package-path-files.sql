/*
	Task - Update ssis package path file from I$ to F$
*/
use msdb
go
--==Sync Table Type 1
exec sp_update_jobstep
	@job_name=N'__SYNC: [DB061] Archived tables HA',
	@step_id=3, 
	@step_name=N'Sync Table Type 1', 
	@command=N'/FILE "F:\USER_DB\_SSIS_Library_\ArchiveHA\ArchiveHA-SyncType1.dtsx" /DECRYPT "ss1s@w3e" /CHECKPOINTING OFF /REPORTING E'

--==Sync Table Type 2
exec sp_update_jobstep
	@job_name=N'__SYNC: [DB061] Archived tables HA',
	@step_id=5, 
	@step_name=N'Sync Table Type 2', 
	@command=N'/FILE "F:\USER_DB\_SSIS_Library_\ArchiveHA\ArchiveHA-SyncType2.dtsx" /DECRYPT "ss1s@w3e" /CHECKPOINTING OFF /REPORTING E'

--==Sync Table Type 3
exec sp_update_jobstep
	@job_name=N'__SYNC: [DB061] Archived tables HA',
	@step_id=7, 
	@step_name=N'Sync Table Type 3', 
	@command=N'/FILE "F:\USER_DB\_SSIS_Library_\ArchiveHA\ArchiveHA-SyncType3.dtsx" /DECRYPT "ss1s@w3e" /CHECKPOINTING OFF /REPORTING E'

--==Sync Table Type 4
exec sp_update_jobstep
	@job_name=N'__SYNC: [DB061] Archived tables HA',
	@step_id=9, 
	@step_name=N'Sync Table Type 4', 
	@command=N'/FILE "F:\USER_DB\_SSIS_Library_\ArchiveHA\ArchiveHA-SyncType4.dtsx" /DECRYPT "ss1s@w3e" /CHECKPOINTING OFF /REPORTING E'

--==Sync Table Type 5
exec sp_update_jobstep
	@job_name=N'__SYNC: [DB061] Archived tables HA',
	@step_id=11, 
	@step_name=N'Sync Table Type 5', 
	@command=N'/FILE "F:\USER_DB\_SSIS_Library_\ArchiveHA\ArchiveHA-SyncType5.dtsx" /DECRYPT "ss1s@w3e" /CHECKPOINTING OFF /REPORTING E'

--==Sync Table Type 6
exec sp_update_jobstep
	@job_name=N'__SYNC: [DB061] Archived tables HA',
	@step_id=13, 
	@step_name=N'Sync Table Type 6', 
	@command=N'/FILE "F:\USER_DB\_SSIS_Library_\ArchiveHA\ArchiveHA-SyncType6.dtsx" /DECRYPT "ss1s@w3e" /CHECKPOINTING OFF /REPORTING E'

--==Sync Table Type 7
exec sp_update_jobstep
	@job_name=N'__SYNC: [DB061] Archived tables HA',
	@step_id=15, 
	@step_name=N'Sync Table Type 7', 
	@command=N'/FILE "F:\USER_DB\_SSIS_Library_\ArchiveHA\ArchiveHA-SyncType7.dtsx" /DECRYPT "ss1s@w3e" /CHECKPOINTING OFF /REPORTING E'
