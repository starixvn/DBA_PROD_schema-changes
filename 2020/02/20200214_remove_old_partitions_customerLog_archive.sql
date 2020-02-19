/*
	prepare in script:
	C0.prepare 1.sql
	C0.prepare 2.sql
	C0.prepare 3.sql
	
	UserLog_ExternalAPI - 0
    UserLog_Login  1 - 25
    UserLog_RunSP  1-25
    UserLog_Credit  1- 24
    UserLog_Settle 1-24
    UserLog_Transaction 1-24
    UserLog_Transfer 1-24
    UserLog_CasinoAPI 1-24

*/

declare @sourceTable varchar(100) = 'CS_UserLog_RunSP',
		@targetTable varchar(100) = '',
		@tmptable varchar(100)	  = '',	
		@partitionsch varchar(512) = '',
		@partitionlist varchar(1000) =	--'38,39,40,41,42,43,44,45,46,47,48,49'   
										--'37,38,39,40,41,42,43,44,45,46,47,48'
										--'5,6,7,8,9,10,11,12,13,14,15,16'
										'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24'

select	@targetTable = @sourceTable+ '_v2',
		@tmptable	= @sourceTable + '_bkk'

SELECT @partitionsch = s.name
--OBJECT_SCHEMA_NAME(i.object_id) AS [Schema Name],
--t.name AS [Table Name],
--i.name AS [Index Name],
--s.name AS [Partition Scheme], *
FROM sys.indexes i
INNER JOIN sys.partition_schemes s ON i.data_space_id = s.data_space_id
INNER JOIN sys.tables t ON i.object_id = t.object_id
where t.name = @sourceTable and index_id = 1 

-- 1. create new table on same partitions schemas 
execute [dbo].[spCloneTableStructure]
	@SourceTable            = @sourceTable,
	@DestinationTable       = @targetTable,
	@partitionsch			= @partitionsch,---'ps_CREDIT_monthly',
	@PartionField           = 'LogDate',
	@SourceSchema           = 'dbo',  
	@DestinationSchema      = 'dbo',    
	@RecreateIfExists       = 1
	
-- 2. switch partitions to new table

execute dbo.spSwitchPartitionsToNewTable
	@SourceTable		= @sourceTable,
	@DestinationTable	= @targetTable,
	@PartitionsList		=	@partitionlist


-- 3. depend on what kind of task you are doing might have different step here
-- 3.1 PRODUCTION: if you are removing old partitions on production then just drop target table 
-- step 3.1 
declare @str nvarchar(1000) = 'DROP TABLE ' + @targetTable
select @str   
 
-- 4. merge partitions range & remove files/filegroups
' remember to drop switched out table before merge range, avoid moving data rows, physcially'
EXECUTE spGenerateCleanUpScript
	@SourceTable			=	@SourceTable, 
	@avoidPartitionsList	=	''--show all, but you know which partitions should be merge/remove --@partitionlist
go
 