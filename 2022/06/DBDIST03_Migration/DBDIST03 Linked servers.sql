/*
	Task: Create linked servers

	Generated on old server and run on new server SITDBDIST03
	*** ATTENTION: Need change ######## to correct sqllink's password
*/

USE [master]
GO

/****** Object:  LinkedServer [DB02]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DB02', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DB02',@useself=N'False',@locallogin=NULL,@rmtuser=N'SqlLink',@rmtpassword='########'
GO

EXEC master.dbo.sp_serveroption @server=N'DB02', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB02', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB02', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB02', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB02', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB02', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB02', @optname=N'sub', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB02', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB02', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DB02', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB02', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB02', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB02', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DB04]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DB04', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DB04',@useself=N'False',@locallogin=NULL,@rmtuser=N'SqlLink',@rmtpassword='########'
GO

EXEC master.dbo.sp_serveroption @server=N'DB04', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB04', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB04', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB04', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB04', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB04', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB04', @optname=N'sub', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB04', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB04', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DB04', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB04', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB04', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB04', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DB042]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DB042', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DB042',@useself=N'False',@locallogin=NULL,@rmtuser=N'SqlLink',@rmtpassword='########'
GO

EXEC master.dbo.sp_serveroption @server=N'DB042', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB042', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB042', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB042', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB042', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB042', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB042', @optname=N'sub', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB042', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB042', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DB042', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB042', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB042', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB042', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DB044]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DB044', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DB044',@useself=N'False',@locallogin=NULL,@rmtuser=N'SqlLink',@rmtpassword='########'
GO

EXEC master.dbo.sp_serveroption @server=N'DB044', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB044', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB044', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB044', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB044', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB044', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB044', @optname=N'sub', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB044', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB044', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DB044', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB044', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB044', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB044', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DB05]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DB05', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DB05',@useself=N'False',@locallogin=NULL,@rmtuser=N'SqlLink',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DB05',@useself=N'True',@locallogin=N'NT AUTHORITY\SYSTEM',@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'DB05', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB05', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB05', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB05', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB05', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB05', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB05', @optname=N'sub', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB05', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB05', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DB05', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB05', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB05', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB05', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DB052]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DB052', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DB052',@useself=N'False',@locallogin=NULL,@rmtuser=N'SqlLink',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DB052',@useself=N'True',@locallogin=N'NT AUTHORITY\SYSTEM',@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DB052',@useself=N'True',@locallogin=N'sa',@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'DB052', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB052', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB052', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB052', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB052', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB052', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB052', @optname=N'sub', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB052', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB052', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DB052', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB052', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB052', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB052', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DB053]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DB053', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DB053',@useself=N'False',@locallogin=NULL,@rmtuser=N'SqlLink',@rmtpassword='########'
GO

EXEC master.dbo.sp_serveroption @server=N'DB053', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB053', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB053', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB053', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB053', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB053', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB053', @optname=N'sub', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB053', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB053', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DB053', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB053', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB053', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB053', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DB06]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DB06', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DB06',@useself=N'False',@locallogin=NULL,@rmtuser=N'SqlLink',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DB06',@useself=N'True',@locallogin=N'NT AUTHORITY\NETWORK SERVICE',@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DB06',@useself=N'True',@locallogin=N'NT AUTHORITY\SYSTEM',@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DB06',@useself=N'True',@locallogin=N'sa',@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'DB06', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB06', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB06', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB06', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB06', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB06', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB06', @optname=N'sub', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB06', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB06', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DB06', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB06', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB06', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB06', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DB07]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DB07', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DB07',@useself=N'False',@locallogin=NULL,@rmtuser=N'SqlLink',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DB07',@useself=N'True',@locallogin=N'NT AUTHORITY\SYSTEM',@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'DB07', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB07', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB07', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB07', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB07', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB07', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB07', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB07', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB07', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DB07', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DB07', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DB07', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DB07', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DBCUST]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DBCUST', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBCUST',@useself=N'False',@locallogin=NULL,@rmtuser=N'SqlLink',@rmtpassword='########'
GO

EXEC master.dbo.sp_serveroption @server=N'DBCUST', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBCUST', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBCUST', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBCUST', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBCUST', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBCUST', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBCUST', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBCUST', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBCUST', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DBCUST', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBCUST', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBCUST', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBCUST', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DBDW]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DBDW', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBDW',@useself=N'False',@locallogin=NULL,@rmtuser=N'SqlLink',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBDW',@useself=N'True',@locallogin=N'NT AUTHORITY\SYSTEM',@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'DBDW', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBDW', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBDW', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBDW', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBDW', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBDW', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBDW', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBDW', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBDW', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DBDW', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBDW', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBDW', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBDW', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DBIP]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DBIP', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBIP',@useself=N'False',@locallogin=NULL,@rmtuser=N'SqlLink',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBIP',@useself=N'True',@locallogin=N'NT AUTHORITY\SYSTEM',@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'DBIP', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBIP', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBIP', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBIP', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBIP', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBIP', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBIP', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBIP', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBIP', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DBIP', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBIP', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBIP', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBIP', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DBLOG]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DBLOG', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBLOG',@useself=N'False',@locallogin=NULL,@rmtuser=N'SqlLink',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBLOG',@useself=N'True',@locallogin=N'Dot_Member',@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBLOG',@useself=N'True',@locallogin=N'NT AUTHORITY\SYSTEM',@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBLOG',@useself=N'True',@locallogin=N'sa',@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'DBLOG', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBLOG', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBLOG', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBLOG', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBLOG', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBLOG', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBLOG', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBLOG', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBLOG', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DBLOG', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBLOG', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBLOG', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBLOG', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DBMONDW]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DBMONDW', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBMONDW',@useself=N'False',@locallogin=NULL,@rmtuser=N'mondb_user',@rmtpassword='########'
GO

EXEC master.dbo.sp_serveroption @server=N'DBMONDW', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBMONDW', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBMONDW', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBMONDW', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBMONDW', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBMONDW', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBMONDW', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBMONDW', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBMONDW', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DBMONDW', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBMONDW', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBMONDW', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBMONDW', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DBNOTI]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DBNOTI', @srvproduct=N'SQL_Server', @provider=N'SQLNCLI', @datasrc=N'SITDBDW'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBNOTI',@useself=N'False',@locallogin=NULL,@rmtuser=N'sqlLink',@rmtpassword='########'
GO

EXEC master.dbo.sp_serveroption @server=N'DBNOTI', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBNOTI', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBNOTI', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBNOTI', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBNOTI', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBNOTI', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBNOTI', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBNOTI', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBNOTI', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DBNOTI', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBNOTI', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBNOTI', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBNOTI', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO

/****** Object:  LinkedServer [DBODDS163]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DBODDS163', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBODDS163',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS163', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS163', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS163', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS163', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS163', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS163', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS163', @optname=N'sub', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS163', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS163', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS163', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS163', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS163', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS163', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DBODDS21]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DBODDS21', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBODDS21',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS21', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS21', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS21', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS21', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS21', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS21', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS21', @optname=N'sub', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS21', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS21', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS21', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS21', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS21', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS21', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DBODDS22]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DBODDS22', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBODDS22',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS22', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS22', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS22', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS22', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS22', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS22', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS22', @optname=N'sub', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS22', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS22', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS22', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS22', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS22', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS22', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DBODDS23]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DBODDS23', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBODDS23',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS23', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS23', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS23', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS23', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS23', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS23', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS23', @optname=N'sub', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS23', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS23', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS23', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS23', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS23', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBODDS23', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DBTRANS]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DBTRANS', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBTRANS',@useself=N'False',@locallogin=NULL,@rmtuser=N'SqlLink',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBTRANS',@useself=N'True',@locallogin=N'NT AUTHORITY\SYSTEM',@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'DBTRANS', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTRANS', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTRANS', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTRANS', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTRANS', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTRANS', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTRANS', @optname=N'sub', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTRANS', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTRANS', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DBTRANS', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTRANS', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTRANS', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTRANS', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [DBTXN]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'DBTXN', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBTXN',@useself=N'False',@locallogin=NULL,@rmtuser=N'SqlLink',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'DBTXN',@useself=N'True',@locallogin=N'NT AUTHORITY\SYSTEM',@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'DBTXN', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTXN', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTXN', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTXN', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTXN', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTXN', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTXN', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTXN', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTXN', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'DBTXN', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTXN', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTXN', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'DBTXN', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

/****** Object:  LinkedServer [SITDB02]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'SITDB02', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SITDB02',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB02', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB02', @optname=N'data access', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB02', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB02', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB02', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB02', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB02', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB02', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB02', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB02', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB02', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB02', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB02', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO

/****** Object:  LinkedServer [SITDB03]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'SITDB03', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SITDB03',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB03', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB03', @optname=N'data access', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB03', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB03', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB03', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB03', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB03', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB03', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB03', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB03', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB03', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB03', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB03', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO

/****** Object:  LinkedServer [SITDB04]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'SITDB04', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SITDB04',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB04', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB04', @optname=N'data access', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB04', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB04', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB04', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB04', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB04', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB04', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB04', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB04', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB04', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB04', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB04', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO

/****** Object:  LinkedServer [SITDB042]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'SITDB042', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SITDB042',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB042', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB042', @optname=N'data access', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB042', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB042', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB042', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB042', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB042', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB042', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB042', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB042', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB042', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB042', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB042', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO

/****** Object:  LinkedServer [SITDB044]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'SITDB044', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SITDB044',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB044', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB044', @optname=N'data access', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB044', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB044', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB044', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB044', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB044', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB044', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB044', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB044', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB044', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB044', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB044', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO

/****** Object:  LinkedServer [SITDB05]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'SITDB05', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SITDB05',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05', @optname=N'data access', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO

/****** Object:  LinkedServer [SITDB052]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'SITDB052', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SITDB052',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB052', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB052', @optname=N'data access', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB052', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB052', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB052', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB052', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB052', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB052', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB052', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB052', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB052', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB052', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB052', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO

/****** Object:  LinkedServer [SITDB053]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'SITDB053', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SITDB053',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB053', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB053', @optname=N'data access', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB053', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB053', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB053', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB053', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB053', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB053', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB053', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB053', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB053', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB053', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB053', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO

/****** Object:  LinkedServer [SITDB055]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'SITDB055', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SITDB055',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB055', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB055', @optname=N'data access', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB055', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB055', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB055', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB055', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB055', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB055', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB055', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB055', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB055', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB055', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB055', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO

/****** Object:  LinkedServer [SITDB05BK1]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'SITDB05BK1', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SITDB05BK1',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05BK1', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05BK1', @optname=N'data access', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05BK1', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05BK1', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05BK1', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05BK1', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05BK1', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05BK1', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05BK1', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05BK1', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05BK1', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05BK1', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB05BK1', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO

/****** Object:  LinkedServer [SITDB06]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'SITDB06', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SITDB06',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB06', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB06', @optname=N'data access', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB06', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB06', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB06', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB06', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB06', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB06', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB06', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB06', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB06', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB06', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDB06', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO

/****** Object:  LinkedServer [SITDBCUST]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'SITDBCUST', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SITDBCUST',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBCUST', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBCUST', @optname=N'data access', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBCUST', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBCUST', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBCUST', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBCUST', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBCUST', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBCUST', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBCUST', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBCUST', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBCUST', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBCUST', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBCUST', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO

/****** Object:  LinkedServer [SITDBLIC]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'SITDBLIC', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SITDBLIC',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLIC', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLIC', @optname=N'data access', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLIC', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLIC', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLIC', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLIC', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLIC', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLIC', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLIC', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLIC', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLIC', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLIC', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLIC', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO

/****** Object:  LinkedServer [SITDBLICAPI]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'SITDBLICAPI', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SITDBLICAPI',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLICAPI', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLICAPI', @optname=N'data access', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLICAPI', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLICAPI', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLICAPI', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLICAPI', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLICAPI', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLICAPI', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLICAPI', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLICAPI', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLICAPI', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLICAPI', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBLICAPI', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO

/****** Object:  LinkedServer [SITDBODDS163]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'SITDBODDS163', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SITDBODDS163',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBODDS163', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBODDS163', @optname=N'data access', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBODDS163', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBODDS163', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBODDS163', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBODDS163', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBODDS163', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBODDS163', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBODDS163', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBODDS163', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBODDS163', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBODDS163', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBODDS163', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO

/****** Object:  LinkedServer [SITDBTRANS]    Script Date: 4/15/2022 10:27:31 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'SITDBTRANS', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SITDBTRANS',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBTRANS', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBTRANS', @optname=N'data access', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBTRANS', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBTRANS', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBTRANS', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBTRANS', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBTRANS', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBTRANS', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBTRANS', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBTRANS', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBTRANS', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBTRANS', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'SITDBTRANS', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO





