/*
	Task - Upgrade SQL Server DB054 to 2019
		+ Renew conversation
	Run on DBCUST
*/

use bodb_CustomerLog
go

EXEC [sb].[DBA_ConversationManagement]
	  @functionName = 'Login'
	, @contractName = 'Contract_CustomerLog_CS_UserLog_Login'		  
	, @fromService = 'Service_CustomerLog_DBCUST'
	, @toService = 'Service_CustomerLog_DBLOG'
	, @Coversation_number = 10
	, @Mode = 'Reset'

GO

EXEC [sb].[DBA_ConversationManagement] 
	  @functionName = 'Login'
	, @contractName = 'Contract_CustomerLog_eaUserLog_Login'		  
	, @fromService = 'Service_CustomerLog_DBCUST'
	, @toService = 'Service_CustomerLog_DBLOG'
	, @Coversation_number = 5
	, @Mode = 'Reset'

GO

EXEC [sb].[DBA_ConversationManagement] 
	  @functionName = 'Login'
	, @contractName = 'Contract_CustomerLog_UserLog_Login'		  
	, @fromService = 'Service_CustomerLog_DBCUST'
	, @toService = 'Service_CustomerLog_DBLOG'
	, @Coversation_number = 10
	, @Mode = 'Reset'

GO

--UserLog_Others
EXEC [sb].[DBA_ConversationManagement] 
	  @functionName = 'UserLog_Others'
	, @contractName = 'Contract_CustomerLog_CS_UserLog_Credit'		  
	, @fromService = 'Service_UserLog_Others_DBCUST'
	, @toService = 'Service_UserLog_Others_DBLOG'
	, @Coversation_number = 10
	, @Mode = 'Reset'

GO

EXEC [sb].[DBA_ConversationManagement] 
	  @functionName = 'UserLog_Others'
	, @contractName = 'Contract_CustomerLog_UserLog_Credit'		  
	, @fromService = 'Service_UserLog_Others_DBCUST'
	, @toService = 'Service_UserLog_Others_DBLOG'
	, @Coversation_number = 10
	, @Mode = 'Reset'

GO

EXEC [sb].[DBA_ConversationManagement] 
	  @functionName = 'UserLog_Others'
	, @contractName = 'Contract_CustomerLog_UserLog_RunSP'		  
	, @fromService = 'Service_UserLog_Others_DBCUST'
	, @toService = 'Service_UserLog_Others_DBLOG'
	, @Coversation_number = 10
	, @Mode = 'Reset'

GO