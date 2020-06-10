/*
	Task - Setup new server DB055
		+ Renew conversation
	Run on DB052
*/

use bodb02
go
--//make sure that sp exists already
-->> link sql code: https://gitlab.nexdev.net//DBA_PROD/database-administration/blob/98302-Troubleshoot-checklist/scripts/servicebroker/DBA_ConversationManagement.sql
EXEC [Sb].[DBA_ConversationManagement] 
	  @functionName = 'BETRUNNING'
	, @contractName = 'Contract_Settled_Ticket'		  
	, @fromService = 'Service_Settled_Ticket_DBAGE'
	, @toService = 'Service_Settled_Ticket_BETRUNNING'
	, @Coversation_number = 10
	, @Mode = 'Reset'

GO


