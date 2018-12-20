/*
	Task: Add a new index for Dormant customer search in LAP  - Redmine #102680
	Creator: Dominic@20181220
	Run at: bodb02@DB052
*/
USE bodb02
GO

CREATE NONCLUSTERED INDEX IX_Recommend ON Dep_Customer_Archived([Recommend]) INCLUDE(username,username2,ClosingBalance,ArchivedDate)