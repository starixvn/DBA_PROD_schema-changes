-- tmpDBDW2(R940) ( -> DBDW2)
-- 1.First collect the output of the current instance configuration
exec sp_helpserver 'tmpDBDW2'
select @@servername

-- 2.Execute the below query to change the instance name
exec sp_dropserver 'tmpDBDW2' 
go 
exec sp_addserver 'DBDW2' , 'local'
go

