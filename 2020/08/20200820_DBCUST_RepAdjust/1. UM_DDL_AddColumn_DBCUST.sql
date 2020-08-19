/*
	Task: Alter tables in Replication - DDL commands
	DB: DBCUST/CustDB

*/

use [CustDB]
GO
ALTER TABLE [dbo].[CustLoginInfo_Member] ADD ConfirmBet bit NULL
GO