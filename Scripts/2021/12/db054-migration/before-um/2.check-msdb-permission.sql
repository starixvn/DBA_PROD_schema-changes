/*
	Task - Upgrade SQL Server DB054 to 2019
		+ Check permission for msdb
	Run on db054
*/

select m.name as loginname , r.name as role_name
from msdb.sys.database_role_members rm
	inner join msdb.sys.database_principals r on rm.role_principal_id = r.principal_id
	inner join msdb.sys.database_principals m on rm.member_principal_id = m.principal_id