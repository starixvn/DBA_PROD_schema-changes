use balanceRecord 
go

declare @sourceTable varchar(100) = 'BalanceRecord_bk',
		@targetTable varchar(100) = '',
		@tmptable varchar(100)	  = '',	
		@partitionsch varchar(512) = '',
		@partitionlist varchar(1000) = '1'

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
	@PartionField           = 'ActionDate',
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
-- 3.2 DBSPARE(ARCHIVE): if you are preparing for archive database, then drop original (source) table and use target table as archived

-- step 3.1 
declare @str nvarchar(1000) = 'DROP TABLE ' + @targetTable
select @str   
 
--print command and check carefully before executing
declare @str nvarchar(1000) = 'DROP TABLE ' + @tmptable
select @str 

-- 4. merge partitions range & remove files/filegroups
----' remember to drop switched out table before merge range, avoid moving data rows, physcially'
----EXECUTE spGenerateCleanUpScript
----	@SourceTable			=	@SourceTable, 
----	@avoidPartitionsList	=	''--show all, but you know which partitions should be merge/remove --@partitionlist
----go
 

 ---DB05BK1
 ALTER partition function pf_BR_monthly() merge range (N'2020-10-31 23:59:59.997')	
 
 ALTER DATABASE [BalanceRecord] REMOVE FILE BR_20M10	
 
 ALTER DATABASE [BalanceRecord] REMOVE FILEGROUP BR_20M10


 --DB05
 /*
ALTER partition function pf_BR_monthly() merge range (N'2020-08-31 23:59:59.997') 
ALTER partition function pf_BR_monthly() merge range (N'2020-09-30 23:59:59.997')
ALTER partition function pf_BR_monthly() merge range (N'2020-10-31 23:59:59.997')

ALTER DATABASE [BalanceRecord] REMOVE FILE BR_20M10
ALTER DATABASE [BalanceRecord] REMOVE FILE BR_20M09
ALTER DATABASE [BalanceRecord] REMOVE FILE BR_20M08

ALTER DATABASE [BalanceRecord] REMOVE FILEGROUP BR_20M10
ALTER DATABASE [BalanceRecord] REMOVE FILEGROUP BR_20M09
ALTER DATABASE [BalanceRecord] REMOVE FILEGROUP BR_20M08

*/

