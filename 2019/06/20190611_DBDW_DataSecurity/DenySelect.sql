/*
	created: 20190622@Daniel
	Task: Data Security for DW servers - Deny select on customer table
	DB: DBDW, DBDW2
*/

USE bodb_Account
GO
DENY SELECT ON dbo.Customer TO vnteam
GO

USE bodb_Audit
GO
DENY SELECT ON dbo._delete_Customer TO vnteam

USE FN
GO
DENY SELECT ON dbo.FW_Users TO vnteam