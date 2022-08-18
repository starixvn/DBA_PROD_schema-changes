/*
	Task - Upgrade SQL Server DBCUST to 2019: Cleanup old conversations @ DB055
	Run on db055
*/


-- 1. Generate scripts cleanup
USE [bodb_CustomerLog]
GO
select 'end conversation ''' + cast(conversation_handle as varchar(200)) +''' with cleanup ', * 
from sys.conversation_endpoints 
where far_service in ('Service_UserLog_Others_DBCUST', 'Service_CustomerLog_DBCUST')

-- 2. Copy the output text and run
---output (example):
--end conversation 'DE73D6C4-6AB1-EC11-9292-0050569927D1' with cleanup 
--end conversation '0B4CB14A-ACB8-EC11-9292-0050569927D1' with cleanup 
--end conversation '120B2368-DCB0-EC11-9292-0050569927D1' with cleanup 
--end conversation 'C15E31FC-64B1-EC11-9292-0050569927D1' with cleanup 
--end conversation '05B1683E-DFB3-EC11-9292-0050569927D1' with cleanup 
--end conversation '6322682F-75B1-EC11-9292-0050569927D1' with cleanup 
--end conversation '44366908-8AB1-EC11-9292-0050569927D1' with cleanup 
--end conversation 'DAAF790E-ADB4-EC11-9292-0050569927D1' with cleanup 
--end conversation '23D6A09B-DBB0-EC11-9292-0050569927D1' with cleanup 
--end conversation '46633CB7-65B1-EC11-9292-0050569927D1' with cleanup 
--end conversation 'F012A202-B4B4-EC11-9292-0050569927D1' with cleanup 
--end conversation 'BB169FC6-ABB8-EC11-9292-0050569927D1' with cleanup 
--end conversation '5C377BC2-65B1-EC11-9292-0050569927D1' with cleanup 
--end conversation '6381C16A-5FB1-EC11-9292-0050569927D1' with cleanup 
--end conversation '7697375F-9AB1-EC11-9292-0050569927D1' with cleanup 
--end conversation '977F5722-90B1-EC11-9292-0050569927D1' with cleanup 
--end conversation '5259796D-DDB0-EC11-9292-0050569927D1' with cleanup 
--end conversation 'CA72C447-8BB5-EC11-9292-0050569927D1' with cleanup 
--end conversation 'D92A1FD5-86B5-EC11-9292-0050569927D1' with cleanup 
--end conversation 'FF54C389-71B1-EC11-9292-0050569927D1' with cleanup 
--end conversation '381B2A7D-01B4-EC11-9292-0050569927D1' with cleanup 
--end conversation '7E942A27-71B1-EC11-9292-0050569927D1' with cleanup 
--end conversation '88ACDAB2-89B5-EC11-9292-0050569927D1' with cleanup 
--end conversation '36BCFAD6-6BB1-EC11-9292-0050569927D1' with cleanup 

