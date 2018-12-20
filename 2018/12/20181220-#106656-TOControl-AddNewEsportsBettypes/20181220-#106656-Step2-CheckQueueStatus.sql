/*
	Creator:	20181220@Billy
	Task:		Check Queue Status - [Redmine: #106656]
	Server:		DB054
*/


USE bodb02;
GO

--	BEGIN STEP 1:
--		Table [bettrans]
----------------------------------------------------------------------------------------------------

DECLARE	@QueueCnt	BIGINT;

WHILE	0 = 0
BEGIN;
	SELECT	@QueueCnt = COUNT(1)
	FROM	dbo.Queue_TOControl_DBAGE WITH (NOLOCK);

	IF	@QueueCnt = 0
		BREAK;

	WAITFOR DELAY '00:00:01.000';
END;

RAISERROR('Queue is empty. Good to go!!!', 0, 0) WITH NOWAIT;