/*<info serverAlias="DB062-bodb_OWP"></info>*/
/*
	Created: 20230217@Sol
	Task: alter location of bodb_TGRS to new location
	DB: DB062-bodb_OWP
*/

GO

---log shipping - backup job of bodb_OWP
EXEC msdb.dbo.sp_update_job @job_name = N'LSCopy_db061_bodb_OWP', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSRestore_db061_bodb_OWP', @enabled = 0;


GO