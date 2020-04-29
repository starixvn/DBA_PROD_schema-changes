--=========== Prepare table [LicenseeCustComm_History] =====
-- Run on DBCUST, DB052, DB053, Db06, DB061, DBTP & MNL - change file path accordingly below


USE [master]
GO

ALTER DATABASE bodb_Licensee  
ADD FILEGROUP LicenseeCustComm_History_table  
GO  

ALTER DATABASE bodb_Licensee   
ADD FILE   
(  
    NAME = LicenseeCustComm_History_table_01,  
    FILENAME = 'H:\USER_DB\bodb_Licensee\LicenseeCustComm_History_table_01.ndf', --for DBCUST, DB053
	--FILENAME = 'G:\IBC_DB\bodb_Licensee\LicenseeCustComm_History_table_01.ndf', --for DB052, DB06
	--FILENAME = 'I:\USER_DB\bodb_Licensee\LicenseeCustComm_History_table_01.ndf', --for DB061
	--FILENAME = 'H:\IBC_DB\bodb_Licensee\LicenseeCustComm_History_table_01.ndf', --for DB0TP

	--FILENAME = 'H:\USER_DB\bodb_Licensee\LicenseeCustComm_History_table_01.ndf',--for DBMNL, MNL DBCUST, MNL DB06
	--FILENAME = 'G:\IBC_DB\bodb_Licensee\LicenseeCustComm_History_table_01.ndf', --for MNL DB052
	--FILENAME = 'D:\IBC_DB\bodb_Licensee\LicenseeCustComm_History_table_01.ndf', --for MNL DB053

    SIZE = 10MB,    
    FILEGROWTH = 10MB  
) TO FILEGROUP LicenseeCustComm_History_table
GO

USE [bodb_Licensee]
GO
CREATE TABLE [dbo].[LicenseeCustComm_History](
	[Id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CustID] [int] NOT NULL,
	[UpdatedTime] [datetime] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Comm] [decimal](9, 8) NULL,
 CONSTRAINT [PK_LicenseeCustComm_History_Id] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [LicenseeCustComm_History_table]
) ON [LicenseeCustComm_History_table]

GO
-- create index for arhive and reports
USE [bodb_Licensee]
GO
CREATE NONCLUSTERED INDEX IX_LicenseeCustComm_History_CustID_UpdatedTime ON LicenseeCustComm_History
(
	[CustID]
	,[UpdatedTime]
) INCLUDE ([ProductID],[Comm])
GO



--=========== Prepare func f_CheckRepTable =====
-- Run on DBCUST, DB052, DB053, DB06, DB061, DBTP & MNL - change file path accordingly below

USE bodb_Licensee
GO
CREATE FUNCTION [dbo].[f_CheckRepTable]
(
	@TableName varchar(50)
)
RETURNS BIT
/* 
	Created:20150603@Daniel
    Task: Check whether a table is published or replicated, use for checking table access via execRep SPs
    DB: All DB servers/DBs that have table(s) published/replicated
    
    Param: 
	   Input table's name to @TableName to check
	   + if return 1: Table is published (publisher) or replicated (subscriber) and can be accessed in exec rep SPs
	   + if return 0: Table is not either published or replicated
    
*/
AS
BEGIN
    DECLARE @ReturnVal BIT
    SET @ReturnVal = 0

    IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'MSreplication_objects') --if not subscriber
    BEGIN
	   IF EXISTS(SELECT 1 FROM sys.tables WHERE name = @TableName AND type = 'U' AND is_replicated = 1)--check table is published from publisher
		  SET @ReturnVal = 1
    END
    ELSE
    BEGIN
	   IF EXISTS(SELECT 1 FROM dbo.MSreplication_objects WHERE article = @TableName)	--check table in subscriber is replicated
		  SET @ReturnVal = 1
    END

    RETURN @ReturnVal
END
GO

