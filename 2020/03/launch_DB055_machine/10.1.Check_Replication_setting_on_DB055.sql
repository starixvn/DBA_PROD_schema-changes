

-- run on DB055
go
use bodb02 
go
select *
from sys.tables 
where name like 'MS%'
order by name 

go
select *
from MSreplication_subscriptions
select *
from MSsubscription_agents

select *
from MSreplication_objects

-- run on DB055
--execute sp_removedbreplication @dbname ='bodb02'
--go
--execute sp_removedbreplication @dbname ='bodbLicensee'