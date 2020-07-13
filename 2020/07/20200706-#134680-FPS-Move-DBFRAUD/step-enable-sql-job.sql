/*
    Task: Move DBFRAUD to new Server
		+ Enable sql job
    Server: FPS_DB02\FPS_DB01
	
	
*/

EXEC msdb.dbo.sp_update_job @job_name = N'[IPDB] - Import IP2Location', @enabled = 1
