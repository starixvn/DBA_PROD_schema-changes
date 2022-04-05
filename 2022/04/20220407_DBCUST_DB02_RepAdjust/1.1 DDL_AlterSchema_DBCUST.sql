/*
	Task: DDL Alter table column
	Run @ DBCUST
*/

USE CustDB
GO
ALTER TABLE BetLimitControlType ADD ExcludedLeagueGroupList VARCHAR(4000)
GO
ALTER TABLE Dep_CustBetLimit_Special ADD [MaxPayoutPerMatch] [money] NULL
GO

