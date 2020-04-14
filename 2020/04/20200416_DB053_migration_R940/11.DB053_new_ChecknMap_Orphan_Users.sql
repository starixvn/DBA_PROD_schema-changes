
-- .Gen Sync Script for Orphaned USER
USE tempdb;
CREATE TABLE #tmp_sync_cmd ([cmd] nvarchar(4000))
INSERT INTO #tmp_sync_cmd  
 EXEC sp_MSForeachDB @commAND1='
 USE [?];
 --IF DB_ID() > 4
 SELECT CMD = N'' USE [?];ALTER USER ['' + dp.name + N''] WITH LOGIN = ['' + dp.name + N''];''
 FROM sys.database_principals dp LEFT JOIN sys.server_principals sp
  ON (dp.sid = sp.sid)
 WHERE dp.type in (''S'',''U'',''G'')
   AND dp.principal_id > 4
   AND dp.name not like ''##%''
 ORDER BY sp.name;'
SELECT * FROM #tmp_sync_cmd;
DROP TABLE #tmp_sync_cmd;
GO
