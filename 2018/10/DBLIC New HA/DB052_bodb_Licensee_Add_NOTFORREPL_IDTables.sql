/*
	Task: Turn on NOT FOR REPLICATION for tables have identity column, preparing for adding them into replication
	Run at DB052.bodb_Licensee
*/


declare @tbl int

set @tbl = object_id('Functions')
EXEC sys.sp_identitycolumnforreplication @tbl, 1

set @tbl = object_id('LicenseeBAHistory')
EXEC sys.sp_identitycolumnforreplication @tbl, 1

set @tbl = object_id('LicenseeFunctions')
EXEC sys.sp_identitycolumnforreplication @tbl, 1

set @tbl = object_id('LicenseeGroupComm')
EXEC sys.sp_identitycolumnforreplication @tbl, 1

set @tbl = object_id('LicenseeSourcedSetting')
EXEC sys.sp_identitycolumnforreplication @tbl, 1

set @tbl = object_id('LicenseeUserFunctions')
EXEC sys.sp_identitycolumnforreplication @tbl, 1

set @tbl = object_id('On_User')
EXEC sys.sp_identitycolumnforreplication @tbl, 1

set @tbl = object_id('Resellers')
EXEC sys.sp_identitycolumnforreplication @tbl, 1

set @tbl = object_id('Systems')
EXEC sys.sp_identitycolumnforreplication @tbl, 1

set @tbl = object_id('Users')
EXEC sys.sp_identitycolumnforreplication @tbl, 1
