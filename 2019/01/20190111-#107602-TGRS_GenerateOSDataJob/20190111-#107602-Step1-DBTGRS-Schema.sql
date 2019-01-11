/*
	Creator:	20190111@John
	Task:		Exclude Cashout tickets from Betcount figures in TGR reports [Redmine ID: 107602]
	Server:		DB06.bodb_TGRS & DBTP.bodb_TGRS_UAT
*/

CREATE TABLE [dbo].[OSStaging_EventDate](
		[EventDate] DATE NULL
) ON [DATA];
	
CREATE CLUSTERED INDEX	CIX_OSStaging_EventDateIdx ON dbo.OSStaging_EventDate(
		EventDate		ASC
) ON [DATA];
