/*
	Created: Raymond.Le
	Date: 2018-10-02
	Task: Fix overflow data type when upload assignment
	DB: bodb_OWP
*/
USE [bodb_OWP]
GO

ALTER TABLE [dbo].[RefResource]
DROP CONSTRAINT [PK_RefResource];

ALTER TABLE [dbo].[RefResource]
ALTER COLUMN ResourceId INT NOT NULL;

ALTER TABLE [dbo].[RefResource]
ADD  CONSTRAINT [PK_RefResource] PRIMARY KEY CLUSTERED 
(
	[RefName] ASC,
	[ResourceId] ASC
);

GO
