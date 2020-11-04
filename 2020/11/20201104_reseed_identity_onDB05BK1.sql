
 

-- run on DB05.bodb02
use bodb02 
go
declare @rowID bigint 

select @rowID=max(rowid) from balanceRecord with(nolock)

print 'max rowid: '
print cast(@rowID as varchar(120))
print '----------------------------------'
go
print 'dbcc checkident()'
dbcc checkident(balanceRecord,noreseed )



--- run on DB05BK1

--- newly inserted row will be +1 from this value
dbcc checkident(balanceRecord,RESEED,xxxxxx )

