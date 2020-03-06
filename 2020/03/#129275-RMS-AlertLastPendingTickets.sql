USE [bodb_RMS];
GO

/*
	Created: Franklin
	Date: 2020-02-26
	Task: Notify/Alert by Winning Amount
	DB: DBRMS/bodb_RMS


Revisions:
- 20200226@Franklin: Notify/Alert by Winning Amount #129275
*/

SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
CREATE TABLE [dbo].[rmLastTicketAlert]
([TransId]     [BIGINT] NOT NULL
                        CONSTRAINT [DF_rmLastTicketAlert_TransId] DEFAULT((0)), 
 [AlertTime]   [DATETIME] NOT NULL
                          CONSTRAINT [DF_rmLastTicketAlert_AlertTime] DEFAULT('2000-01-01'), 
 [AlertAmount] [MONEY] NOT NULL
                       CONSTRAINT [DF_rmLastTicketAlert_AlertAmount] DEFAULT((0)), 
 [ParlayType]  [NVARCHAR](50) NOT NULL
                              CONSTRAINT [DF_rmLastTicketAlert_ParlayType] DEFAULT(''), 
 CONSTRAINT [PK_rmLastTicketAlert] PRIMARY KEY CLUSTERED([TransId] ASC)
 WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)
ON [PRIMARY];
GO