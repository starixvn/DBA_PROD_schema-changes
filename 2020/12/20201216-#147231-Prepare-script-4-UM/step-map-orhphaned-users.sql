/*
    Task: Task: Task: Move some dbs from G$ to F$
		+ Map orphan user
    Server: DB052

	Databases:
		bodb_Maintenance
		bodb_PlaytechCS
		bodb_CRM
		bodb_3rdProduct
*/

declare @__orhphanedUser table(userName varchar(200), userSID nvarchar(128))
insert into @__orhphanedUser(userName, userSID)
EXEC SP_CHANGE_USERS_LOGIN 'REPORT'

select 'EXEC sp_change_users_login ''Update_One'', ''' +userName+''', '''+userName+''';' cmd
from @__orhphanedUser

--//change owner db
EXEC sp_changedbowner @loginame= N'sa', @map =false;
