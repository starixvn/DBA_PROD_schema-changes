
--DB054
USE [master]
go
restore database bodb_oic with recovery;
go
use mondb
go
USE [MonDB]
GO

DECLARE @RC int

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[DBA_Sync_Orphan_User] 
GO

