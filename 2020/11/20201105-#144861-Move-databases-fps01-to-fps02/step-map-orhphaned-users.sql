/*
    Task: Task: Move some dbs from fps_01 to fps_02
		+ Map orphan user
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

declare @__orhphanedUser table(userName varchar(200), userSID nvarchar(128))
insert into @__orhphanedUser(userName, userSID)
EXEC SP_CHANGE_USERS_LOGIN 'REPORT'

select 'EXEC sp_change_users_login ''Update_One'', ''' +userName+''', '''+userName+''';' cmd
from @__orhphanedUser

--//change owner db
EXEC sp_changedbowner @loginame= N'sa', @map =false;
