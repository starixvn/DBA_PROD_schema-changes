/*
	Task - Setup sync status of tickets DB052 ==> DB054
		+ Init data for ssb

	Run on DB052.bodb02
*/
use bodb02
go

--//[ConfigurationReference]
if not exists (select top 1 1 from [sb].[ConfigurationReference] where functionName = 'BETRUNNING')
begin
	insert into [sb].[ConfigurationReference](FunctionName, MaxReceiveMsg, MaxReceiveTimeOut, IsExistingTarget)
	values('BETRUNNING', 100, 100, NULL)
end

--//[ConfigurationReferenceDetail]
if not exists (select top 1 1 from [sb].[ConfigurationReferenceDetail] where functionName = 'BETRUNNING')
begin
	insert into [sb].[ConfigurationReferenceDetail](FunctionName, ContractName, MessageType, MinConversation, MaxConversation)
	values('BETRUNNING', 'Contract_Settled_Ticket', 'MessageType_Settled_Ticket', 0, 20)
end

--//[ConversationCount]
if not exists (select top 1 1 from [sb].[ConversationCount] where functionName = 'BETRUNNING')
begin
	insert into [sb].[ConversationCount](FunctionName, ContractName, Cnt)
	values('BETRUNNING', 'Contract_Settled_Ticket', 10)
end

EXEC [Sb].[DBA_ConversationManagement] 
		@functionName = 'BETRUNNING'
	  , @contractName = 'Contract_Settled_Ticket'		  
	  , @fromService = 'Service_Settled_Ticket_DBAGE'
	  , @toService = 'Service_Settled_Ticket_BETRUNNING'
	  , @Coversation_number = 10
	  , @Mode = 'Reset'	

go

--//[Tickets_settled_setting]
if not exists (select top 1 1 from [dbo].[Tickets_settled_setting] where sKey = 'bettrans_tstamp')
begin
	declare @__bettrans_tstamp binary(8)
	select @__bettrans_tstamp = max(tstamp) from dbo.bettrans with(nolock)
	insert into [dbo].[Tickets_settled_setting](sKey, sValue)
	values('bettrans_tstamp', cast(@__bettrans_tstamp as bigint))
end

--//[Tickets_settled_setting]
if not exists (select top 1 1 from [dbo].[Tickets_settled_setting] where sKey = 'TransitionId')
begin
	insert into [dbo].[Tickets_settled_setting](sKey, sValue)
	values('TransitionId', 0)
end