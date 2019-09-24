
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.CS_TotalBets_EventInfo    Script Date: 9/24/2019 2:17:15 PM ******/
/****** Object:  Stored Procedure dbo.CS_TotalBets_EventInfo    Script Date: 9/24/2019 2:12:47 AM ******/

CREATE PROCEDURE [dbo].[CS_TotalBets_EventInfo]
	@MatchId INT = 0
AS
 
/*
Created: 20190307@Sophia
Task : CN88 Total Bet: Match Info 
DB: DB042.bodb02
Original:

Revisions:
    - 20190307@Sophia: initial SP [Redmine: #109693] 
	
Param's Explanation:
 
*/
BEGIN
	SET NOCOUNT ON
	SELECT 	m.MatchID,
			m.Sporttype,
			m.leagueid,				
			m.HomeId,	
			m.AwayId,
			m.LiveHomeScore,
			m.LiveAwayScore,
			m.ShowtimeDT,
			mr.OfferLive,
			m.IsNeutral
	FROM dbo.Match m WITH (NOLOCK)
		INNER JOIN dbo.match_remark mr WITH (NOLOCK) ON m.MatchID = mr.MatchID 
	WHERE m.MatchID = @MatchID
	 
END
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


GO 
 GRANT EXECUTE ON [dbo].[CS_TotalBets_EventInfo] TO [bodbDownlineNetView]
GO 
 GRANT EXECUTE ON [dbo].[CS_TotalBets_EventInfo] TO [bodbDownlineNet]
GO 
