
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.Lrf_Forecast_MatchList    Script Date: 9/24/2019 2:17:17 PM ******/
/****** Object:  Stored Procedure dbo.Lrf_Forecast_MatchList    Script Date: 9/24/2019 2:12:48 AM ******/
/****** Object:  Stored Procedure dbo.Lrf_Forecast_MatchList    Script Date: 8/8/2018 8:58:35 AM ******/
/****** Object:  Stored Procedure dbo.Lrf_Forecast_MatchList    Script Date: 8/3/2018 8:46:11 AM ******/

CREATE PROCEDURE Lrf_Forecast_MatchList 
(
	@LeagueID INT
)
AS

/*
Created: Victor@20130802
Task : Forecast
DB: DB042.bodb02
Original: [Lrf_Forecast_MatchList]
Revisions:    

*/

BEGIN
	SET NOCOUNT ON

	SELECT matchid, homeid, awayid, IsNeutral
	FROM bodb02.dbo.Match (NOLOCK)
	WHERE leagueid = @LeagueID AND eventstatus LIKE 'running'
END
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


GO 
 GRANT EXECUTE ON [dbo].[Lrf_Forecast_MatchList] TO [bodbLicenseeNet]
GO 
 GRANT VIEW DEFINITION ON [dbo].[Lrf_Forecast_MatchList] TO [vnteam]
GO 
