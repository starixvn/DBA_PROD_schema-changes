/*<info serverAlias="DBSIC-bodb_CustomerLog"></info>*/
/*
	Task - Scale out dbtrans
		+ Renew conversation
	Run on DBGRP03L
*/

use bodb_CustomerLog
go

select 'end conversation ''' + cast(conversation_handle as varchar(200)) +''' with cleanup ', * 
from sys.conversation_endpoints where far_service like '%Service_TicketVoiding_DBLOG%'
go
EXEC [sb].[DBA_ConversationManagement] 
	  @functionName = 'TicketVoiding'
	, @contractName = 'Contract_TicketVoiding_Log'		  
	, @fromService = 'Service_TicketVoiding_DBGRP03L'
	, @toService = 'Service_TicketVoiding_DBLOG'
	, @Coversation_number = 5
	, @Mode = 'Reset'

GO

select 'end conversation ''' + cast(conversation_handle as varchar(200)) +''' with cleanup ', * 
from sys.conversation_endpoints where far_service like '%Service_UserLog_DBLOG%'
go
EXEC [sb].[DBA_ConversationManagement] 
	  @functionName = 'UserLog'
	, @contractName = 'Contract_UserLog'		  
	, @fromService = 'Service_UserLog_DBGRP03L'
	, @toService = 'Service_UserLog_DBLOG'
	, @Coversation_number = 5
	, @Mode = 'Reset'

GO