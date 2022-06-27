-- 1.Check SMTP Address
USE msdb;
SELECT a.[account_id],b.[name] [Account Name]
,a.[servertype],a.[servername] [SMTP_Address],a.[Port]     
FROM [sysmail_server](NOLOCK) a INNER JOIN [sysmail_account](NOLOCK) b
  ON a.[account_id]=b.[account_id]
GO
  
-- 2.Change DatabaseMail Setting
EXEC msdb.dbo.sysmail_update_account_sp
    @account_id = 1
   ,@mailserver_name = '10.40.40.45'
GO

-- 3.Add DatabaseMail Setting
--https://www.sqlshack.com/configure-database-mail-sql-server/
-- a.Turn On 'Database Mail XPs' Function
EXEC sp_configure 'show advanced options', 1;
GO
RECONFIGURE;
GO
 
EXEC sp_configure 'Database Mail XPs', 1;
GO
RECONFIGURE
GO
-- b.Add a Database Mail Profile
EXECUTE msdb.dbo.sysmail_add_profile_sp  
       @profile_name = 'DBSPARE',  
       @description = 'Profile for DBSPARE'
GO
-- c.Grant access to the profile to the DBMailUsers role
EXECUTE msdb.dbo.sysmail_add_principalprofile_sp  
    @principal_name = 'public',  
    @profile_name = 'DBSPARE',  
    @is_default = 1 ; 	
GO
-- d.Add a Database Mail account
EXECUTE msdb.dbo.sysmail_add_account_sp  
    @account_name = 'DBSPARE',  
    @description = 'Database Mail Accout for DBSPARE',  
    @email_address = 'DBATW@onelab.tw',  
    @display_name = 'DBSPARE',  
    @mailserver_name = '10.40.40.45'
GO
-- e.Add the Account to the Profile  
EXECUTE msdb.dbo.sysmail_add_profileaccount_sp  
    @profile_name = 'DBSPARE',  
    @account_name = 'DBSPARE',  
    @sequence_number =1 ;  
GO
-- f.Send Mail Test
USE msdb;
EXEC sp_send_dbmail
  @recipients='patrick.pham@starixvn.com',
  @subject='Test message',
  @body='This is the body of the test message.
         Congrates Database Mail Received By you Successfully.'	
GO
-- g.Check SMTP Address
USE msdb;
SELECT a.[account_id],b.[name] [Account Name]
,a.[servertype],a.[servername] [SMTP_Address],a.[Port]     
FROM [sysmail_server](NOLOCK) a INNER JOIN [sysmail_account](NOLOCK) b
  ON a.[account_id]=b.[account_id]
GO
--h.Bind Mail Profile & Token
USE [msdb]
GO
EXEC msdb.dbo.sp_set_sqlagent_properties @email_save_in_sent_folder=1, 
		@alert_replace_runtime_tokens=1, 
		@databasemail_profile=N'DBSPARE', 
		@use_databasemail=1
GO
-- i.Set Job History 99999
USE [msdb]
GO
EXEC msdb.dbo.sp_set_sqlagent_properties @jobhistory_max_rows=99999, 
		@email_save_in_sent_folder=1, 
		@alert_replace_runtime_tokens=1, 
		@databasemail_profile=N'DBSPARE', 
		@use_databasemail=1
GO



-- 4.Delete DatabaseMail Setting
--EXECUTE msdb.dbo.sysmail_delete_profileaccount_sp @profile_name = 'DBSPARE'
--EXECUTE msdb.dbo.sysmail_delete_principalprofile_sp @profile_name = 'DBSPARE'
--EXECUTE msdb.dbo.sysmail_delete_account_sp @account_name = 'DBSPARE'
--EXECUTE msdb.dbo.sysmail_delete_profile_sp @profile_name = 'DBSPARE'
--GO
