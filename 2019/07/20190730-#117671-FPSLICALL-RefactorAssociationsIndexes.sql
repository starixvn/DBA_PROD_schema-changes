/*
	Creator:	20190730@Billy
	Task:		Refactor Associations index - [Redmine: #117671]
	Server:		FPS_DB01\MSSQLSERVERWEB & FPS_DB02\FPS_DB01
*/


--	BEGIN STEP :
--		Refactor Association clustered index
----------------------------------------------------------------------------------------------------

CREATE CLUSTERED INDEX	CIX_Associations ON dbo.Associations (
							AccountID			ASC
						,	LastAccessedDate	ASC
						) ON ASSOCIATIONS_TBL;


--	BEGIN STEP :
--		Refactor Association nonclustered index
----------------------------------------------------------------------------------------------------

CREATE NONCLUSTERED INDEX	IX_Associations_DeviceId_AccountId ON dbo.Associations (
								DeviceID			ASC
							,	AccountID			ASC
							)
							INCLUDE (Ass_ID) ON ASSOCIATIONS_IDX;

