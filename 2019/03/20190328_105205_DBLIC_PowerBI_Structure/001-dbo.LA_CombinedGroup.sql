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

CREATE TABLE [dbo].[LA_CombinedGroup](
	[GroupId] [smallint] IDENTITY(1,1) NOT NULL,
	[GroupName] [varchar](50) NOT NULL,
	[PathCode] [varchar](50) NOT NULL,
 CONSTRAINT [PK_LA_CombinedGroup] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
) ON rptLicPerformanceAnalysisData
) ON rptLicPerformanceAnalysisData
GO


