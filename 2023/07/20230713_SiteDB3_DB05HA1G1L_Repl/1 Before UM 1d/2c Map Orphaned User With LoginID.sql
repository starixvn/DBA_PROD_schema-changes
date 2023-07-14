/*
	Task: Gen Sync Script for Orphaned User
	Run on primary node DBGRP03N1, copy script and run to remap orphaned users
*/
use tempdb;
create table #tmp_sync_cmd ([cmd] nvarchar(4000))
insert into #tmp_sync_cmd  
 exec sp_MSForeachDB @command1='
 use [?];
 --IF DB_ID() > 4
 select CMD = N'' use [?];ALTER USER ['' + dp.name + N''] WITH LOGIN=['' + dp.name + N''];''
 from sys.database_principals dp left join sys.server_principals sp
  on (dp.sid = sp.sid)
 where dp.type in (''S'',''U'',''G'')
   and dp.principal_id > 4
   and dp.name not like ''##%'' 
   and dp.name not like ''MS_DataCollectorInternalUser''
 order by sp.name;'
select * from #tmp_sync_cmd;
drop table #tmp_sync_cmd;

GO


