/*
	Task: Add columns to CustLoginInfo_Member for some enahancements (TW)
	Run on DBCUST (Replication)
*/



use CustDB
go

ALTER TABLE dbo.CustLoginInfo_Member 
ADD [notify] [bit] NOT NULL CONSTRAINT [DF_CustLoginInfo_Member_notify] DEFAULT 1,
	[recommendation] [bit] NOT NULL CONSTRAINT [DF_CustLoginInfo_Member_recommendation] DEFAULT 1
GO
