USE bodb_Licensee
GO

/*
	Created: 20181130@Parsons
	Task: LA - Licensee Performance Alert [#104918]
	Database: DBLIC.bodb_Licensee
	Description: Create table 
*/
CREATE TABLE [dbo].[LA_SystemSettings](
	[Key] [varchar](100) NOT NULL,
	[Value] [varchar](4000) NOT NULL,
	CONSTRAINT [PK_LA_SystemSettings] PRIMARY KEY CLUSTERED ([Key] ASC) ON [DATA]
) ON [DATA]
GO

