/*
	Task: support Transfer_Coll table in BU - Friday routine (#106220)
	Run at DBTRANS
*/


USE [msdb]
GO
EXEC msdb.dbo.sp_update_jobstep @job_id=N'bae11eb3-a20d-408f-8993-8ce763e19d7d', @step_id=2 , 
		@command=N'
DECLARE @archiveDate TABLE (rid INT PRIMARY KEY IDENTITY(1,1), winlostdate SMALLDATETIME);
DECLARE @wldate SMALLDATETIME
, @WaitFor VARCHAR(50);

INSERT INTO @archiveDate (winlostdate)
SELECT winlostdate
FROM dbo.Task_ArchiveDate WITH (NOLOCK)
ORDER BY winlostdate

SELECT @wldate = winlostdate
FROM @archiveDate
WHERE rid = 1;

DECLARE @rowcount INT;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettrans14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransm14'';
WAITFOR DELAY ''00:00:03'';

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''sum_winloss'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransG14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''translog14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransLC14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransRNG14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;
 
SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''Transfer_Coll'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''others'';
WAITFOR DELAY ''00:00:03'';
'
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_update_jobstep @job_id=N'bae11eb3-a20d-408f-8993-8ce763e19d7d', @step_id=3 , 
		@command=N'
DECLARE @archiveDate TABLE (rid INT PRIMARY KEY IDENTITY(1,1), winlostdate SMALLDATETIME);
DECLARE @wldate SMALLDATETIME
, @WaitFor VARCHAR(50);

INSERT INTO @archiveDate (winlostdate)
SELECT winlostdate
FROM dbo.Task_ArchiveDate WITH (NOLOCK)
ORDER BY winlostdate

SELECT @wldate = winlostdate
FROM @archiveDate
WHERE rid = 2;

DECLARE @rowcount INT;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettrans14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransm14'';
WAITFOR DELAY ''00:00:03'';

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''sum_winloss'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransG14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''translog14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransLC14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransRNG14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''Transfer_Coll'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

 
EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''others'';
WAITFOR DELAY ''00:00:03'';
'
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_update_jobstep @job_id=N'bae11eb3-a20d-408f-8993-8ce763e19d7d', @step_id=4 , 
		@command=N'
DECLARE @archiveDate TABLE (rid INT PRIMARY KEY IDENTITY(1,1), winlostdate SMALLDATETIME);
DECLARE @wldate SMALLDATETIME
, @WaitFor VARCHAR(50);

INSERT INTO @archiveDate (winlostdate)
SELECT winlostdate
FROM dbo.Task_ArchiveDate WITH (NOLOCK)
ORDER BY winlostdate

SELECT @wldate = winlostdate
FROM @archiveDate
WHERE rid = 3;

DECLARE @rowcount INT;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettrans14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransm14'';
WAITFOR DELAY ''00:00:03'';

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''sum_winloss'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransG14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''translog14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransLC14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransRNG14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''Transfer_Coll'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

 
EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''others'';
WAITFOR DELAY ''00:00:03'';
'
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_update_jobstep @job_id=N'bae11eb3-a20d-408f-8993-8ce763e19d7d', @step_id=5 , 
		@command=N'
DECLARE @archiveDate TABLE (rid INT PRIMARY KEY IDENTITY(1,1), winlostdate SMALLDATETIME);
DECLARE @wldate SMALLDATETIME
, @WaitFor VARCHAR(50);

INSERT INTO @archiveDate (winlostdate)
SELECT winlostdate
FROM dbo.Task_ArchiveDate WITH (NOLOCK)
ORDER BY winlostdate

SELECT @wldate = winlostdate
FROM @archiveDate
WHERE rid = 4;

DECLARE @rowcount INT;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettrans14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransm14'';
WAITFOR DELAY ''00:00:03'';

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''sum_winloss'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransG14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''translog14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransLC14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransRNG14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;
 
 
SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''Transfer_Coll'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;


EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''others'';
WAITFOR DELAY ''00:00:03'';
'
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_update_jobstep @job_id=N'bae11eb3-a20d-408f-8993-8ce763e19d7d', @step_id=6 , 
		@command=N'
DECLARE @archiveDate TABLE (rid INT PRIMARY KEY IDENTITY(1,1), winlostdate SMALLDATETIME);
DECLARE @wldate SMALLDATETIME
, @WaitFor VARCHAR(50);

INSERT INTO @archiveDate (winlostdate)
SELECT winlostdate
FROM dbo.Task_ArchiveDate WITH (NOLOCK)
ORDER BY winlostdate

SELECT @wldate = winlostdate
FROM @archiveDate
WHERE rid = 5;

DECLARE @rowcount INT;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettrans14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransm14'';
WAITFOR DELAY ''00:00:03'';

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''sum_winloss'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransG14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''translog14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransLC14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransRNG14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''Transfer_Coll'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

 
EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''others'';
WAITFOR DELAY ''00:00:03'';
'
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_update_jobstep @job_id=N'bae11eb3-a20d-408f-8993-8ce763e19d7d', @step_id=7 , 
		@command=N'
DECLARE @archiveDate TABLE (rid INT PRIMARY KEY IDENTITY(1,1), winlostdate SMALLDATETIME);
DECLARE @wldate SMALLDATETIME
, @WaitFor VARCHAR(50);

INSERT INTO @archiveDate (winlostdate)
SELECT winlostdate
FROM dbo.Task_ArchiveDate WITH (NOLOCK)
ORDER BY winlostdate

SELECT @wldate = winlostdate
FROM @archiveDate
WHERE rid = 6;

DECLARE @rowcount INT;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettrans14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransm14'';
WAITFOR DELAY ''00:00:03'';

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''sum_winloss'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransG14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''translog14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransLC14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransRNG14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''Transfer_Coll'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

 
EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''others'';
WAITFOR DELAY ''00:00:03'';
'
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_update_jobstep @job_id=N'bae11eb3-a20d-408f-8993-8ce763e19d7d', @step_id=8 , 
		@command=N'
DECLARE @archiveDate TABLE (rid INT PRIMARY KEY IDENTITY(1,1), winlostdate SMALLDATETIME);
DECLARE @wldate SMALLDATETIME
, @WaitFor VARCHAR(50);

INSERT INTO @archiveDate (winlostdate)
SELECT winlostdate
FROM dbo.Task_ArchiveDate WITH (NOLOCK)
ORDER BY winlostdate

SELECT @wldate = winlostdate
FROM @archiveDate
WHERE rid = 7;

DECLARE @rowcount INT;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettrans14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransm14'';
WAITFOR DELAY ''00:00:03'';

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''sum_winloss'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransG14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''translog14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransLC14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''bettransRNG14'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

SELECT @rowcount = 1;
WHILE @rowcount <> 0
BEGIN;
	EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''Transfer_Coll'', @rowcount = @rowcount OUTPUT;

	-- Dynamic Delay Time --
	SELECT	@WaitFor = dbo.f_BU_GetDelayTime(''FriRoutine'');
	WAITFOR DELAY @WaitFor;
END;

 
EXECUTE dbo.ExecRep_02 @winlostdate = @wldate, @Command = ''ALL_DB'', @deletedTarget = ''others'';
WAITFOR DELAY ''00:00:03'';
'
GO
