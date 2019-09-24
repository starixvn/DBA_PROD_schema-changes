
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.CS_Monitor_OutrightSel    Script Date: 9/24/2019 2:17:14 PM ******/
/****** Object:  Stored Procedure dbo.CS_Monitor_OutrightSel    Script Date: 9/24/2019 2:12:46 AM ******/
CREATE PROCEDURE [dbo].[CS_Monitor_OutrightSel]
	@IsShowAll	BIT = 0
AS

/*
	Created: Kos@20190405
	Task: CN88 Wager Monitoring - Get outright running
	DB: DB042.bodb02
	Revision:
		- 20190405@Kos: Create new [Redmine: 111245]
*/

BEGIN
	SET NOCOUNT ON

	DECLARE @IsTest BIT

	SELECT @IsTest = dbo.f_CheckSPVersion(@@PROCID)

	;WITH CTE_Sports AS (
		SELECT DISTINCT SportTypeGroup, SportType
		FROM dbo.CS_SportBettypeMatrix WITH (NOLOCK)
		WHERE IsTest <= @IsTest
			AND ProductID = 1
			AND Bettype NOT IN (9, 29)
	)
	SELECT
		l.sporttype,
		m.oddsstatus AS Status,
		m.orid AS MatchId,
		m.leagueid,
		m.matchcode,
		m.teamid AS HomeId,
		ISNULL(m.groupmatch, '') AS Race,
		s.SportTypeGroup
	FROM dbo.outright AS m WITH (NOLOCK)
		INNER JOIN dbo.League AS l WITH (NOLOCK) ON m.leagueid = l.leagueid
		INNER JOIN CTE_Sports AS s ON s.SportType = l.sporttype
	WHERE m.oddsstatus NOT IN ('completed', 'internal', 'closed')
		AND m.eventdate >= CONVERT(VARCHAR(10), DATEADD(dd, -1, CURRENT_TIMESTAMP), 120)
		AND l.isTest <= @IsShowAll
END
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


GO 
 GRANT EXECUTE ON [dbo].[CS_Monitor_OutrightSel] TO [bodbDownlineNetView]
GO 
 GRANT EXECUTE ON [dbo].[CS_Monitor_OutrightSel] TO [bodbDownlineNet]
GO 
