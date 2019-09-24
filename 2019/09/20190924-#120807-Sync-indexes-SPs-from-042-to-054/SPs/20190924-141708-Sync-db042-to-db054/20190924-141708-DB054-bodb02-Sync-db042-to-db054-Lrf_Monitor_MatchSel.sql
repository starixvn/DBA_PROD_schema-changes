
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.Lrf_Monitor_MatchSel    Script Date: 9/24/2019 2:17:18 PM ******/
/****** Object:  Stored Procedure dbo.Lrf_Monitor_MatchSel    Script Date: 9/24/2019 2:12:48 AM ******/
CREATE PROCEDURE [dbo].[Lrf_Monitor_MatchSel]
AS

/*
	Created: Henry@20111011
	Task: Monitor lastest bets list - get match running
	DB: DB042.bodb02
	Original: Age_Monitor_MatchSel
	Revision:
		- 20181008@Kos: Migrate to DB042 [RedmineID: #99464]
		- 20190509@Kos: Show match KO time for single ticket [Redmine: #112731]
					- Return additional column EventDate DATETIME

	Parameter's Explanation:
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
		'' AS Race,
		GlobalShowTime AS EventDate
	FROM dbo.match WITH (NOLOCK)
	WHERE eventstatus <> 'completed'
END
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


GO 
 GRANT EXECUTE ON [dbo].[Lrf_Monitor_MatchSel] TO [bodbLicenseeNet]
GO 
 GRANT VIEW DEFINITION ON [dbo].[Lrf_Monitor_MatchSel] TO [vnteam]
GO 
