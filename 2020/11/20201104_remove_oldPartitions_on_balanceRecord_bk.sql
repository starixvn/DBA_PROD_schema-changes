
declare @sourceTable varchar(100) = 'balanceRecord_bk',
		@targetTable varchar(100) = '',
		@tmptable varchar(100)	  = '',	
		@partitionsch varchar(512) = '',
		@partitionlist varchar(1000) =	--'38,39,40,41,42,43,44,45,46,47,48,49'   
										--'37,38,39,40,41,42,43,44,45,46,47,48'
										--'5,6,7,8,9,10,11,12,13,14,15,16'
										'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31'

select	@targetTable = @sourceTable+ '_v2',
		@tmptable	= @sourceTable + '_bkk'

SELECT @partitionsch = s.name 
FROM sys.indexes i
INNER JOIN sys.partition_schemes s ON i.data_space_id = s.data_space_id
INNER JOIN sys.tables t ON i.object_id = t.object_id
where t.name = @sourceTable and index_id = 1 

-- 1. create new table on same partitions schemas 
execute [dbo].[spCloneTableStructure]
	@SourceTable            = @sourceTable,
	@DestinationTable       = @targetTable,
	@partitionsch			= @partitionsch,---'ps_CREDIT_monthly',
	@PartionField           = 'ActionDate',
	@SourceSchema           = 'dbo',  
	@DestinationSchema      = 'dbo',    
	@RecreateIfExists       = 1 
	
-- 2. switch partitions to new table

execute dbo.spSwitchPartitionsToNewTable
	@SourceTable		= @sourceTable,
	@DestinationTable	= @targetTable,
	@PartitionsList		=	@partitionlist


-- 3. drop new table (target table)
 
declare @str nvarchar(1000) = 'DROP TABLE ' + @targetTable
select @str   


-- 4. merge partitions range & remove files/filegroups
EXECUTE spGenerateCleanUpScript
	@SourceTable			=	@SourceTable, 
	@avoidPartitionsList	=	''--show all, but you know which partitions should be merge/remove --@partitionlist
go


