
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.CS_Monitor_MatchSelByID    Script Date: 9/24/2019 2:17:14 PM ******/
/****** Object:  Stored Procedure dbo.CS_Monitor_MatchSelByID    Script Date: 9/24/2019 2:12:46 AM ******/
CREATE PROCEDURE [dbo].[CS_Monitor_MatchSelByID]
	@MatchId INT
AS

/*
	Created: Kos@20190405
	Task: CN88 Wager Monitoring - Get match info by Match ID
	DB: DB042.bodb02

	Revision:
		- 20190405@Kos: Create new [Redmine: 111245]
*/

BEGIN
	SET NOCOUNT ON

	SELECT
		sporttype,
		eventstatus AS Status,
		matchid,
		leagueid,
		matchcode,
		homeid,
		awayid,
		showtime,
		IsNeutral,
		betstatus,
		ISNULL(SettlementStatus, 0) AS SettlementStatus
	FROM dbo.match WITH (NOLOCK)
	WHERE matchid = @MatchId
END
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


GO 
 GRANT EXECUTE ON [dbo].[CS_Monitor_MatchSelByID] TO [bodbDownlineNetView]
GO 
 GRANT EXECUTE ON [dbo].[CS_Monitor_MatchSelByID] TO [bodbDownlineNet]
GO 
