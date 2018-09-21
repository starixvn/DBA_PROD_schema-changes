/*
	Created: Johnson
	Date: 2018-09-21
	Task: add note for employee working shift
	DB: bodb_OWP
*/
USE [bodb_OWP]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmployeeWorkingShiftNote](
	[UserId] [int] NOT NULL,
	[Note] [nvarchar](200) NULL,
 CONSTRAINT [PK_EmployeeWorkingShiftNote] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [OWP_Data]
) ON [OWP_Data]

GO
