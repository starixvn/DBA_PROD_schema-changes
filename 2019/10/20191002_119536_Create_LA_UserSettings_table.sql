USE bodb_licensee
GO

/*
	Created: 20190906@Parsons
	DB: DBCUST
	Task: Save query filters in LPID report [#FeatureID 119536]
	Description: Create LA_UserSettings table
*/

CREATE TABLE [dbo].[LA_UserSettings](
	Id			INT IDENTITY(1,1) NOT NULL,
	UserId		INT NOT NULL,
	FunctionKey	NVARCHAR(100) NOT NULL,
	[Name]		NVARCHAR(50) NOT NULL,
	[Data]		VARCHAR(8000) NOT NULL
	CONSTRAINT [PK_LA_UserSettings] PRIMARY KEY CLUSTERED (Id ASC) ON [licensee_table]
) ON [licensee_table]
GO