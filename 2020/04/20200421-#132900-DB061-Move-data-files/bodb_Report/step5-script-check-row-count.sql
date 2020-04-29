/*
	Task - Move data files for bodb_Report_New database
		+ Step check row count
*/
select sOBJ.name as TableName, SUM(st.row_count) rowcnt
into #__temp1
from bodb_Report.sys.objects as sOBJ 
inner join bodb_Report.sys.dm_db_partition_stats st on sOBJ.object_id = st.object_id
where index_id < 2
group by sOBJ.name
order by sOBJ.name

select sOBJ.name as TableName, SUM(st.row_count) rowcnt
into #__temp2
from bodb_Report_New.sys.objects as sOBJ 
inner join bodb_Report_New.sys.dm_db_partition_stats st on sOBJ.object_id = st.object_id
where index_id < 2
group by sOBJ.name
order by sOBJ.name

--
select *
from #__temp1 t
full outer join #__temp2 tt on t.TableName = tt.TableName
where isnull(t.rowcnt, 0) <> isnull(tt.rowcnt, 0)