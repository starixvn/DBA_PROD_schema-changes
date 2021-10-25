/*
	Task: Prepare DB schema add objects to replication
	
*/

--Run @ DBTRANS, DBTP & DR sites related:

CREATE TABLE dbo.TicketVoiding_ABWhiteList
(
	Custid				INT,
	LevelId				TINYINT,
	SiteId				INT,
	CreateBy			INT,
	CreatedDate			DATETIME,
	LastModifiedBy		INT,
	LastModifiedDate	DATETIME,

 CONSTRAINT [PK_TicketVoiding_ABWhiteList_Custid] PRIMARY KEY CLUSTERED 
(
	Custid ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]
ALTER TABLE dbo.TicketVoiding_ABWhiteList ADD  CONSTRAINT [DF_TicketVoiding_ABWhiteList_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE dbo.TicketVoiding_ABWhiteList ADD  CONSTRAINT [DF_TicketVoiding_ABWhiteList_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO



--Run on DBBAL @AWS:

CREATE PROCEDURE dbo.Bet_ExecRep_NAP_Admin_01
AS
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
BEGIN
	SET NOCOUNT ON
END
GO
CREATE PROCEDURE dbo.Bet_ExecRep_NAP_Admin_02
AS
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
BEGIN
	SET NOCOUNT ON
END
GO
CREATE PROCEDURE dbo.Bet_ExecRep_NAP_Admin_03
AS
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.Bet_ExecRep_NAP_Admin_04
AS
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.Bet_ExecRep_NAP_Admin_05
AS
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.Bet_ExecRep_NAP_Admin_06
AS
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.Bet_ExecRep_NAP_Admin_07
AS
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.Bet_ExecRep_NAP_Admin_08
AS
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.Bet_ExecRep_NAP_Admin_09
AS
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.Bet_ExecRep_NAP_Admin_10
AS
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
BEGIN
	SET NOCOUNT ON
END
GO

-----------------------------------------------
CREATE PROCEDURE dbo.ExecRep_NAP_Admin_01
	
AS
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.ExecRep_NAP_Admin_03
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
AS
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.ExecRep_NAP_Admin_04
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
AS
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.ExecRep_NAP_Admin_05
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
AS
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.ExecRep_NAP_Admin_06
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
AS
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.ExecRep_NAP_Admin_07
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
AS
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.ExecRep_NAP_Admin_08
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
AS
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.ExecRep_NAP_Admin_09
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
AS
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.ExecRep_NAP_Admin_10
/*
	Created by: 20211015@Kathy
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBBAL/bodb02
	
	Revisions:
		- 20211015@Kathy: SP for Settlement [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_Bet
*/
AS
BEGIN
	SET NOCOUNT ON
END
GO


