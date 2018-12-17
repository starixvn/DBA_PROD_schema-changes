/*
	Task: Change data type of Dep_Customer_Archived_Config.[Message] to support batch mode - Redmine #105480
	Creator: Dominic@20181217
	Run at: bodb_CustomerLog@DB052
*/
USE [bodb_CustomerLog]
GO

ALTER TABLE DBALog_Archive_Dep_Cust_Process ALTER COLUMN [Message] VARCHAR(MAX)