-- DB053(R910) ( -> DB054OLD)
-- 1.First collect the output of the current instance configuration
exec sp_helpserver 'DB053'
select @@servername

-- 2.Execute the below query to change the instance name
exec sp_dropserver 'DB053' 
go 
exec sp_addserver 'DB053OLD' , 'local'
go

