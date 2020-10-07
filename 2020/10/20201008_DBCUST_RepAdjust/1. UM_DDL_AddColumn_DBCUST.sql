/*
	Task: Alter tables in Replication - DDL commands
	DB: DBCUST/CustDB

*/
ALTER TABLE [dbo].[CustomerClassPolicy] 
ADD [Platform] tinyint null, [CurrencyID] tinyint null,
	[RepeatedBets] tinyint null,
	[MaxWinPerDay] int null