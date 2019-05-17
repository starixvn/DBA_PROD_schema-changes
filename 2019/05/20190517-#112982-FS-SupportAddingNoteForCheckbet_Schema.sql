/*
Creator: 20190516@Long.Luu
Task:    Support adding note for CheckBet [Redmine ID: 112982]
Server:  bodb_FraudSensor

Reviewer: Billy
*/ 

CREATE TABLE [dbo].[CheckBetNote](
	[TransId]			BIGINT NOT NULL,
	[Note]				NVARCHAR(500) NOT NULL,
	[CreatedDate]		DATETIME NOT NULL,
	[CreatedBy]			INT NOT NULL,
 CONSTRAINT [PK_CheckBetNote] PRIMARY KEY CLUSTERED 
(
	[TransId]			ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA] 
GO
