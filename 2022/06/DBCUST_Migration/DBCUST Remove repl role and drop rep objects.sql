/*
	Task: Drop related replication objects & disable replication role on old server
		For each publication
		1. Drop all subs
		2. Drop all articles
		3. Drop publication

	Run on DBCUST (Old server)
*/


-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustInfo', @subscriber = N'DB02', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustInfo', @article = N'custInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustInfo', @article = N'custInfo', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional publication
use [CustDB]
exec sp_droppublication @publication = N'CustDB_CustInfo'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB04ADMIN1', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB04ADMIN2', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB05', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB052', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB053', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB054', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB055', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB05BK1', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB062', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustDirect', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustDirect', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustGroup', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_00', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_00', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_01', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_01', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_02', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_02', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_03', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_03', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_04', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_04', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_05', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_05', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_06', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_06', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_07', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_07', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_08', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_08', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_09', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_09', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_10', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_10', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_11', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_11', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_12', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_12', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_13', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_13', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_14', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_14', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_15', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_15', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_16', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_16', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_17', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_17', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_18', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_18', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_19', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_19', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_00', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_00', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_01', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_01', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_02', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_02', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_03', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_03', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_04', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_04', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_05', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_05', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_06', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_06', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_07', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_07', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_08', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_08', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_09', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_09', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Age_CustDateLimit', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Age_CustDateLimit', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Age_CustProfilePicture', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Age_CustProfilePicture', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Age_ProfilePicture', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Age_ProfilePicture', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'BetTradeCust', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'BetTradeCust', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CS_CustomerStatus', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CS_CustomerStatus', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_00', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_00', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_01', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_01', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_02', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_02', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_03', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_03', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_04', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_04', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_05', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_05', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_06', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_06', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_07', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_07', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_08', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_08', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_09', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_09', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CS_ProblemAccount', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CS_ProblemAccount', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CS_SubAccManagement', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CS_SubAccManagement', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'custAccount', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'custAccount', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CustAgent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CustAgent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CustDirectAccount', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CustDirectAccount', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CustGroupHeadline', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CustGroupHeadline', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'custInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'custInfo', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CustMaster', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CustMaster', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Customer', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Customer', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CustProductStatus', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CustProductStatus', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'custSearch', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'custSearch', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'custSub', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'custSub', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CustSuper', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CustSuper', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'CustSuspendLockUpd', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'CustSuspendLockUpd', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Dep_Customer_Archived', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Dep_Customer_Archived', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Dep_CustSpecialLevel', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Dep_CustSpecialLevel', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Dep_CustSuper', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Dep_CustSuper', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'Dep_CustVIP', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'Dep_CustVIP', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'f_CheckRepTable', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'f_CheckRepTable', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_GenerateProductStatus', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_GenerateProductStatus', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_ProductStatusSel', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_ProductStatusSel', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_SportBetTypeSettingSelect', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_SportBetTypeSettingSelect', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'f_DepSuper_1', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'f_DepSuper_1', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'f_GenerateProductStatus', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'f_GenerateProductStatus', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'f_GenerateProductStatus_multiple', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'f_GenerateProductStatus_multiple', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'f_GenerateSuspendInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'f_GenerateSuspendInfo', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'f_GetProductStatus', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'f_GetProductStatus', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'f_GetSuspendInfoStatus', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'f_GetSuspendInfoStatus', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'MsgError', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'MsgError', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'MsgErrorGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'MsgErrorGroup', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'ProblemAccount', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'ProblemAccount', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'ProductSettingDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'ProductSettingDetail', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'ProductStatusProfile', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'ProductStatusProfile', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'ProductStatusSiteCurrency', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'ProductStatusSiteCurrency', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'smartPunterList', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'smartPunterList', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'SportNonOfferedSiteCurrency', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'SportNonOfferedSiteCurrency', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'TradeCust', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'TradeCust', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional publication
use [CustDB]
exec sp_droppublication @publication = N'CustDB_Customer_Info'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @subscriber = N'DB062', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_00', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_00', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_01', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_01', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_02', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_02', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_03', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_03', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_04', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_04', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_05', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_05', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_06', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_06', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_07', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_07', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_08', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_08', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_09', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_09', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_10', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_10', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_11', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_11', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_12', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_12', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_13', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_13', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_14', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_14', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_15', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_15', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_16', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_16', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_17', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_17', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_18', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_18', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_19', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_19', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_00', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_00', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_01', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_01', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_02', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_02', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_03', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_03', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_04', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_04', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_05', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_05', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_06', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_06', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_07', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_07', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_08', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_08', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_09', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_09', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_10', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_10', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_11', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_11', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_12', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_12', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_13', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_13', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_14', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_14', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_15', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_15', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_16', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_16', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_17', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_17', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_18', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_18', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_19', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_19', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_00', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_00', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_01', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_01', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_02', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_02', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_03', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_03', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_04', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_04', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_05', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_05', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_06', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_06', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_07', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_07', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_08', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_08', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_09', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_09', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_00', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_00', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_01', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_01', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_02', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_02', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_03', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_03', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_04', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_04', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_05', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_05', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_06', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_06', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_07', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_07', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_08', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_08', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_09', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_09', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_10', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_10', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_11', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_11', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_12', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_12', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_13', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_13', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_14', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_14', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_15', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_15', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_16', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_16', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_17', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_17', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_18', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_18', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_19', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_19', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Acc_FinancePermission', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Acc_FinancePermission', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'AgentCommRate', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'AgentCommRate', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'BetLimitControlCustSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'BetLimitControlCustSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'BetLimitControlProduct', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'BetLimitControlProduct', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'BetLimitControlType', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'BetLimitControlType', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'BetLimitControlTypeDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'BetLimitControlTypeDetail', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'BetRestriction_Currency', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'BetRestriction_Currency', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'BetRestriction_Customer', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'BetRestriction_Customer', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'BetRestriction_Setting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'BetRestriction_Setting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'BetRestriction_Site', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'BetRestriction_Site', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CategoryConfig', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CategoryConfig', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_ByteSeq', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_ByteSeq', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_CustBetSetting_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_CustBetSetting_Agent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_CustBetSetting_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_CustBetSetting_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_CustDiscount_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_CustDiscount_Agent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_CustDiscount_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_CustDiscount_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_CustGroupDiscount_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_CustGroupDiscount_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_CustPTGroupSetting_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_CustPTGroupSetting_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_CustPTSetting_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_CustPTSetting_Agent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_CustSettingMode', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_CustSettingMode', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_00', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_00', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_01', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_01', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_02', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_02', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_03', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_03', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_04', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_04', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_05', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_05', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_06', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_06', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_07', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_07', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_08', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_08', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_09', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_09', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_GroupConfig', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_GroupConfig', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_ProductBetSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_ProductBetSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_ProductSettingDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_ProductSettingDetail', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustBetSetting_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustBetSetting_Agent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustBetSetting_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustBetSetting_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustBetSetting3rd_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustBetSetting3rd_Agent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustBetSetting3rd_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustBetSetting3rd_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustCommRate', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustCommRate', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustDiscount3rd_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustDiscount3rd_Agent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustDiscount3rd_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustDiscount3rd_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustGameType', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustGameType', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustLimitPTSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustLimitPTSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustMaxPayoutSetting_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustMaxPayoutSetting_Agent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustMaxPayoutSetting_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustMaxPayoutSetting_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustNoComm', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustNoComm', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'custOverride', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'custOverride', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'custOverride3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'custOverride3rd', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustOverrideGame', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustOverrideGame', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustPTGroupSetting3rd_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustPTGroupSetting3rd_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustPTSetting3rd_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustPTSetting3rd_Agent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustPTSetting3rd_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustPTSetting3rd_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'custSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'custSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustSetting3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustSetting3rd', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustSettingAutoSuspend', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustSettingAutoSuspend', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustSettingGame', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustSettingGame', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustSettingMode3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustSettingMode3rd', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustStakeLevel_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustStakeLevel_Agent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustStakeLevel_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustStakeLevel_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustVirtualSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustVirtualSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustWinLimit', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustWinLimit', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustWinLossLimit_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustWinLossLimit_Agent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustWinLossLimit_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustWinLossLimit_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_AgentCommRate', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_AgentCommRate', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustBetSetting_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustBetSetting_Agent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustBetSetting_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustBetSetting_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustBetSettingGame_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustBetSettingGame_Agent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustBetSettingGame_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustBetSettingGame_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustBetSettingGameGroup_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustBetSettingGameGroup_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustCategoryHistory', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustCategoryHistory', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustCommRate', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustCommRate', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustDiscountGroupSetting_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustDiscountGroupSetting_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustDiscountSetting_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustDiscountSetting_Agent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustDiscountSetting_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustDiscountSetting_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustProductStatus', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustProductStatus', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustPTGroupSetting_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustPTGroupSetting_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustPTSetting_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustPTSetting_Agent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustPTSetting_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustPTSetting_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustSetting3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustSetting3rd', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustSettingGame', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustSettingGame', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustSettingMode', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustSettingMode', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustStakeLevel_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustStakeLevel_Agent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustStakeLevel_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustStakeLevel_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_LicenseeProductSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_LicenseeProductSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_ProductBetSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_ProductBetSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_ProductSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_ProductSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_ProductSettingDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_ProductSettingDetail', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_ProductStatusProfile', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_ProductStatusProfile', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_StakeLevel', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_StakeLevel', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_StakeLevelGroupDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_StakeLevelGroupDetail', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'f_CheckRepTable', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'f_CheckRepTable', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'f_DCS_PT_XMLParse', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'f_DCS_PT_XMLParse', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'f_Dep_CustSetting_SportBetTypeSettingSelect', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'f_Dep_CustSetting_SportBetTypeSettingSelect', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'f_GenerateVirtualSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'f_GenerateVirtualSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'f_GenerateVirtualSetting_multiple', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'f_GenerateVirtualSetting_multiple', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'f_GetVirtualSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'f_GetVirtualSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'GameGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'GameGroup', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'LimitPTDailySetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'LimitPTDailySetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'LossLimit_GlobalSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'LossLimit_GlobalSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'MaxPayoutGlobalSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'MaxPayoutGlobalSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'PlayCurrencySetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'PlayCurrencySetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'ProblemAccountAction', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'ProblemAccountAction', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'ProblemAccountClassification', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'ProblemAccountClassification', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'ProblemAccountLimitDownline', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'ProblemAccountLimitDownline', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'ProblemAccountReason', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'ProblemAccountReason', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'ProductBetSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'ProductBetSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'ProductGlobalSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'ProductGlobalSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'ProductLaunchedSiteCurrency', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'ProductLaunchedSiteCurrency', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'ProfileVirtualSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'ProfileVirtualSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'RacingBetSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'RacingBetSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'StakeLevel', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'StakeLevel', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'StakeLevelGroupDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'StakeLevelGroupDetail', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'SuspiciousCust', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'SuspiciousCust', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'VRBettypeGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'VRBettypeGroup', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'VRCustLockStatus', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'VRCustLockStatus', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'VRCustSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'VRCustSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'VRLeagueGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'VRLeagueGroup', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'VRLeagueGroupMapping', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'VRLeagueGroupMapping', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'VRSettingHierarchy', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'VRSettingHierarchy', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'VRSettingManualUpdAcc', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'VRSettingManualUpdAcc', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'VRSettingReference', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'VRSettingReference', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'VRValueMapping', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'VRValueMapping', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'WinLimit_CustSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'WinLimit_CustSetting', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional publication
use [CustDB]
exec sp_droppublication @publication = N'CustDB_CustSetting'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @subscriber = N'DBTRANS', @destination_db = N'CustDB', @article = N'all'
GO

-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustDirect', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustDirect', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_00', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_00', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_01', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_01', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_02', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_02', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_03', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_03', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_04', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_04', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_05', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_05', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_06', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_06', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_07', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_07', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_08', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_08', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_09', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_09', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_10', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_10', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_11', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_11', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_12', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_12', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_13', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_13', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_14', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_14', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_15', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_15', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_16', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_16', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_17', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_17', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_18', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_18', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_19', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_19', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_00', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_00', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_01', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_01', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_02', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_02', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_03', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_03', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_04', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_04', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_05', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_05', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_06', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_06', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_07', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_07', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_08', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_08', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_09', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_09', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_00', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_00', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_01', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_01', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_02', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_02', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_03', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_03', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_04', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_04', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_05', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_05', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_06', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_06', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_07', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_07', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_08', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_08', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_09', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_09', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_10', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_10', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_11', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_11', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_12', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_12', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_13', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_13', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_14', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_14', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_15', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_15', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_16', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_16', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_17', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_17', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_18', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_18', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_19', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_19', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_00', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_00', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_01', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_01', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_02', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_02', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_03', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_03', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_04', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_04', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_05', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_05', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_06', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_06', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_07', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_07', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_08', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_08', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_09', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_09', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'custInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'custInfo', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Customer', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Customer', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'CustProductStatus', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CustProductStatus', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Dep_Customer_Archived', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Dep_Customer_Archived', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Dep_CustSuper', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Dep_CustSuper', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CheckRepTable', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CheckRepTable', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_ProductStatusSel', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_ProductStatusSel', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_DepSuper_1', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_DepSuper_1', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'MsgError', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'MsgError', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'MsgErrorGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'MsgErrorGroup', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'ProductSettingDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'ProductSettingDetail', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'ProductStatusProfile', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'ProductStatusProfile', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'ProductStatusSiteCurrency', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'ProductStatusSiteCurrency', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'Site', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Site', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional publication
use [CustDB]
exec sp_droppublication @publication = N'CustDB_DBTrans_CustInfo'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_Exchange', @subscriber = N'DBTRANS', @destination_db = N'CustDB', @article = N'all'
GO

-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_Exchange', @article = N'Acc_GroupExtraPT2Setting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_Exchange', @article = N'Acc_GroupExtraPT2Setting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_Exchange', @article = N'exchange', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_Exchange', @article = N'exchange', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_Exchange', @article = N'ExchangeDailyOanda', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_Exchange', @article = N'ExchangeDailyOanda', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional publication
use [CustDB]
exec sp_droppublication @publication = N'CustDB_DBTrans_Exchange'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @subscriber = N'DB062', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Acc_CustAllowList', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Acc_CustAllowList', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Acc_DWLList', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Acc_DWLList', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Acc_DWLList_ExtraPT', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Acc_DWLList_ExtraPT', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Acc_DWLList_ExtraPT_xtest', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Acc_DWLList_ExtraPT_xtest', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Acc_DWLList_xtest', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Acc_DWLList_xtest', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Acc_GroupExtraPT_Product', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Acc_GroupExtraPT_Product', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Acc_GroupExtraPT2_Product', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Acc_GroupExtraPT2_Product', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Acc_SuperPrefix', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Acc_SuperPrefix', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Age_CustSeq', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Age_CustSeq', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'BetLimitControlDefaultSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'BetLimitControlDefaultSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'BetTradeComm', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'BetTradeComm', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'BonusCurrencySetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'BonusCurrencySetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'BonusCustomerQualified', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'BonusCustomerQualified', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'BonusCustomerStatus', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'BonusCustomerStatus', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'BonusLanguageSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'BonusLanguageSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'BonusSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'BonusSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'CS_HeadlineExtraPTGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'CS_HeadlineExtraPTGroup', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'CS_ReportPermission', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'CS_ReportPermission', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'CustInDirectLogin', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'CustInDirectLogin', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'CustLoginInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'CustLoginInfo', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'CustLoginInfo_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'CustLoginInfo_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'CustLoginInfoSub', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'CustLoginInfoSub', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'CustOTP', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'CustOTP', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'CustOTPDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'CustOTPDetail', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'CustQRCode', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'CustQRCode', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'CustRequestGame', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'CustRequestGame', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'CustSuperProfile', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'CustSuperProfile', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'CustUserMapping3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'CustUserMapping3rd', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'CustVersion', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'CustVersion', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Dep_CustBAActive', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Dep_CustBAActive', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Dep_CustBetLimit_Special', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Dep_CustBetLimit_Special', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Dep_CustBetLimitGameType_Special', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Dep_CustBetLimitGameType_Special', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Dep_CustProductSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Dep_CustProductSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Dep_CustSetting_AGCasino', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Dep_CustSetting_AGCasino', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Dep_DefaultOddGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Dep_DefaultOddGroup', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Dep_SuperSetting_AGCasino', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Dep_SuperSetting_AGCasino', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Dep_SupperProductSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Dep_SupperProductSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'EASCustOTP', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'EASCustOTP', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'EmailNotification', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'EmailNotification', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'GameLaunchPerCurrency', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'GameLaunchPerCurrency', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'GameLaunchPerSite', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'GameLaunchPerSite', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'GameRoundBetLimitSettings', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'GameRoundBetLimitSettings', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Intg_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Intg_Member', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Intg_ServerCredential', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Intg_ServerCredential', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Intg_Site', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Intg_Site', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Intg_SiteVendor', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Intg_SiteVendor', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Intg_Vendor', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Intg_Vendor', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Intg_VendorAgent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Intg_VendorAgent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Member_LoginVerify', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Member_LoginVerify', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'PhoneBettingCustomerList', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'PhoneBettingCustomerList', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'ProductSettingSystemDisplay', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'ProductSettingSystemDisplay', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'ProductSettingUpdateRestriction', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'ProductSettingUpdateRestriction', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'RobotList', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'RobotList', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'TradeComm', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'TradeComm', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'VendorGlobalSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'VendorGlobalSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'VRAgentAutoAdjustment', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'VRAgentAutoAdjustment', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'VRAgentProfile', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'VRAgentProfile', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'VRCustAutoAdjustment', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'VRCustAutoAdjustment', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Winlimit_ActionSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Winlimit_ActionSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'WinLimit_CustGameMonitoring', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'WinLimit_CustGameMonitoring', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'WinLimit_CustGameMonitoring_History', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'WinLimit_CustGameMonitoring_History', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'WinLimit_CustGameSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'WinLimit_CustGameSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'WinLimit_CustGameStatus', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'WinLimit_CustGameStatus', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Winlimit_GameGroupSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Winlimit_GameGroupSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Winlimit_LevelSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Winlimit_LevelSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Winlimit_ProductSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Winlimit_ProductSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'WinLimit_ProductSettingDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'WinLimit_ProductSettingDetail', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional publication
use [CustDB]
exec sp_droppublication @publication = N'CustDB_DR_sync'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB052', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB053', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB054', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB055', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB062', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @article = N'Acc_GroupExtraCommRateSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExchangeDaily', @article = N'Acc_GroupExtraCommRateSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @article = N'Acc_GroupExtraPT2Setting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExchangeDaily', @article = N'Acc_GroupExtraPT2Setting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @article = N'Acc_GroupExtraPTSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExchangeDaily', @article = N'Acc_GroupExtraPTSetting', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @article = N'CurrencyModifier_History', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExchangeDaily', @article = N'CurrencyModifier_History', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @article = N'ExchangeDailyOanda', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExchangeDaily', @article = N'ExchangeDailyOanda', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @article = N'TOControl_GlobalSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExchangeDaily', @article = N'TOControl_GlobalSetting', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional publication
use [CustDB]
exec sp_droppublication @publication = N'CustDB_ExchangeDaily'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB04ADMIN1', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB04ADMIN2', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB05', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB052', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB053', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB054', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB055', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB05BK1', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB062', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_00', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_00', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_01', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_01', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_02', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_02', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_03', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_03', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_04', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_04', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_05', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_05', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_06', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_06', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_07', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_07', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_08', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_08', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_09', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_09', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_10', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_10', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_11', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_11', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_12', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_12', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_13', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_13', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_14', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_14', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_15', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_15', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_16', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_16', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_17', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_17', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_18', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_18', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_19', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_19', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @article = N'f_CheckRepTable', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'f_CheckRepTable', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional publication
use [CustDB]
exec sp_droppublication @publication = N'CustDB_ExecRepAcc_Cust'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB02', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB04ADMIN1', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB04ADMIN2', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB05', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB052', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB053', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB054', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB055', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB05BK1', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB062', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DBM2STAGE', @destination_db = N'bodb_Odds', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DBODDSN1', @destination_db = N'bodb_Odds', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DBODDSN2', @destination_db = N'bodb_Odds', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @article = N'Dot_MemberAllowList', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Login_Exchange', @article = N'Dot_MemberAllowList', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @article = N'Dot_StreamingVIP', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Login_Exchange', @article = N'Dot_StreamingVIP', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @article = N'exchange', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Login_Exchange', @article = N'exchange', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @article = N'Site', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Login_Exchange', @article = N'Site', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional publication
use [CustDB]
exec sp_droppublication @publication = N'CustDB_Login_Exchange'
GO



-- Dropping the transactional subscriptions
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB052', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB053', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB054', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB055', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB061', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB062', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @subscriber = N'DBTP10C', @destination_db = N'bodb_licensee', @article = N'all'
GO

-- Dropping the transactional articles
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Country', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Country', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'CurrencyUser', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'CurrencyUser', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'f_CheckRepTable', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'f_CheckRepTable', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Functions', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Functions', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_ChargeInfo_MinFee', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_ChargeInfo_MinFee', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_ChargeInfo_SystemMapping', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_ChargeInfo_SystemMapping', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_ChargeRateByCurrency', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_ChargeRateByCurrency', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_DiscountGroupAssignment', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_DiscountGroupAssignment', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_DiscountGroupCurrency', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_DiscountGroupCurrency', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_DiscountGroupDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_DiscountGroupDetail', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_DiscountGroupHeader', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_DiscountGroupHeader', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_DiscountGroupProduct', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_DiscountGroupProduct', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_Function', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_Function', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_FunctionParty', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_FunctionParty', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_Group', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_Group', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_GroupFunction', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_GroupFunction', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_GroupMinFeeAssignment', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_GroupMinFeeAssignment', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_GroupMinFeeDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_GroupMinFeeDetail', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_GroupMinFeeHeader', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_GroupMinFeeHeader', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_HostingFees', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_HostingFees', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_HostingFeesDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_HostingFeesDetail', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_HostingFeesSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_HostingFeesSetting', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceSetting', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceStatement', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceStatement', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceTemplate', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceTemplate', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_MinFee', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_MinFee', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_PartyGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_PartyGroup', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_PartyGroupAssignment', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_PartyGroupAssignment', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_Product3rdSub', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_Product3rdSub', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_UserFunction', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_UserFunction', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_UserParty', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_UserParty', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_UserSettings', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_UserSettings', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Labels', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Labels', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeCurrencyBAGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeCurrencyBAGroup', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeCust', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeCust', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeCustComm', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeCustComm', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeCustComm_History', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeCustComm_History', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeFunctions', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeFunctions', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeGroupComm', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeGroupComm', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeMultiCurrencyConfig', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeMultiCurrencyConfig', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeProduct3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeProduct3rd', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeReseller', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeReseller', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Licensees', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Licensees', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeSourcedSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeSourcedSetting', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeSpecialCust', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeSpecialCust', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeUser', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeUser', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeUserFunctions', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeUserFunctions', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_00', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_00', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_01', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_01', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_02', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_02', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_03', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_03', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_04', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_04', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_05', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_05', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_06', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_06', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_07', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_07', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_08', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_08', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_09', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_09', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LrfDomain', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LrfDomain', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'OAS_ChargeInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'OAS_ChargeInfo', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'OAS_ChargeInfoSub', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'OAS_ChargeInfoSub', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'OAS_Party', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'OAS_Party', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'OAS_PartyBaseCurrency', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'OAS_PartyBaseCurrency', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'OAS_PartyDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'OAS_PartyDetail', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'On_User', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'On_User', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Product3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Product3rd', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Resellers', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Resellers', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Sport_Bettype_Reference', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Sport_Bettype_Reference', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'SystemLicensee', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'SystemLicensee', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Systems', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Systems', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'Users', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'Users', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional publication
use [bodb_Licensee]
exec sp_droppublication @publication = N'Cusdb_bodb_licensee'
GO

-- Dropping the transactional subscriptions
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB052', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB053', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB054', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB055', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB061', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB062', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DBTP10C', @destination_db = N'bodb_licensee', @article = N'all'
GO

-- Dropping the transactional articles
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAConfig', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAConfig', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional publication
use [bodb_Licensee]
exec sp_droppublication @publication = N'CustDB_bodb_Licensee_BA'
GO

-- Dropping the transactional subscriptions
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @subscriber = N'DBTP10C', @destination_db = N'bodb_licensee', @article = N'all'
GO

-- Dropping the transactional articles
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_FunctionInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_FunctionInfo', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_GroupInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_GroupInfo', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_GroupPolicy', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_GroupPolicy', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_LicenseeFunction', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_LicenseeFunction', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_LicenseeInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_LicenseeInfo', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_LicenseeUser', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_LicenseeUser', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_UserPolicy', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_UserPolicy', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_AnalysisFile', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_AnalysisFile', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_BankInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_BankInfo', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_BillerInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_BillerInfo', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_CombinedGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_CombinedGroup', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_CombinedGroupAssignment', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_CombinedGroupAssignment', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_HostingFeesTypes', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_HostingFeesTypes', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_InvoiceDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_InvoiceDetail', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_InvoiceFile', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_InvoiceFile', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_InvoiceItemType', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_InvoiceItemType', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_InvoiceType', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_InvoiceType', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_InvoiceTypeMapping', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_InvoiceTypeMapping', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_SettingGroupAssignment', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_SettingGroupAssignment', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_SettingGroupDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_SettingGroupDetail', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_SettingGroupHeader', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_SettingGroupHeader', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_SystemSettings', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_SystemSettings', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_User', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_User', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LicenseeTransferCode', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LicenseeTransferCode', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'OAS_Users', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'OAS_Users', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional publication
use [bodb_Licensee]
exec sp_droppublication @publication = N'CustDB_bodb_licensee_DR_Sync'
GO



/****** Scripting removing replication objects. Script Date: 5/20/2022 3:06:29 AM ******/
/****** Please Note: For security reasons, all password parameters were scripted with either NULL or an empty string. ******/

-- Disabling the replication database
use master
exec sp_replicationdboption @dbname = N'bodb_Licensee', @optname = N'publish', @value = N'false'
GO

-- Disabling the replication database
use master
exec sp_replicationdboption @dbname = N'CustDB', @optname = N'publish', @value = N'false'
GO


-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DB02'
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DB04ADMIN1'
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DB04ADMIN2'
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DB05'
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DB052'
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DB053'
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DB054'
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DB055'
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DB05BK1'
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DB061'
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DB062'
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DBM2STAGE'
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DBODDSN1'
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DBODDSN2'
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DBTP10C'
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DBTRANS'
GO

/****** Uninstalling the server as a Distributor. Script Date: 5/20/2022 3:06:29 AM ******/
use master
exec sp_dropdistributor @no_checks = 1, @ignore_distributor = 1
GO
