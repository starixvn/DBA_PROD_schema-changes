/*
	Creator:	20190530@Harvey.Nguyen
	Task:		Get customer's subscriber
	Server:		DBFRAUD.FPS_MiddleService

	@Reviewer:	
*/
USE [FPS_MiddleService]
GO
	CREATE NONCLUSTERED INDEX [IX_Associations_CustId]
	ON [dbo].[Associations] ([CustId])
	INCLUDE ([CreatedDate]) ON IDX
GO
