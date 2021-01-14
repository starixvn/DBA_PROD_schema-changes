/*
	Task - Setup new server DB052
		+ Renew conversation
	Run on DB052
*/

use bodb02
go

delete from [sb].[DialogPool]

GO

EXEC [Sb].[DBA_ConversationManagement] 
	  @functionName = 'BETRUNNING'
	, @contractName = 'Contract_Settled_Ticket'		  
	, @fromService = 'Service_Settled_Ticket_DBAGE'
	, @toService = 'Service_Settled_Ticket_BETRUNNING'
	, @Coversation_number = 10
	, @Mode = 'Reset'

GO

EXEC [Sb].[DBA_ConversationManagement] 
	  @functionName = 'TOControl'
	, @contractName = 'Contract_TOControl_Multiple'		  
	, @fromService = 'Service_TOControl_Target_DBAGE'
	, @toService = 'Service_TOControl_Initiator_DBAGE'
	, @Coversation_number = 5
	, @Mode = 'Reset'

GO

EXEC [Sb].[DBA_ConversationManagement] 
	  @functionName = 'TOControl'
	, @contractName = 'Contract_TOControl_Single'		  
	, @fromService = 'Service_TOControl_Target_DBAGE'
	, @toService = 'Service_TOControl_Initiator_DBAGE'
	, @Coversation_number = 5
	, @Mode = 'Reset'

GO
