/*
	Apply individual permissions for table exchange (due to it was re-created to remove identity)
	Run on all related servers indicated
*/


--DBCUST
USE CustDB
GO
GRANT SELECT ON [dbo].[exchange] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [bodbDownlineNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [bodbDownlineNetView] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [bodbExtAccNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [bodbLicenseeNet] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange] TO [Dot_Admin] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange] TO [Dot_Admin] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [Dot_Admin] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange] TO [Dot_Admin] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange] TO [Dot_Bonus] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange] TO [Dot_Bonus] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [Dot_Bonus] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange] TO [Dot_Bonus] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange] TO [Dot_Casino] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange] TO [Dot_Casino] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [Dot_Casino] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange] TO [Dot_Casino] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange] TO [Dot_Member] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange] TO [Dot_Member] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [Dot_Member] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange] TO [Dot_Member] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange] TO [Dot_P2P] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange] TO [Dot_P2P] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [Dot_P2P] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange] TO [Dot_P2P] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [ibc_admin] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange] TO [ibc_admin] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [ibc_agent] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [ibc_member] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [Portal] AS [dbo]
GO

--dbtrans
USE CustDB
GO
GRANT SELECT ON [dbo].[exchange] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [bodbDownlineNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [bodbDownlineNetView] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [bodbExtAccNet] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange] TO [Dot_Admin] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange] TO [Dot_Admin] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [Dot_Admin] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange] TO [Dot_Admin] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange] TO [Dot_Bonus] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange] TO [Dot_Bonus] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [Dot_Bonus] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange] TO [Dot_Bonus] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange] TO [Dot_Casino] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange] TO [Dot_Casino] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [Dot_Casino] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange] TO [Dot_Casino] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [Dot_Intg] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange] TO [Dot_Member] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange] TO [Dot_Member] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [Dot_Member] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange] TO [Dot_Member] AS [dbo]
GO
GRANT DELETE ON [dbo].[exchange] TO [Dot_P2P] AS [dbo]
GO
GRANT INSERT ON [dbo].[exchange] TO [Dot_P2P] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [Dot_P2P] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange] TO [Dot_P2P] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [ibc_admin] AS [dbo]
GO
GRANT UPDATE ON [dbo].[exchange] TO [ibc_admin] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [ibc_agent] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [ibc_member] AS [dbo]
GO
GRANT SELECT ON [dbo].[exchange] TO [Portal] AS [dbo]
GO

--db052
USE bodb02
GO
GRANT SELECT ON [dbo].[Exchange] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[Exchange] TO [bodbDownlineNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[Exchange] TO [bodbDownlineNetView] AS [dbo]
GO
GRANT SELECT ON [dbo].[Exchange] TO [bodbRMSNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[Exchange] TO [Dot_Casino] AS [dbo]
GO

--db053
USE bodb02
GO
GRANT SELECT ON [dbo].[Exchange] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[Exchange] TO [bodbDownlineNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[Exchange] TO [bodbDownlineNetView] AS [dbo]
GO

--db054/db055
USE bodb02
GO
GRANT SELECT ON [dbo].[Exchange] TO [bodbDownlineNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[Exchange] TO [bodbDownlineNetView] AS [dbo]
GO

--db06/db061
USE bodb02
GO
GRANT SELECT ON [dbo].[Exchange] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[Exchange] TO [bodbDownlineNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[Exchange] TO [bodbDownlineNetView] AS [dbo]
GO
GRANT SELECT ON [dbo].[Exchange] TO [bodbLicenseeNet] AS [dbo]
GO

--dbtp
USE bodb02
GO
GRANT SELECT ON [dbo].[Exchange] TO [BASUser] AS [dbo]
GO
GRANT SELECT ON [dbo].[Exchange] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[Exchange] TO [bodbDownlineNet] AS [dbo]
GO65
GRANT SELECT ON [dbo].[Exchange] TO [bodbDownlineNetView] AS [dbo]
GO
GRANT SELECT ON [dbo].[Exchange] TO [bodbLicenseeNet] AS [dbo]
GO