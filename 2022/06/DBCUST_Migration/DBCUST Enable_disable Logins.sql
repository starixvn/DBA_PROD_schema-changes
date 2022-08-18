/*
	Task: Disable / enable logins
	Run on SITDBCUST/SITDBCUSTN
*/

EXEC [dbo].[DBA_UM_LoginDisable]

EXEC [dbo].[DBA_UM_LoginEnable]

-- 1.Check Disabled SQL Logins
/*
	DBTrans - Disabled=0, Enabled=30
	DB02    - Disabled=0, Enabled=30
	DBCust  - Disabled=1, Enabled=36
	DB05    - Disabled=0, Enabled=23
	DB05BK1 - Disabled=0, Enabled=23
*/
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


