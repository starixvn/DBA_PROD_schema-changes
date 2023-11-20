/*<info serverAlias="DB061-bodb_Report"></info>*/
/*
	Created: 20231108@Sol
	Task: Stop jobs
	DB: DB061-bodb_Report
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
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Report: Daily Summary RptTotalBalance_Active', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_report: Task_BetBuilder_Daily_InsertRawData', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_report_CheckNAPDuplicatedTicket', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Report: Customer Status History', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Deposit Report Summary', @enabled = 0;

GO

---stop job
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_Report: Daily Summary RptTotalBalance_Active';
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_report: Task_BetBuilder_Daily_InsertRawData';
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_report_CheckNAPDuplicatedTicket';
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_Report: Customer Status History';
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb02: Deposit Report Summary';

GO