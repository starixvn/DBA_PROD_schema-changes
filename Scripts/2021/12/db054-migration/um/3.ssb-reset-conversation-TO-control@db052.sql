/*
	Task - Upgrade SQL Server DB054 to 2019
		1- reset conversation for TO control
		
	Run on db052
*/

USE bodb02
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