/*
	Creator:	20190111@John
	Task:		Modify job [vnDBA ~ TGRS-Staging OS Data Daily-UAT] - [Redmine ID: 107602]
	Server:		DB06.bodb_TGRS
	Reviewed:	@Billy
*/

--		Update Job steps 'TGRS-Staging OS Data Daily'
----------------------------------------------------------------------------------------------------
USE bodb_TGRS
GO

EXECUTE	msdb.dbo.sp_update_jobstep
			@job_name			= N'TGRS-Staging OS Data Daily'
		,	@step_id			= 4
		,	@step_name			= N'04.Staging Sum Daily Table From OSStagingTraderPerformance'
		,	@command			= N'DECLARE @EventDate DATE = ''1900-01-01''
WHILE (1 = 1)
BEGIN
	SELECT @EventDate = (
			SELECT TOP (1) EventDate
			FROM [dbo].[OSStaging_EventDate] WITH (NOLOCK)
			WHERE EventDate > @EventDate
			ORDER BY EventDate ASC
			)

	IF @EventDate IS NULL
	BEGIN
		BREAK;
	END
	ELSE
	BEGIN
			EXEC [dbo].[Task_StagingOSTraderPerformanceByDate] @Date=@EventDate
	END
END'
		;

EXECUTE	msdb.dbo.sp_update_jobstep
			@job_name			= N'TGRS-Staging OS Data Daily'
		,	@step_id			= 5
		,	@step_name			= N'05.Staging Sum Monthly Table From OSStagingTraderPerformance'
		,	@command			= N'DECLARE @Month DATE = ''1900-01-01'';
WHILE (1 = 1)
BEGIN
	SELECT @Month = (
			SELECT TOP (1) DATEADD(DAY, 1 - DAY(EventDate), EventDate)
			FROM [dbo].[Staging_EventDate] WITH (NOLOCK)
			WHERE DATEADD(DAY, 1 - DAY(EventDate), EventDate) > @Month
			)

	IF @Month IS NULL
	BEGIN
		BREAK;
	END
	ELSE
	BEGIN
		EXECUTE [dbo].[Task_StagingOSTraderPerformanceMonthly] @Month = @Month
	END
END'
		;
