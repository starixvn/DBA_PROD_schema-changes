/*
	Task - Upgrade SQL Server DBTrans to 2019
		+ Setup SSB ( certificate, endpoint)
	Run on db054
*/

USE [master]
GO

--//drop old certificate
DROP CERTIFICATE SSBS_DBTXN_Cert

--//restore ssb certificate ==> from DBTrans
-->> Need to copy file first
CREATE CERTIFICATE SSBS_DBTrans_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'G:\SSBSQLCertificates\SSBS_DBTrans_Cert.cer'
GO

select 'end conversation ''' + cast(conversation_handle as varchar(200)) +''' with cleanup ', * 
from sys.conversation_endpoints 
where far_service like 'Service_TicketVoiding_DBTXN%'