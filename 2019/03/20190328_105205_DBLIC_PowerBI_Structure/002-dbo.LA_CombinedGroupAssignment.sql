USE [bodb_licensee]
GO

/*
	20190703@Bruce
	DB: DBLIC.bodb_licensee
	Note: Create data structure for LA-PowerBI [#105205]
*/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LA_CombinedGroupAssignment](
	[GroupId] [smallint] NOT NULL,
	[PartyId] [int] NOT NULL,
	[GroupType] [tinyint] NOT NULL,
 CONSTRAINT [PK_LA_CombinedGroupAssignment] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC,
	[PartyId] ASC
) ON rptLicPerformanceAnalysisData
) ON rptLicPerformanceAnalysisData
GO


