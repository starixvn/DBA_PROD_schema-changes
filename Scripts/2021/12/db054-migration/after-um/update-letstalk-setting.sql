/*
	Task - Upgrade SQL Server DB054 to 2019
		1- DB054：Update room setting when changing instance name
	Run on dbspare.NotificationDB
*/

update dbo.DBA_LetstalkJobs set ServerName = N'DB054' where ServerName = N'DB054C2\DB054'
