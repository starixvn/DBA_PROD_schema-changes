
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

EXEC sp_changedbowner 'sa';  
GO

SELECT 'EXEC sp_AddRoleMember ''' + DBRole.NAME + ''', ''' + DBUser.NAME + '''' AS '--Add Users to Database Roles--'
FROM sys.database_principals DBUser
INNER JOIN sys.database_role_members DBM ON DBM.member_principal_id = DBUser.principal_id
INNER JOIN sys.database_principals DBRole ON DBRole.principal_id = DBM.role_principal_id
where DBUser.type not in ('A', 'G', 'R', 'X')
      and DBUser.sid is not null
      and DBUser.name not in ('dbo'
		,'guest'
		,'sys'
		,'INFORMATION_SCHEMA')
