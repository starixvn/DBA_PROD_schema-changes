/*
	Creator:	20191128@Billy
	Task:		Arrange user permission on bodb_Ploutos - [Redmine: #123957]
	Server:		DB053
*/

CREATE LOGIN bodbPloutosNet
WITH	PASSWORD			= 0x0100B9C31CEE001C2532D065CF16E82C1AD027D0CBAF25C3EA32 HASHED
	,	SID					= 0xAFE93D32A2105E468E2615E9D7618F77
	,	DEFAULT_DATABASE	= master
	,	CHECK_POLICY		= ON
	,	CHECK_EXPIRATION	= OFF
	;
GO

USE	bodb_Ploutos;
CREATE USER bodbPloutosNet FOR LOGIN bodbPloutosNet;
GRANT EXECUTE ON TYPE::dbo.TVP_PlayerProfile TO bodbPloutosNet;
GRANT EXECUTE ON TYPE::dbo.TVP_BetTicket TO bodbPloutosNet;
GRANT EXECUTE ON TYPE::dbo.TVP_ErrorMessage TO bodbPloutosNet;
GO

USE bodb_Licensee;
CREATE USER bodbPloutosNet FOR LOGIN bodbPloutosNet;
GRANT SELECT ON Licensees TO bodbPloutosNet;
GO

USE bodb02;
CREATE USER bodbPloutosNet FOR LOGIN bodbPloutosNet;
GRANT SELECT ON customer TO bodbPloutosNet;
GO

USE msdb;
CREATE USER bodbPloutosNet FOR LOGIN bodbPloutosNet;
GRANT EXECUTE ON dbo.sp_send_dbmail TO bodbPloutosNet;
GO
