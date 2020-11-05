/*
    Task: Task: Move some dbs from fps_01 to fps_02
		+ Change owner db to sa
    Server: FPS_DB02\FPS_01

	Full backup:
		FPS_SUB_FUN88
		FPS_SUB_M88
		FPS_SUB_BBIN
		FPS_SUB_12BET
		FPS_SUB_Newhonbet
		FPS_SUB_ALPHA
		FPS_SUB_W88
*/

EXEC FPS_SUB_FUN88.dbo.sp_changedbowner @loginame= N'sa', @map =false
EXEC FPS_SUB_M88.dbo.sp_changedbowner @loginame= N'sa', @map =false
EXEC FPS_SUB_BBIN.dbo.sp_changedbowner @loginame= N'sa', @map =false
EXEC FPS_SUB_12BET.dbo.sp_changedbowner @loginame= N'sa', @map =false
EXEC FPS_SUB_Newhonbet.dbo.sp_changedbowner @loginame= N'sa', @map =false
EXEC FPS_SUB_ALPHA.dbo.sp_changedbowner @loginame= N'sa', @map =false
EXEC FPS_SUB_W88.dbo.sp_changedbowner @loginame= N'sa', @map =false
