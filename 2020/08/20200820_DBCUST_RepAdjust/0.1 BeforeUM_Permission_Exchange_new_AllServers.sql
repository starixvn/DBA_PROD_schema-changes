/*
	Apply individual permissions for table exchange_new (cloned from exchange), this table will be renamed to exchange for ready to use
	Run on all related servers indicated + MNL relevant servers, should do before UM to save time do in UM
*/


--DBCUST
USE CustDB
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbDownlineNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbDownlineNetView] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbExtAccNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbLicenseeNet] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange_new] TO [Dot_Admin] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange_new] TO [Dot_Admin] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [Dot_Admin] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange_new] TO [Dot_Admin] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange_new] TO [Dot_Bonus] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange_new] TO [Dot_Bonus] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [Dot_Bonus] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange_new] TO [Dot_Bonus] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange_new] TO [Dot_Casino] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange_new] TO [Dot_Casino] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [Dot_Casino] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange_new] TO [Dot_Casino] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange_new] TO [Dot_Member] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange_new] TO [Dot_Member] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [Dot_Member] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange_new] TO [Dot_Member] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange_new] TO [Dot_P2P] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange_new] TO [Dot_P2P] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [Dot_P2P] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange_new] TO [Dot_P2P] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [ibc_admin] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange_new] TO [ibc_admin] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [ibc_agent] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [ibc_member] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [Portal] AS [dbo]
GO

--dbtrans
USE CustDB
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbDownlineNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbDownlineNetView] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbExtAccNet] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange_new] TO [Dot_Admin] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange_new] TO [Dot_Admin] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [Dot_Admin] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange_new] TO [Dot_Admin] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange_new] TO [Dot_Bonus] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange_new] TO [Dot_Bonus] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [Dot_Bonus] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange_new] TO [Dot_Bonus] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange_new] TO [Dot_Casino] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange_new] TO [Dot_Casino] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [Dot_Casino] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange_new] TO [Dot_Casino] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [Dot_Intg] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange_new] TO [Dot_Member] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange_new] TO [Dot_Member] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [Dot_Member] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange_new] TO [Dot_Member] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange_new] TO [Dot_P2P] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange_new] TO [Dot_P2P] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [Dot_P2P] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange_new] TO [Dot_P2P] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [ibc_admin] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange_new] TO [ibc_admin] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [ibc_agent] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [ibc_member] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [Portal] AS [dbo]
GO

--db052
USE bodb02
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbDownlineNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbDownlineNetView] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbRMSNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [Dot_Casino] AS [dbo]
GO

--db053
USE bodb02
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbDownlineNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbDownlineNetView] AS [dbo]
GO

--db054/db055
USE bodb02
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbDownlineNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbDownlineNetView] AS [dbo]
GO

--db06/db061
USE bodb02
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbDownlineNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbDownlineNetView] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbLicenseeNet] AS [dbo]
GO

--dbtp
USE bodb02
GO
GRANT SELECT ON [dbo].[exchange_new] TO [BASUser] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbDownlineNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbDownlineNetView] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange_new] TO [bodbLicenseeNet] AS [dbo]
GO