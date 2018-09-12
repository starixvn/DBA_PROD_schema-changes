/*
	Creator:	20180829@Casey
	Task:		[Soccer] - Implement a feature to monitor data between NAP vs TGR - [Redmine: #89493]
	Server:		DB06.bodb_TGRS & DBTP.bodb_TGRS_UAT
*/

	CREATE TABLE [dbo].[TrackChangedMatch](
	[MatchId] [int] NOT NULL,
	[EventDate] [date] NOT NULL,
	[SportType] [smallint] NOT NULL,
	[BetType] [smallint] NOT NULL,
	[OldCapturedDate] [datetime] NULL,
	[OldTraderID] [int] NULL,
	[OldTurnOver] [money] NULL,
	[OldWinLost] [money] NULL,
	[OldBetCount] [int] NULL,
	[NewCapturedDate] [datetime] NULL,
	[NewTraderID] [int] NULL,
	[NewTurnOver] [money] NULL,
	[NewWinLost] [money] NULL,
	[NewBetCount] [int] NULL,
	[IsNotified] [int] NULL,
	) ON [DATA]
	
	CREATE CLUSTERED INDEX	CIX_TrackChangedMatch_MatchIdSportBettype ON dbo.TrackChangedMatch(
		MatchId		ASC
		, Bettype	ASC
	)ON [DATA];
	
	CREATE NONCLUSTERED INDEX	NIX_TrackChangedMatch_EventDate ON dbo.TrackChangedMatch(
		EventDate ASC
	)ON [DATA];
	
	CREATE NONCLUSTERED INDEX	NIX_TrackChangedMatch_OldCapturedDate ON dbo.TrackChangedMatch(
		OldCapturedDate ASC
	)ON [DATA];
	
	CREATE NONCLUSTERED INDEX	NIX_TrackChangedMatch_NewCapturedDate ON dbo.TrackChangedMatch(
		NewCapturedDate ASC
	)ON [DATA];
GO

CREATE TABLE [dbo].[TrackChangesOnMatches_Queue](
	[MatchId] [int] NOT NULL,
	[EventDate] [date] NOT NULL,
	[SportType] [smallint] NOT NULL,
	[BetType] [smallint] NOT NULL,
	[OldCapturedDate] [datetime] NULL,
	[OldTraderID] [int] NULL,
	[OldTurnOver] [money] NULL,
	[OldWinLost] [money] NULL,
	[OldBetCount] [int] NULL,
	) ON [DATA]
	
	CREATE CLUSTERED INDEX	CIX_TrackChangesOnMatches_Queue_MatchIdSportBettype ON dbo.TrackChangesOnMatches_Queue(
		MatchId		ASC
		, Bettype	ASC
	)ON [DATA];
	
	CREATE NONCLUSTERED INDEX	NIX_TrackChangesOnMatches_Queue_EventDate ON dbo.TrackChangesOnMatches_Queue(
		EventDate ASC
	)ON [DATA];
	
	CREATE NONCLUSTERED INDEX	NIX_TrackChangesOnMatches_Queue_OldCapturedDate ON dbo.TrackChangesOnMatches_Queue(
		OldCapturedDate ASC
	)ON [DATA];

GO
	CREATE TABLE	dbo.TracePerformanceScannedMatches (
			MatchId			INT NOT NULL
			, EventDate		DATETIME
			, KickOffTime	DATETIME
			, WorkShift		TINYINT
			, MatchCode		NVARCHAR(50)			
			, LeagueId		INT			
			, SportType		INT
			, HomeId		INT
			, AwayId		INT
			, LeagueName	NVARCHAR(100)
			, HomeName		NVARCHAR(100)
			, SpecialType	INT
			, fromSP		BIT	--1 Daily, 0 RealTime
			, CapturedDate		DATETIME		
	)ON [DATA];
	
	CREATE CLUSTERED INDEX	CIX_TracePerformanceScannedMatches_MatchId ON dbo.TracePerformanceScannedMatches(
		MatchId		ASC
	)ON [DATA];
	
	CREATE NONCLUSTERED INDEX NIX_TracePerformanceScannedMatches_EventDate ON dbo.TracePerformanceScannedMatches (
		EventDate	ASC
	)ON [DATA];
	
	CREATE NONCLUSTERED INDEX NIX_TracePerformanceScannedMatches_CapturedDate ON dbo.TracePerformanceScannedMatches (
		CapturedDate	ASC
	)ON [DATA];
GO
	CREATE TABLE	dbo.TraceScannedMatchesInfo (
			MatchId			INT NOT NULL
			, EventDate		DATETIME NOT NULL
			, Bettype		INT NOT NULL
			, LiveIndicator	BIT	NULL
			, BetCount INT NULL
			, SumStake MONEY NULL
			, SumVirtualRate FLOAT NULL
			, SumModds SMALLMONEY NULL
			, SumWinlost MONEY NULL
			, SumComm MONEY NULL
			, SumActualStake MONEY NULL
			, fromSP		BIT	--1 Daily, 0 RealTime
			, CapturedDate		DATETIME		
	);
	
	CREATE CLUSTERED INDEX	CIX_TraceScannedMatchesInfo_MatchId ON dbo.TraceScannedMatchesInfo(
		MatchId		ASC
		,Bettype		ASC
	)ON [DATA];
	
	CREATE NONCLUSTERED INDEX NIX_TraceScannedMatchesInfo_EventDate ON dbo.TraceScannedMatchesInfo (
		EventDate	ASC
	)ON [DATA];
	
	CREATE NONCLUSTERED INDEX NIX_TraceScannedMatchesInfo_CapturedDate ON dbo.TraceScannedMatchesInfo (
		CapturedDate	ASC
	)ON [DATA];
GO	
	CREATE TABLE dbo.TracePerformanceTrader (
			CustId				INT
		,	LeagueId			INT
		,	MatchId				INT
		,	EventDate			DATETIME
		,	Bettype				INT
		,	TraderBettype		INT
		,	OperatorType		INT
		,	MainDBBetType		INT
		,	TeamId				INT
		,	Grade				TINYINT
		,	fromSP				BIT	--1 Daily, 0 RealTime
		,	CapturedDate		DATETIME	
	)ON [DATA];

	CREATE CLUSTERED INDEX	 CIX_TracePerformanceTrader_CustIdMatchIdBettype ON dbo.TracePerformanceTrader (
			MatchId				ASC
		,	BetType				ASC
		,	CustId				ASC
	)ON [DATA];
	
	CREATE NONCLUSTERED INDEX NIX_TracePerformanceTrader_EventDate ON dbo.TracePerformanceTrader (
		EventDate	ASC
	)ON [DATA];

	CREATE NONCLUSTERED INDEX NIX_TracePerformanceTrader_CapturedDate ON dbo.TraceScannedMatchesInfo (
		CapturedDate	ASC
	)ON [DATA];