/*
	Creator:	20191106@Billy
	Task:		Drop SP used for SSIS package related to moving data of BetLucky3Result in Thursday Routine - [Redmine: #122987]
	Server:		DBTXN.bodb02
*/

--	BEGIN STEP:
--		Drop SP
----------------------------------------------------------------------------------------------------

USE	bodb02;
GO

DROP PROCEDURE	dbo.Task_Archive_SelectBetLucky3Result;
GO