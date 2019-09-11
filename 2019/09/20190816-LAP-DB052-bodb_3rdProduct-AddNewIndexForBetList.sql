/*
	Created by: Kos
	Date: 20190816
	Task: Add new index to support bet list
	DB: DB052.bodb_3rdProduct
*/

USE [bodb_3rdProduct]
GO

CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[Bettrans_Exchange]
(
	[userId] ASC,
	[eventID] ASC,
	[marketID] ASC
) ON [3rdProduct_Data]
GO

