/*
	Task: DDL commands
	Run @ DBTRANS
*/

USE bodb02
GO

ALTER TABLE [dbo].[TicketVoiding_VoidingHistory]
ADD
	MinWinlostDate	DATETIME NULL,
	MaxWinlostDate	DATETIME NULL
GO






