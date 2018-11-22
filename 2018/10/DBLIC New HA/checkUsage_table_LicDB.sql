select * into #tmp  from sys.tables where schema_id <> 19 order by name

SELECT DB_NAME(database_id) AS db_name,
      OBJECT_NAME(object_id, database_id) AS object_name,
      max(user_seeks + user_scans + user_lookups) AS [Read Cnt],
      max(user_updates) AS [Write Cnt]
FROM sys.dm_db_index_usage_stats
WHERE DB_NAME(database_id) NOT IN ('master','model','tempdb','msdb')
	AND OBJECT_NAME(object_id, database_id) IN(select name from #tmp)
group by DB_NAME(database_id),OBJECT_NAME(object_id, database_id)
order by object_name


select * from #tmp

select name, max(isnull(isnull(last_user_seek, last_user_scan), last_user_update)) last_access, sum(user_seeks+user_scans+user_updates) access_count from #tmp t
	left join sys.dm_db_index_usage_stats s on t.object_id = s.OBJECT_ID
--WHERE s.database_id = DB_ID( 'bodb_licensee')
group by t.name
order by t.name


SELECT
s.Name AS SchemaName,
t.Name AS TableName,
p.rows AS RowCounts,
CAST(ROUND((SUM(a.used_pages) / 128.00), 2) AS NUMERIC(36, 2)) AS Used_MB,
CAST(ROUND((SUM(a.total_pages) - SUM(a.used_pages)) / 128.00, 2) AS NUMERIC(36, 2)) AS Unused_MB,
CAST(ROUND((SUM(a.total_pages) / 128.00), 2) AS NUMERIC(36, 2)) AS Total_MB
FROM sys.tables t
INNER JOIN sys.indexes i ON t.OBJECT_ID = i.object_id
INNER JOIN sys.partitions p ON i.object_id = p.OBJECT_ID AND i.index_id = p.index_id
INNER JOIN sys.allocation_units a ON p.partition_id = a.container_id
INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
WHERE s.Name = 'dbo'
GROUP BY t.Name, s.Name, p.Rows
ORDER BY s.Name, t.Name


SELECT OBJECT_NAME(OBJECT_ID) AS Object_, last_user_update,*
FROM sys.dm_db_index_usage_stats
WHERE database_id = DB_ID( 'bodb_licensee')
	and OBJECT_NAME(OBJECT_ID) IN(select name from #tmp)