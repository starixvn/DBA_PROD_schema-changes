/*
	Task: Move TO Control func from DB054 to DB052/53 [Redmine: #112219]
		+ init conversation
	Run on DB052/53
*/
GO --int setting data

insert into [sb].[ConfigurationReference](FunctionName, MaxReceiveMsg, MaxReceiveTimeOut, IsExistingTarget)
values('TOControl', 5, 200, 0)

insert into [sb].[ConfigurationReferenceDetail](FunctionName, ContractName, MessageType, MinConversation, MaxConversation)
values('TOControl', 'Contract_TOControl_Multiple', 'MessageType_TOControl_Multiple', 5, 10)
	, ('TOControl', 'Contract_TOControl_Single', 'MessageType_TOControl_Single', 5, 10)

insert into [sb].[ConversationCount](FunctionName, ContractName, Cnt)
values('TOControl', 'Contract_TOControl_Multiple', 10)
	, ('TOControl', 'Contract_TOControl_Single', 10)


--[DBA_ConversationManagement] depploy sp first

EXEC [Sb].[DBA_ConversationManagement] 
		@functionName = 'TOControl'
	  , @contractName = 'Contract_TOControl_Multiple'		  
	  , @fromService = 'Service_TOControl_Initiator_DBAGE'
	  , @toService = 'Service_TOControl_Target_DBAGE'
	  , @Coversation_number = 5
	  , @Mode = 'Reset'	

EXEC [Sb].[DBA_ConversationManagement] 
		@functionName = 'TOControl'
	  , @contractName = 'Contract_TOControl_Single'		  
	  , @fromService = 'Service_TOControl_Initiator_DBAGE'
	  , @toService = 'Service_TOControl_Target_DBAGE'
	  , @Coversation_number = 5
	  , @Mode = 'Reset'