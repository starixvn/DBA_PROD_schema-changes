/*
	created: 20190622@Daniel
	Task: Data Security for DW servers - Deny select on customer table
	DB: DBDW/bodb_Account, DBDW2/bodb_Account
*/


DENY SELECT ON dbo.Customer TO vnteam
GO
