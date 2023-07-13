/*<info serverAlias="DB054/DB055-master"></info>*/
/*
	Task - Scale out dbtrans
		+ Setup SSB ( certificate, endpoint)
	Run on db054/db055
*/

USE [master]
GO

--//drop old certificate
DROP CERTIFICATE SSBS_DBGRP03N1_Cert
DROP CERTIFICATE SSBS_DBGRP03N2_Cert

--//restore ssb certificate ==> from DBTrans
-->> Need to copy file first
CREATE CERTIFICATE SSBS_DBGRP03N1_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'G:\SSBSQLCertificates\SSBS_DBGRP03N1_Cert.cer'
GO

CREATE CERTIFICATE SSBS_DBGRP03N2_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'G:\SSBSQLCertificates\SSBS_DBGRP03N2_Cert.cer'
GO

use bodb_CustomerLog
go
CREATE ROUTE [Route_TicketVoiding_DBGRP03L]   WITH  SERVICE_NAME  = N'Service_TicketVoiding_DBGRP03L' ,  ADDRESS  = N'TCP://172.16.1.33:4741' 
GO
CREATE ROUTE [Route_UserLog_DBGRP03L]   WITH  SERVICE_NAME  = N'Service_UserLog_DBGRP03L' ,  ADDRESS  = N'TCP://172.16.1.33:4741' 
GO


