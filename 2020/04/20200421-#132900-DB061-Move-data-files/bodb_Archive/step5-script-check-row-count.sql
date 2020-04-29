/*
	Task - Move data files for bodb_Archive database
		+ Step check row count
*/
select sOBJ.name as TableName, SUM(st.row_count) rowcnt
into #__temp1
from bodb_archive.sys.objects as sOBJ 
inner join bodb_archive.sys.dm_db_partition_stats st on sOBJ.object_id = st.object_id
where index_id < 2
group by sOBJ.name
order by sOBJ.name

select sOBJ.name as TableName, SUM(st.row_count) rowcnt
into #__temp2
from bodb_archive_New.sys.objects as sOBJ 
inner join bodb_archive_New.sys.dm_db_partition_stats st on sOBJ.object_id = st.object_id
where index_id < 2
group by sOBJ.name
order by sOBJ.name

--
select *
from #__temp1 t
full outer join #__temp2 tt on t.TableName = tt.TableName
where isnull(t.rowcnt, 0) <> isnull(tt.rowcnt, 0)