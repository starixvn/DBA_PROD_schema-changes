/*
	Task - Upgrade SQL Server DB055 to 2019
		1- DB055 - Disable SQL Login
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
SELECT 'ALTER LOGIN ['+name+'] DISABLE;' FROM sys.sql_logins
WHERE name NOT LIKE '#%'
  AND name NOT LIKE '%\%'
  AND name NOT LIKE 'RD%'
  AND name NOT LIKE 'vn%'
  AND name NOT IN ('viet',  'thien','sa')
  AND name <> 'MonDB_User'
  AND is_disabled=0
ORDER BY 1
GO
  
-- 3.Run Script (44)
ALTER LOGIN [ANS_Member] DISABLE;
ALTER LOGIN [bodbAdminNet] DISABLE;
ALTER LOGIN [bodbChartNet] DISABLE;
ALTER LOGIN [bodbDownlineNet] DISABLE;
ALTER LOGIN [bodbDownlineNetView] DISABLE;
ALTER LOGIN [bodbExtAccNet] DISABLE;
ALTER LOGIN [bodbinternalNet] DISABLE;
ALTER LOGIN [bodbLicenseeNet] DISABLE;
ALTER LOGIN [bodbRMSNet] DISABLE;
ALTER LOGIN [DataSync] DISABLE;
ALTER LOGIN [dba_Cert_User] DISABLE;
ALTER LOGIN [Dot_3rdparty] DISABLE;
ALTER LOGIN [Dot_Admin] DISABLE;
ALTER LOGIN [dot_agent] DISABLE;
ALTER LOGIN [Dot_Casino] DISABLE;
ALTER LOGIN [Dot_Member] DISABLE;
ALTER LOGIN [Dot_P2P] DISABLE;
ALTER LOGIN [ibcrep] DISABLE;
ALTER LOGIN [RB_Member] DISABLE;
ALTER LOGIN [repl_ap] DISABLE;
ALTER LOGIN [ServerMonitor] DISABLE;
ALTER LOGIN [Sportscast] DISABLE;
ALTER LOGIN [SqlLink] DISABLE;

GO
