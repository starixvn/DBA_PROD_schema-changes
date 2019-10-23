/*
	Creator:	20191023@Billy
	Task:		New user for OWP UM - [Redmine: #121990]
	Server:		DBCUST
*/

USE	master;
GO

CREATE LOGIN bodbPolicyNetView
	WITH PASSWORD		= 0x0100B06902276896A70D3AD9A10F424F7A85F43C80E2D69A18A4 HASHED
,	SID					= 0x4E5364EE5A13B343B8B6F9B4B2705C45
,	DEFAULT_DATABASE	= [master]
,	CHECK_POLICY		= OFF
,	CHECK_EXPIRATION	= OFF
;
GO

USE	CustDB;
GO
CREATE USER bodbPolicyNetView FOR LOGIN bodbPolicyNetView;
GO
GRANT SELECT ON dbo.Customer TO bodbPolicyNetView;
GRANT SELECT ON dbo.custInfo TO bodbPolicyNetView;
GO

USE	NAP_UserControl;
GO
CREATE USER bodbPolicyNetView FOR LOGIN bodbPolicyNetView;
GO
GRANT EXECUTE ON NAP_Function_GetById TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_Function_GetByKeyAndSite TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_Function_GetByUserAndSiteIncludeGroup TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_Group_GetById TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_MenuItem_GetBySite TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_MenuItem_GetByUserAndSiteIncludeGroup TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_Site_GetById TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_Site_GetByUser TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_Site_GetSiteURLBySiteId TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_User_CheckIn TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_User_GetAll TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_User_GetById TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_User_GetByUsername TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_User_GetUserByFunctionAndSite TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_User_GetUserSiteFunctionKeyPolicy TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_User_GetUserSiteLevel TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_User_Logout TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_User_ReCheckIn TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_User_SSOCheckIn TO bodbPolicyNetView;
GRANT EXECUTE ON NAP_User_SSOGetTime TO bodbPolicyNetView;
GO