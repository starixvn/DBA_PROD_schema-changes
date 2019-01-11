/*
	Creator:	20190111@John
	Task:		Modify job [vnDBA ~ TGRS-Staging OS Data Daily-UAT] - [Redmine ID: 107602]
	Server:		DBTP.bodb_TGRS_UAT
	Reviewed:	@Billy
*/

--		Update Job steps vnDBA ~ TGRS-Staging OS Data Daily-UAT
----------------------------------------------------------------------------------------------------
USE bodb_TGRS_UAT
GO

EXECUTE	msdb.dbo.sp_update_jobstep
			@job_name			= N'vnDBA ~ TGRS-Staging OS Data Daily-UAT'
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
			EXEC [dbo].[Task_StagingOSTraderPerformanceByDate_xtest] @Date=@EventDate
	END
END'
		;

EXECUTE	msdb.dbo.sp_update_jobstep
			@job_name			= N'vnDBA ~ TGRS-Staging OS Data Daily-UAT'
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
		EXECUTE [dbo].[Task_StagingOSTraderPerformanceMonthly_xtest] @Month = @Month
	END
END'
		;
