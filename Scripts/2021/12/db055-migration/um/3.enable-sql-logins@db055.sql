/*
	Task - Upgrade SQL Server DB055 to 2019
		sql_logins (No Windows Accounts)
		syslogins  (denylogin & hasaccess is for permission to connect db, not for login disabled)
		server_principals (Extra 9 Server Roles)
	Run on db055
*/
-- 1.Check Disabled SQL Logins (Disabled=1, Enabled=44)
USE master;
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
ALTER LOGIN [ANS_Member] ENABLE;
ALTER LOGIN [bodbAdminNet] ENABLE;
ALTER LOGIN [bodbChartNet] ENABLE;
ALTER LOGIN [bodbDownlineNet] ENABLE;
ALTER LOGIN [bodbDownlineNetView] ENABLE;
ALTER LOGIN [bodbExtAccNet] ENABLE;
ALTER LOGIN [bodbinternalNet] ENABLE;
ALTER LOGIN [bodbLicenseeNet] ENABLE;
ALTER LOGIN [bodbRMSNet] ENABLE;
ALTER LOGIN [DataSync] ENABLE;
ALTER LOGIN [dba_Cert_User] ENABLE;
ALTER LOGIN [Dot_3rdparty] ENABLE;
ALTER LOGIN [Dot_Admin] ENABLE;
ALTER LOGIN [dot_agent] ENABLE;
ALTER LOGIN [Dot_Casino] ENABLE;
ALTER LOGIN [Dot_Member] ENABLE;
ALTER LOGIN [Dot_P2P] ENABLE;
ALTER LOGIN [ibcrep] ENABLE;
ALTER LOGIN [RB_Member] ENABLE;
ALTER LOGIN [repl_ap] ENABLE;
ALTER LOGIN [ServerMonitor] ENABLE;
ALTER LOGIN [Sportscast] ENABLE;
ALTER LOGIN [SqlLink] ENABLE;
