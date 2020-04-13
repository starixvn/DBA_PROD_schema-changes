/*
	Task: Truncate table sysjobhistory due to IdentityWarning 
		+ PercentRate:62.51% DataType:int CurrentIdentity:1342407326
	Run on DB052.msdb
*/

use msdb
go

truncate table sysjobhistory

go
