
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.CS_Monitor_SportSel    Script Date: 9/24/2019 2:17:14 PM ******/
/****** Object:  Stored Procedure dbo.CS_Monitor_SportSel    Script Date: 9/24/2019 2:12:46 AM ******/
CREATE PROCEDURE [dbo].[CS_Monitor_SportSel]
AS

/*
	Created: Kos@20190405
	Task: CN88 Wager Monitoring - Get sporttype group
	DB: DB042.bodb02

	Revisions:
		- 20190408@Kos: Create new [Redmine: 111245]
*/

BEGIN
	SET NOCOUNT ON;

	DECLARE @IsTest BIT

	SELECT @IsTest = dbo.f_CheckSPVersion(@@PROCID)

	;WITH CTE_Sports AS (
		SELECT DISTINCT SportTypeGroup, SportType
		FROM dbo.CS_SportBettypeMatrix WITH (NOLOCK)
		WHERE IsTest <= @IsTest AND ProductID = 1
	)
	SELECT
		s.SportTypeGroup,
		CASE
			WHEN s.SportTypeGroup = 99 THEN '99' -- Other Sports
			WHEN s.SportTypeGroup = 9 THEN '' -- Parlay
			ELSE STUFF((SELECT N',' + CONVERT(VARCHAR(5), SportType)
						FROM CTE_Sports
						WHERE SportTypeGroup = s.SportTypeGroup FOR XML PATH('')), 1, 1, '')
		END AS DisplaySport
	FROM CTE_Sports AS s
		INNER JOIN dbo.CS_f_SportTypeGroup_OrderSel(2) f ON s.SportTypeGroup = f.SportTypeGroup
	GROUP BY s.SportTypeGroup, f.OrderId
	ORDER BY f.OrderId
END
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


GO 
 GRANT EXECUTE ON [dbo].[CS_Monitor_SportSel] TO [bodbDownlineNetView]
GO 
 GRANT EXECUTE ON [dbo].[CS_Monitor_SportSel] TO [bodbDownlineNet]
GO 
