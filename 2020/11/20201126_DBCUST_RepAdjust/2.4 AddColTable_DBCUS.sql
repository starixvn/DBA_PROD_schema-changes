/*
	Task: Add column of table after removing from Replication
	Run script below @ DBCUST
*/

USE CustDB
GO
ALTER TABLE [dbo].[CustomerClassPolicy] ADD MinBet INT NULL
GO
ALTER TABLE [dbo].[CustomerClassPolicy] ADD SeizeBetTicket TINYINT NULL