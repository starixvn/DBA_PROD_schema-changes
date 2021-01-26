/*
	Task - Setup new server DB054
		+ Reset conversation
	Run on DBTrans
*/

use bodb_CustomerLog
go

EXEC [Sb].[DBA_ConversationManagement] 
	  @functionName = 'TicketVoiding'
	, @contractName = 'Contract_TicketVoiding_Log'		  
	, @fromService = 'Service_TicketVoiding_DBTXN'
	, @toService = 'Service_TicketVoiding_DBLOG'
	, @Coversation_number = 0
	, @Mode = 'Reset'

GO

