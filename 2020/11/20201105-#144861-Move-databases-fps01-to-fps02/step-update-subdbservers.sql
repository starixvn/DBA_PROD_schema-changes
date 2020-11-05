/*
    Task: Task: Move some dbs from fps_01 to fps_02
		+ Update connection string
    Server: FPS_DB02\FPS_01

	Databases:
		FPS_SUB_FUN88
		FPS_SUB_M88
		FPS_SUB_BBIN
		FPS_SUB_12BET
		FPS_SUB_Newhonbet
		FPS_SUB_ALPHA
		FPS_SUB_W88
*/

use FPS_ADMIN
go

update SubDBServers
set serverIp = '10.40.40.119'
	, serverName = 'FPSCR'
where dbName in ('FPS_SUB_FUN88', 'FPS_SUB_M88', 'FPS_SUB_BBIN', 'FPS_SUB_12BET'
	, 'FPS_SUB_Newhonbet', 'FPS_SUB_ALPHA', 'FPS_SUB_W88')

go
