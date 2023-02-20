/*<info serverAlias="DB061-bodb_OWP"></info>*/
/*
	Created: 20230217@Sol
	Task: disable job of bodb_OWP
	DB: DB061-bodb_OWP
*/

GO

---bodb_OWP
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_OWP - Job: Sync Default Working Shift', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_OWP - job: Sync InfoSite Match', @enabled = 0;

GO

---log shipping - backup job of bodb_OWP
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_bodb_OWP', @enabled = 0;

GO