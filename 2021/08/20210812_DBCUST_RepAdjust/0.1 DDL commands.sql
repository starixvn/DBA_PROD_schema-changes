/*
	Task: DDL alter replication
	Run @ DBCUST
*/

--Step 1: add 2 columns Danger4, Danger5 into custinfo
ALTER TABLE custinfo ADD Danger4 TINYINT NULL
GO
ALTER TABLE custinfo ADD Danger5 TINYINT NULL
GO
ALTER TABLE [dbo].[custInfo] ADD  CONSTRAINT [DF_custInfo_danger4]  DEFAULT ((0)) FOR [danger4]
GO
ALTER TABLE [dbo].[custInfo] ADD  CONSTRAINT [DF_custInfo_danger5]  DEFAULT ((0)) FOR [danger5]
GO
