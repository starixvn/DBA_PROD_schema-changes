/*
	Task: Prepare backup DB settings in MonDB
	Run on DBGRP03N1/N2
*/

-- 1. Copy setting from SiteDb2
truncate table [DB_Backup_Setting]
insert [DB_Backup_Setting]
select * from DBGRP02N1.MonDB.dbo.[DB_Backup_Setting] with (nolock)

-- 2. Remap database_id with system's databaseID
select b.database_id MonDB_DBID, d.database_id, b.dbname 
from [dbo].[DB_Backup_Setting] b
	inner join master.sys.databases d on b.dbname = d.name

update b set b.database_id = d.database_id
from [dbo].[DB_Backup_Setting] b
	inner join master.sys.databases d on b.dbname = d.name