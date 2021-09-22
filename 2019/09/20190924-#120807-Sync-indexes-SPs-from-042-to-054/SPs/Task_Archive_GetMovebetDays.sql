
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.Task_Archive_GetMovebetDays    Script Date: 9/24/2019 2:17:18 PM ******/
/****** Object:  Stored Procedure dbo.Task_Archive_GetMovebetDays    Script Date: 9/24/2019 2:12:48 AM ******/
CREATE PROCEDURE [dbo].[Task_Archive_GetMovebetDays]
AS
/*
	Create By: 20180625@Patrick
	Task: Get movebet days
	DB: DB042/bodb02
		
	Para's explaination
*/
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[Task_ArchiveBet] WITH(ROWLOCK)

	DECLARE @MoveBetSchedule TABLE (ScheduleId TINYINT, MoveBetsDay DATE)
	INSERT INTO @MoveBetSchedule (ScheduleId, MoveBetsDay)
	EXEC DBTXN.bodb02.dbo.Task_MoveBetsDayByScheduleSel

	INSERT dbo.[Task_ArchiveBet](winlostdate)
	SELECT MoveBetsDay
	FROM @MoveBetSchedule

END
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


GO 
