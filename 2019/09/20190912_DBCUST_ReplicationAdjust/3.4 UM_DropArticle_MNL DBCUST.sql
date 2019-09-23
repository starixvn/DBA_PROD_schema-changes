/*
	Task: Las_Custsetting_0x: Drop artical / remove SPs from replication
	Using UI or run script below @ MNL DBCUST 
*/

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_00', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_00', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_01', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_01', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_02', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_02', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_03', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_03', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_04', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_04', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_05', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_05', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_06', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_06', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_07', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_07', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_08', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_08', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_09', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'LAS_CustSetting_09', @force_invalidate_snapshot = 1