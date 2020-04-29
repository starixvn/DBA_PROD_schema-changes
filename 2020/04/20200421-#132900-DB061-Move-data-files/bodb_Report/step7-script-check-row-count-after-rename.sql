/*
	Task - Move data files for bodb_Report database
		+ Step check row count
*/
select sOBJ.name as TableName, SUM(st.row_count) rowcnt
into #__temp3
from bodb_Report_Old.sys.objects as sOBJ 
inner join bodb_Report_Old.sys.dm_db_partition_stats st on sOBJ.object_id = st.object_id
where index_id < 2
group by sOBJ.name
order by sOBJ.name

select sOBJ.name as TableName, SUM(st.row_count) rowcnt
into #__temp4
from bodb_Report.sys.objects as sOBJ 
inner join bodb_Report.sys.dm_db_partition_stats st on sOBJ.object_id = st.object_id
where index_id < 2
group by sOBJ.name
order by sOBJ.name

--
select *
from #__temp3 t
full outer join #__temp4 tt on t.TableName = tt.TableName
where isnull(t.rowcnt, 0) <> isnull(tt.rowcnt, 0)