/*
    Task: Move DBFRAUD to new Server
		+ Map orhphaned user
    Server: DBFRAUD

	list db:
		FPS_DEV
		FPS_RPT
		IPDB_KBT
		FPS_RobotDetection
		FPS_DeviceFingerprint_UAT
		FPS_DEV_TEST
*/

declare @__orhphanedUser table(userName varchar(200), userSID nvarchar(128))
insert into @__orhphanedUser(userName, userSID)
EXEC SP_CHANGE_USERS_LOGIN 'REPORT'

select 'EXEC sp_change_users_login ''Update_One'', ''' +userName+''', '''+userName+''';' cmd
from @__orhphanedUser