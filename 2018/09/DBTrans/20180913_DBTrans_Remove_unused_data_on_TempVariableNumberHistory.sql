/*
	20180913@Patrick
	Remove un-used data on @ TempVariableNumberHistory
	Run on bodb02 @ DBTRANS
*/

declare @CreatedDateTime datetime
set @CreatedDateTime = getdate() - 1

declare @message varchar(200)

while 1=1
begin
	delete top(10000)
	from dbo.TempVariableNumberHistory with(rowlock)
	where CreatedDateTime < @CreatedDateTime

	if @@rowcount = 0
		break

	set @message = convert(varchar(50), @CreatedDateTime, 121)
	raiserror (@message, 0, 1) with nowait
end

go
go
---- truncate table instead of deleting

TRUNCATE TABLE TempVariableNumberHistory