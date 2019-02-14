/*
	Task: Truncate table sysjobhistory due to PercentRate:55.09% DataType:int CurrentIdentity:1182959637
	Run on DB054.msdb
*/

use msdb
go

truncate table sysjobhistory

go
