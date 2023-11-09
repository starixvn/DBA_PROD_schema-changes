/*<info serverAlias="DB062-bodb_Report"></info>*/
/*
	Created: 20231108@Sol
	Task: Enable jobs
	DB: DB062-bodb_Report
*/

GO

---check status
select name, enabled 
from msdb.dbo.sysjobs j 
where j.name 
	in 
	(
		'bodb_Report: Daily Summary RptTotalBalance_Active'
		,'bodb_report: Task_BetBuilder_Daily_InsertRawData'
		,'bodb_report_CheckNAPDuplicatedTicket'
		,'bodb_Report: Customer Status History'
		,'bodb02: Deposit Report Summary'
	)

GO

---disable jobs
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Report: Daily Summary RptTotalBalance_Active', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_report: Task_BetBuilder_Daily_InsertRawData', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_report_CheckNAPDuplicatedTicket', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Report: Customer Status History', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Deposit Report Summary', @enabled = 1;

GO