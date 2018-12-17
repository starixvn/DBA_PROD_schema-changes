/*
	Task: Update deposit archive configuration to archive members of RYB95 only - Redmine #105480
	Creator: Dominic@20181217
	Run at: CustDB@DBCUST
*/
USE CustDB
GO

UPDATE Dep_Customer_Archived_Config WITH(ROWLOCK)
Set Status = 1 --To Skip
WHERE site<>'RYB95'