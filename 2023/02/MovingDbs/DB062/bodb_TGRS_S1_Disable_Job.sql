/*<info serverAlias="DB062-bodb_TGRS"></info>*/
/*
	Created: 20230217@Sol
	Task: alter location of bodb_TGRS to new location
	DB: DB062-bodb_TGRS
*/

GO

---log shipping - backup job of bodb_TGRS
EXEC msdb.dbo.sp_update_job @job_name = N'LSAlert_DB062', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSCopy_db061_bodb_TGRS', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSRestore_db061_bodb_TGRS', @enabled = 0;

GO