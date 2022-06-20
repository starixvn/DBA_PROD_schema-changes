/*
	Task - Upgrade SQL Server DBSPARE to 2019
		sql_logins (No Windows Accounts)
		syslogins  (denylogin & hasaccess is for permission to connect db, not for login disabled)
		server_principals (Extra 9 Server Roles)
	Run on DBSPARE
*/
-- 1.Check Disabled SQL Logins (Disabled=1, Enabled=44)
USE master;
GO
SELECT  CASE is_disabled WHEN 1 THEN 'Disabled' ELSE 'Enabled' END
  ,COUNT(is_disabled) [COUNT]
FROM sys.sql_logins
WHERE name NOT LIKE '#%'
  AND name NOT LIKE '%\%'
  AND name NOT LIKE 'RD%'
  AND name NOT LIKE 'vn%'
  AND name NOT IN ('viet',  'thien','sa')
  AND name <> 'MonDB_User'
GROUP BY is_disabled ORDER BY 1
GO

-- 2.Gen Script
SELECT 'ALTER LOGIN ['+name+'] ENABLE;' FROM sys.sql_logins
WHERE name NOT LIKE '#%'
  AND name NOT LIKE '%\%'
  AND name NOT LIKE 'RD%'
  AND name NOT LIKE 'vn%'
  AND name NOT IN ('viet', 'thien','sa')
  AND name <> 'MonDB_User'
  AND is_disabled = 0
ORDER BY 1
GO
  
-- 3.Run Script (44)

GO
ALTER LOGIN [bodbMonitorNet] ENABLE;
ALTER LOGIN [DataSync] ENABLE;
ALTER LOGIN [DataSync3] ENABLE;
ALTER LOGIN [DBA_Letstalk] ENABLE;
ALTER LOGIN [DBA_Skype] ENABLE;
ALTER LOGIN [joe] ENABLE;
ALTER LOGIN [O4ONE_User] ENABLE;
ALTER LOGIN [Portal] ENABLE;
ALTER LOGIN [repl_sql] ENABLE;
ALTER LOGIN [ServerMonitor] ENABLE;
ALTER LOGIN [SqlLink] ENABLE;
ALTER LOGIN [twteam] ENABLE;
