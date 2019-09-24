
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.CS_TotalBets_League_Sel    Script Date: 9/24/2019 2:17:15 PM ******/
/****** Object:  Stored Procedure dbo.CS_TotalBets_League_Sel    Script Date: 9/24/2019 2:12:47 AM ******/

CREATE PROCEDURE [dbo].[CS_TotalBets_League_Sel]
	@SporttypeGroup INT = 0, 
	@Type TINYINT = 1
AS
 
/*
Created: 20190307@Sophia
Task : CN88 - Total Bet - get list of League
DB: DB042.bodb02
Original:

Revisions:
    - 20190307@Sophia: initial SP [Redmine: #109693]
	- 20190418@Sophia: SB only [Redmine: #109521]
 
	
Param's Explanation:
	@Type = 0:  All, 
		  = 1: In-play, 
		  = 2: Today, 
		  = 3: Early,
		  = 4: Outright
		  = 5: Started

*/
BEGIN
	SET NOCOUNT ON

	------ Check SP Version
	DECLARE @isTest BIT = 0
	SELECT  @isTest = dbo.f_CheckSPVersion(@@PROCID)

	--- Get Sporttype
	DECLARE @SporttypeList VARCHAR(MAX)	
	SELECT @SporttypeList = COALESCE (@SporttypeList + ',', '') + CONVERT(VARCHAR(5),Sporttype) FROM bodb02.dbo.CS_f_SporttypeMatrix_Sel (1, @SporttypeGroup, 0, @isTest)	
		
	SELECT DISTINCT LeagueID from dbo.CS_f_TotalBets_Event_Sel (@Type, @isTest, 0, @SporttypeList) 
	 
	
END
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


GO 
 GRANT EXECUTE ON [dbo].[CS_TotalBets_League_Sel] TO [bodbDownlineNetView]
GO 
 GRANT EXECUTE ON [dbo].[CS_TotalBets_League_Sel] TO [bodbDownlineNet]
GO 
