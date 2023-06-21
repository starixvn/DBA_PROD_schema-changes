/*
	Task - Scale out dbtrans add sitedb3
		+ Setup SSB ( certificate, endpoint)
	Run on sitedb055
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
CREATE ROUTE [Route_TicketVoiding_DBGRP03L]   WITH  SERVICE_NAME  = N'Service_TicketVoiding_DBGRP03L' ,  ADDRESS  = N'TCP://SITDBGRP03L:4741' 
GO
