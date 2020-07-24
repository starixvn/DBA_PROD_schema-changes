


--step 1: remove log shipping config on primary server


EXEC master.dbo.sp_delete_log_shipping_primary_secondary
@primary_database = N'bodb_OWP'
,@secondary_server = N'DB06'
,@secondary_database = N'bodb_OWP'
GO
---- MNL site: run SSMS on DBSPARE
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
@primary_database = N'bodb_OWP'
,@secondary_server = N'10.11.1.23'
,@secondary_database = N'bodb_OWP'
GO



-- step 2: run on secondary servers:

-- DB06
exec sp_delete_log_shipping_secondary_database N'bodb_OWP'


-- 10.11.1.23
exec sp_delete_log_shipping_secondary_database N'bodb_OWP'



-- step 3: run on DB061

exec sp_delete_log_shipping_primary_database N'bodb_OWP'
go