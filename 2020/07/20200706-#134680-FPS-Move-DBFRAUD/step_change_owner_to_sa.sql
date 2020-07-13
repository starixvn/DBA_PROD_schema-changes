
/*
    Task: Move DBFRAUD to new Server
		+ Map orhphaned user
    Server: DBFRAUD

	run on list db:
		FPS_ADMIN
		FPS_LOG
		FPS_EVI
		IPDB
		FPS_MiddleService
*/

EXEC sp_changedbowner @loginame= N'sa', @map =false;
