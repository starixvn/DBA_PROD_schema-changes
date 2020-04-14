-- DB0531(R940) ( -> DB053)
-- 1.First collect the output of the current instance configuration
exec sp_helpserver 'DB0531'
select @@servername

-- 2.Execute the below query to change the instance name
exec sp_dropserver 'DB0531' 
go 
exec sp_addserver 'DB053' , 'local'
go

