


--- run on DBTP for remove replication setting
--- DBTP
 /*
	Step:
	---- remove replication setting
	1. Drop all subscriptions of DBTP_bodb_licensee publication	 
	2. Drop all subscriptions of DBTP_bodb_licensee_LA publication
	3. drop all articles of DBTP_bodb_licensee_LA publication
	4. drop DBTP_bodb_licensee_LA publication

	---- creating replication setting
	5. Add all articles from old DBTP_bodb_licensee_LA to DBTP_bodb_licensee publication
	6. add all subscriptions
 
*/


-- Dropping the transactional subscriptions
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee', @subscriber = N'DBMNL', @destination_db = N'bodb_licensee', @article = N'all'
GO
 

-- Dropping the transactional subscriptions
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @subscriber = N'DBMNL', @destination_db = N'bodb_licensee', @article = N'all'
GO

-- Dropping the transactional articles
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_ChargeInfo_MinFee', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_ChargeInfo_MinFee', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_ChargeInfo_SystemMapping', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_ChargeInfo_SystemMapping', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_DiscountGroupAssignment', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_DiscountGroupAssignment', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_DiscountGroupCurrency', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_DiscountGroupCurrency', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_DiscountGroupDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_DiscountGroupDetail', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_DiscountGroupHeader', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_DiscountGroupHeader', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_DiscountGroupProduct', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_DiscountGroupProduct', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_Function', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_Function', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_FunctionParty', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_FunctionParty', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_Group', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_Group', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_GroupFunction', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_GroupFunction', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_HostingFees', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_HostingFees', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_HostingFeesDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_HostingFeesDetail', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_HostingFeesSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_HostingFeesSetting', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_InvoiceHeader', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_InvoiceHeader', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_InvoiceSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_InvoiceSetting', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_InvoiceStatement', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_InvoiceStatement', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_InvoiceTemplate', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_InvoiceTemplate', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_MinFee', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_MinFee', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_PartyGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_PartyGroup', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_PartyGroupAssignment', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_PartyGroupAssignment', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_Product3rdSub', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_Product3rdSub', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_UserFunction', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_UserFunction', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_UserParty', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_UserParty', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_UserSettings', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'LA_UserSettings', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'OAS_ChargeInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'OAS_ChargeInfo', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'OAS_ChargeInfoSub', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'OAS_ChargeInfoSub', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'OAS_Party', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'OAS_Party', @force_invalidate_snapshot = 1
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee_LA', @article = N'OAS_PartyDetail', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee_LA', @article = N'OAS_PartyDetail', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional publication
use [bodb_Licensee]
exec sp_droppublication @publication = N'DBTP_bodb_licensee_LA'
GO

 