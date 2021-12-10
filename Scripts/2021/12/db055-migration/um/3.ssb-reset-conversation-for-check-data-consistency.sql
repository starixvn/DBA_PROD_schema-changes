/*
	Task - Upgrade SQL Server DB055 to 2019
		1- reset conversation
		
	Run on dbtp
*/

use bodb_Consistency
go

declare @__cnt int
	, @__conversationHandle uniqueidentifier
	, @__fromService varchar(200)
	, @__toService varchar(200)
	, @__contractName varchar(200)
	, @__start int , @__end int

select @__cnt = 1, @__fromService = 'Service_DataConsistency'
	, @__toService = 'Service_DataConsistency', @__contractName = 'Contract_DataConsistency'

--#1 - clean all conversation
create table #__temptbl (rowId int identity (1,1), handle uniqueidentifier)
insert into #__temptbl (handle)
select e.conversation_handle
from sys.conversation_endpoints e with(nolock)
	inner join sys.services s with(nolock) on e.service_id = s.service_id
	inner join sys.service_contracts sc with (nolock) 
		on sc.service_contract_id = e.service_contract_id AND sc.name = @__contractName
where s.name IN (@__fromService, @__toService)

select * from #__temptbl

set @__start = 1
set @__end = (select max(rowId) from #__temptbl)

while @__start <= @__end
begin
	set @__conversationHandle = (select handle from #__temptbl where rowId = @__start)
			
	if @__conversationHandle IS NOT NULL
		end conversation @__conversationHandle with CLEANUP
			
	set @__start = @__start + 1
end

truncate table dbo.DBA_ConversationHandle

---add new conversation
while 1 = 1
begin
	begin dialog conversation @__conversationHandle
	from service  @__fromService 
	to service  @__toService 
	on contract @__contractName 
	with encryption = off								

	insert into dbo.DBA_ConversationHandle(Id, ConversationHandle)
	values(@__cnt, @__conversationHandle)

	print @__conversationHandle
	set @__cnt = @__cnt + 1

	if @__cnt > 5
		break
end
go
