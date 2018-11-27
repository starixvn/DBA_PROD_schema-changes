/*
	Creator:	20181127@Billy
	Task:		Remove old OWP job - [Redmine: #104404]
	Server:		DBOWP.bodb_OWP
*/


USE msdb;
GO

DECLARE	@job_id		UNIQUEIDENTIFIER;

SELECT	@job_id = job_id
FROM	msdb.dbo.sysjobs WITH (NOLOCK)
WHERE	name = N'bodb_OWP - Mapping match';

IF	@job_id = N'a51db438-5dc5-4771-aabe-2372cc41d39e' -- Check if job id is correct
BEGIN;
	EXECUTE	msdb.dbo.sp_delete_job @job_id = @job_id, @delete_unused_schedule = 1;
	RAISERROR('Job removed', 0, 0) WITH NOWAIT;
END;
GO
