-- DB055

-- 1.Start Job
EXEC msdb.dbo.sp_start_job @job_name = N'DBA_Full_Backup';

-- 2.Check Job Result
select top 1 j.name as 'JobName', run_status, run_date, run_time,
 msdb.dbo.agent_datetime(run_date, run_time) as 'RunDateTime', run_duration,
 ((run_duration/10000*3600 + (run_duration/100)%100*60 + run_duration%100 + 31 ) / 60) as 'RunDurationMinutes'
From msdb.dbo.sysjobs j INNER JOIN msdb.dbo.sysjobhistory h 
 ON j.job_id = h.job_id 
where j.name IN (N'DBA_Full_Backup')
and step_id=0 --and j.enabled = 1  --Only Enabled Jobs
order by RunDateTime desc
GO

-- 3.Check Active Job
SELECT j.name [JobName],a.start_execution_date,a.last_executed_step_id
FROM msdb.dbo.sysjobactivity a
 LEFT JOIN msdb.dbo.sysjobhistory b ON a.job_history_id = b.instance_id
 INNER JOIN msdb.dbo.sysjobs j ON a.job_id = j.job_id
WHERE a.session_id =
 (SELECT TOP 1 session_id FROM msdb.dbo.syssessions ORDER BY agent_start_date DESC)
AND a.start_execution_date is not null
AND a.stop_execution_date is null
AND j.name IN (N'DBA_Full_Backup')
GO
