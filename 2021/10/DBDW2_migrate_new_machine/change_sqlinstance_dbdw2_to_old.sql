-- DBDW2(R910) ( -> DBDW2OLD)
-- 1.First collect the output of the current instance configuration
exec sp_helpserver 'DBDW2'
select @@servername

-- 2.Execute the below query to change the instance name
exec sp_dropserver 'DBDW2' 
go 
exec sp_addserver 'DBDW2OLD' , 'local'
go

