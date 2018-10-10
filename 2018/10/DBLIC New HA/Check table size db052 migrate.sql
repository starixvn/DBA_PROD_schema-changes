SELECT 
s.Name AS SchemaName,
t.Name AS TableName,
CAST(ROUND((SUM(a.total_pages) / 128.00), 2) AS NUMERIC(36, 2)) AS Total_MB
FROM sys.tables t
INNER JOIN sys.indexes i ON t.OBJECT_ID = i.object_id
INNER JOIN sys.partitions p ON i.object_id = p.OBJECT_ID AND i.index_id = p.index_id
INNER JOIN sys.allocation_units a ON p.partition_id = a.container_id
INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
WHERE s.Name = 'dbo'
	and t.name IN(
'bettrans',
'LicIntegrationSetting',
'bettrans_AGCasino',
'BalanceAGCasino',
'Product3rd_ImportQueue',
'bettrans_GoldDeluxe',
'Product3rd_ResettledBetHistory',
'bettrans_PlaytechCS',
'LicenseeVersionKey')
GROUP BY t.Name, s.Name
ORDER BY s.Name, t.Name