
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.Lrf_Forecast_OddsSelTopByMatch    Script Date: 9/24/2019 2:17:17 PM ******/
/****** Object:  Stored Procedure dbo.Lrf_Forecast_OddsSelTopByMatch    Script Date: 9/24/2019 2:12:48 AM ******/
CREATE PROCEDURE [dbo].[Lrf_Forecast_OddsSelTopByMatch]
    @matchid INT ,
    @bettype INT = 1
AS
/*
	Created: 20101207@Henry
	Task: Forecast at Lrf Site 
	DB: DB042.bodb02
	Original:Age_Forecast_OddsSelTopByMatch
	
	Revisions: 
        - 20190102@Joseph: Incorporate changes for E-Sports phase 2b [Redmine: #106553]
		- 20190415@Percy: Get livehomescore/liveawayscore data from match table instead of odds table [RedmineID: #113303]
		
*/
        SET NOCOUNT ON
        SELECT TOP 1 *
        FROM (
                SELECT TOP 1
                        hdp1 ,
                        hdp2 ,
                        odds1a ,
                        odds2a ,
                        ISNULL(m.livehomescore, 0) AS livehomescore ,
                        ISNULL(m.liveawayscore, 0) AS liveawayscore ,
                        switch ,
                        oddsstatus ,
                        m.homeid ,
                        m.awayid ,
                        ISNULL(m.isNeutral, CONVERT(BIT, 0)) AS IsNeutral
                FROM    odds WITH ( NOLOCK )
                        LEFT JOIN match M WITH ( NOLOCK ) ON odds.matchid = M.matchid
                WHERE   bettype = @bettype
                        AND odds.matchid = @matchid
                ORDER BY oddsid DESC
        ) as odds

        UNION ALL

        SELECT TOP 1 * 
        FROM (
                SELECT TOP 1
                        hdp1 ,
                        hdp2 ,
                        odds1a ,
                        odds2a ,
                        odds.livehomescore ,
                        odds.liveawayscore ,
                        switch ,
                        oddsstatus ,
                        m.homeid ,
                        m.awayid ,
                        ISNULL(m.isNeutral, CONVERT(BIT, 0)) AS IsNeutral
                FROM    oddsES as odds WITH ( NOLOCK )
                        LEFT JOIN match M WITH ( NOLOCK ) ON odds.matchid = M.matchid
                WHERE   bettype = @bettype
                        AND odds.matchid = @matchid
                ORDER BY oddsid DESC
       ) as oddsES
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


GO 
 GRANT EXECUTE ON [dbo].[Lrf_Forecast_OddsSelTopByMatch] TO [bodbLicenseeNet]
GO 
 GRANT EXECUTE ON [dbo].[Lrf_Forecast_OddsSelTopByMatch] TO [bodbDownlineNet]
GO 
 GRANT VIEW DEFINITION ON [dbo].[Lrf_Forecast_OddsSelTopByMatch] TO [vnteam]
GO 
