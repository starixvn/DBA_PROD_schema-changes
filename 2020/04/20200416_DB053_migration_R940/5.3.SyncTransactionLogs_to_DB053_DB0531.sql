
--select 'EXEC MSDB.dbo.sp_start_job @Job_Name = ''' + name + '''',*
--from msdb.dbo.sysjobs 
--where name like 'LSBackup%'
--	and name not in ('LSBackup_bodb_PlaytechCS','LSBackup_bodb_3rdProduct','LSBackup_DanielTestLS')
--order by name 

---- run on DB052
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSBackup_Affiliate_12BET'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSBackup_Affiliate_Aoncash'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSBackup_Affiliate_Athena000'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSBackup_Affiliate_itcbet'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSBackup_Affiliate_MacauBet'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSBackup_Affiliate_N8B'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSBackup_Affiliate_N8G'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSBackup_Affiliate_Spondemo'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSBackup_bodb_CRM'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSBackup_bodb_Maintenance'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSBackup_bodb_MMS'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSBackup_bodb_NAPLog'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSBackup_bodb_Oddsfeed'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSBackup_bodb_OIC'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSBackup_bodb_RMS'

EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_Affiliate_12BET', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_Affiliate_Aoncash', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_Affiliate_Athena000', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_Affiliate_itcbet', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_Affiliate_MacauBet', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_Affiliate_N8B', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_Affiliate_N8G', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_Affiliate_Spondemo', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_bodb_CRM', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_bodb_Maintenance', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_bodb_MMS', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_bodb_NAPLog', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_bodb_Oddsfeed', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_bodb_OIC', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_bodb_RMS', @enabled = 0;

------------------**************************-------------------------------

--select 'EXEC MSDB.dbo.sp_start_job @Job_Name = ''' + name + '''',*
--from msdb.dbo.sysjobs 
--where name like 'LSCopy%'
--	and name not in ('LSBackup_bodb_PlaytechCS','LSBackup_bodb_3rdProduct','LSBackup_DanielTestLS')
--order by name 

-- run on DB053/DB0531
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSCopy_DB052_Affiliate_12BET'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSCopy_DB052_Affiliate_Aoncash'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSCopy_DB052_Affiliate_Athena000'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSCopy_DB052_Affiliate_itcbet'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSCopy_DB052_Affiliate_MacauBet'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSCopy_DB052_Affiliate_N8B'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSCopy_DB052_Affiliate_N8G'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSCopy_DB052_Affiliate_Spondemo'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSCopy_DB052_bodb_CRM'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSCopy_DB052_bodb_Maintenance'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSCopy_DB052_bodb_MMS'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSCopy_DB052_bodb_NAPLog'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSCopy_DB052_bodb_Oddsfeed'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSCopy_DB052_bodb_OIC'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSCopy_DB052_bodb_RMS'

EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSRestore_DB052_Affiliate_12BET'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSRestore_DB052_Affiliate_Aoncash'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSRestore_DB052_Affiliate_Athena000'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSRestore_DB052_Affiliate_itcbet'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSRestore_DB052_Affiliate_MacauBet'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSRestore_DB052_Affiliate_N8B'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSRestore_DB052_Affiliate_N8G'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSRestore_DB052_Affiliate_Spondemo'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSRestore_DB052_bodb_CRM'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSRestore_DB052_bodb_Maintenance'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSRestore_DB052_bodb_MMS'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSRestore_DB052_bodb_NAPLog'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSRestore_DB052_bodb_Oddsfeed'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSRestore_DB052_bodb_OIC'
EXEC MSDB.dbo.sp_start_job @Job_Name = 'LSRestore_DB052_bodb_RMS'