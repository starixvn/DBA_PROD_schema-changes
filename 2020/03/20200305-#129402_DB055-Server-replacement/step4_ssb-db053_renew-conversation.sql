/*
	Task - Setup new server DB055
		+ Renew conversation
	Run on DB053
*/

use bodb02
go

EXEC [Sb].[DBA_ConversationManagement] 
	  @functionName = 'BETRUNNING'
	, @contractName = 'Contract_Settled_Ticket'		  
	, @fromService = 'Service_Settled_Ticket_DBAGE'
	, @toService = 'Service_Settled_Ticket_BETRUNNING'
	, @Coversation_number = 10
	, @Mode = 'Reset'

GO


