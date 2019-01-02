/*
	Created by: Kos
	Date: 20181228
	Task: Remove index IXU_transid
	DB: DB053.bodb02
*/

USE [bodb02]
GO

DROP INDEX IXU_transid ON [dbo].[bettrans]
