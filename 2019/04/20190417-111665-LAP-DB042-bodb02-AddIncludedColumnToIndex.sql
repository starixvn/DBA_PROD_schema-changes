/*
	Created by: Kos
	Date: 20190417
	Task: Add included columns username to index IX_agent of table Customer
	DB: DB042.bodb02
*/

USE [bodb02]
GO

CREATE NONCLUSTERED INDEX [IX_agent] ON [dbo].[Customer]
(
	[recommend] ASC,
	[roleid] ASC,
	[creatdate] ASC
)
INCLUDE ( 	[username2],
	[username]) 
WITH (ONLINE = OFF,DROP_EXISTING = ON) ON [Customer_index]
GO

