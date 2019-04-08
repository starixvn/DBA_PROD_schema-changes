/*
	Task: grant select permission to Dot_InfoSite [Redmine:#109882]
	Run at DBTRANS
*/

USE [CustDB]
GO
CREATE USER [Dot_InfoSite] FOR LOGIN [Dot_InfoSite]
GO
GRANT SELECT ON [dbo].[CustInfo] TO [Dot_InfoSite]
GO