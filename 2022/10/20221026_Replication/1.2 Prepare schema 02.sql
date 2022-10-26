 /*
	Task: Prepare DB schema add objects to replication (AWS)
	
*/

--===========================================================
-- DBTP10C: Add 30 SPs Bet_ExecRep_NAP_Admin_[01-10]_UAT[1-3] to pub DBTP_Bet_n_ExecRep_AWS
-- DBTP10C: Add 30 SPs ExecRep_NAP_Admin_[01-10]_UAT[1-3] to pub DBTP_Bet_n_ExecRep_AWS
-- ==> Servers/DB: 
--  * AWS: DBBAL.bodb02



USE [bodb02]
GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_01_UAT1]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_01_UAT1] 	
	@TransInfo	XML
	,@TableName VARCHAR(128)
	,@Action	VARCHAR(1)	= 'U'
	,@MatchId	INT			= 0
	,@TicketType VARCHAR(1) = NULL
	,@SettlementAction VARCHAR(20) = NULL
	,@RunOnServer VARCHAR(100)= NULL
	,@CalledByBrokerService	BIT = 0
AS
/*
	Created by: 20220728@Kathy
	Task: Settlement  

	Revisions:
		- 20220719@Kathy: Scale Out BetTrans [Redmine:#175251]
		
	Param's Explanation:  
		   
*/
BEGIN
	SET NOCOUNT ON
	
	DECLARE @batchNo		INT			
			,@matchdate		SMALLDATETIME
			,@strTransIds	VARCHAR(MAX)
			,@sMessage		NVARCHAR(MAX)
			,@IsEnableServiceBroker BIT

			,@AllowUndo		BIT
			,@AllowRefund	BIT
			,@AllowCalculation		BIT
			,@ServerName	SYSNAME

	DECLARE @tmpTransId TABLE (transId BIGINT, refno BIGINT
		,matchid INT, winlostdate DATETIME, betdaqid VARCHAR(50)
		,modds MONEY, odds SMALLMONEY, oddsid INT, oddsspread VARCHAR(20), statuswinlost VARCHAR(1),SettlementTime DATETIME
		,WinLost MONEY,aWinLost MONEY,mWinLost MONEY,sWinLost MONEY
		,PlayerComm MONEY, Comm MONEY,aComm MONEY,sComm MONEY
		,Status NVARCHAR(10),StatusID TINYINT,ruben TINYINT,FcUpdateTime DATETIME2, creator INT
		,hdp1 SMALLMONEY, hdp2 SMALLMONEY, livehomescore SMALLINT, liveawayscore SMALLINT
		,custid INT, bettype SMALLINT, userid INT , CreatedDate DATETIME, MarkType TINYINT, betid VARCHAR(50), ExtraInfo VARCHAR(1000)
		
		,transdate	 DATETIME 
		,comstatus NVARCHAR(40),checktime	DATETIME	
		,actualrate	FLOAT,recommend	INT	,mrecommend	INT	,srecommend	INT, stake MONEY,actual_stake MONEY	
		,currency	TINYINT	
		,Username	NVARCHAR(100),CurrencyName	NVARCHAR(100),virtualrate	FLOAT	
	)

	SET @RunOnServer = ISNULL(@RunOnServer,@@SERVERNAME)

	IF @RunOnServer <> @@SERVERNAME
	BEGIN
		PRINT 'This command was skipped because run wrong server'
		RETURN
	END

	IF @TicketType = 'p' 
			AND @@SERVERNAME IN ('DB054','DB054C2\DB054','DB042', 'SITDB042', 'DB055', 'SITDB055')
        RETURN

	IF @TicketType = 's' 
			AND @@SERVERNAME IN ('DB054','DB054C2\DB054','DB042', 'SITDB042','DB232\SQLSERVER2008R2', 'DB233\SQLSERVER2008R2', 'TESTDB055', 'SITDB055', 'DB055', 'DB-61\DEVDB055' ) 
			AND @SettlementAction IN ('CAL', 'REFUND')
		RETURN

	IF OBJECT_ID('NAP_Set_ServerAction', 'P') IS NOT NULL
	BEGIN
		IF @SettlementAction = 'UNDO'
		BEGIN
			EXEC [dbo].[NAP_Set_ServerAction]
				@ServerName			= @ServerName
				,@AllowUndo			= @AllowUndo		OUTPUT

			IF @AllowUndo = 0
				RETURN
		END
		ELSE IF @SettlementAction = 'REFUND'
		BEGIN
			EXEC [dbo].[NAP_Set_ServerAction]
				@ServerName			= @ServerName
				,@AllowRefund		= @AllowRefund		OUTPUT

			IF @AllowRefund = 0
				RETURN
		END
		ELSE IF @SettlementAction = 'CAL'
		BEGIN
			EXEC [dbo].[NAP_Set_ServerAction]
				@ServerName			= @ServerName
				,@AllowCalculation	= @AllowCalculation	OUTPUT

			IF @AllowCalculation = 0
				RETURN
		END
	END

	EXEC dbo.NAP_Set_ServerInfo 
		@IsEnableServiceBroker = @IsEnableServiceBroker OUTPUT

	IF @IsEnableServiceBroker = 1 AND @CalledByBrokerService = 0
    BEGIN
		SET @sMessage = 'EXEC dbo.Bet_ExecRep_NAP_Admin_01_UAT1 @matchid = ' + CONVERT(NVARCHAR(50), ISNULL(@matchid,0)) 
							+ ',@TransInfo = ' +  '''' + CONVERT(NVARCHAR(MAX), @TransInfo) + ''''
							+ ',@TableName = ' + CASE
													WHEN @TableName IS NULL THEN 'NULL'
													ELSE '''' + @TableName + ''''
													END 
							+ ',@Action = ' + CASE
													WHEN @Action IS NULL THEN 'NULL'
													ELSE '''' + @Action + ''''
													END 
							+ ',@TicketType = ' + CASE
													WHEN @TicketType IS NULL THEN 'NULL'
													ELSE '''' + @TicketType + ''''
													END 														
							+ ',@SettlementAction = ' + CASE
													WHEN @SettlementAction IS NULL THEN 'NULL'
													ELSE '''' + @SettlementAction + ''''
													END 
							+ ',@RunOnServer = ' + CASE
													WHEN @RunOnServer IS NULL THEN 'NULL'
													ELSE '''' + @RunOnServer + ''''
													END 
							+ ',@CalledByBrokerService = 1'
		
		EXEC dbo.SSB_Send_Message 
			@MessageContent = @sMessage
			,@FunctionName = 'settlement'
			,@MessageType = 'bet_SiteDB_msg_type_01'
	END
	ELSE
	BEGIN
		IF @tablename = 'bettrans'
		BEGIN
			INSERT INTO @tmpTransId (TransID
				,matchid, winlostdate, betdaqid
				,modds, odds, oddsid, oddsspread, statuswinlost,SettlementTime,WinLost,aWinLost
				,mWinLost,sWinLost,PlayerComm,Comm,aComm,sComm,Status,StatusID,ruben,FcUpdateTime
				, hdp1 , hdp2 , livehomescore , liveawayscore , creator, betid, ExtraInfo		
				,virtualrate	 
			)
			SELECT	T.C.value('./@t', 'bigint') AS transid
					,T.C.value('./@mid', 'INT') AS matchid
					,T.C.value('./@wld', 'SMALLDATETIME') AS winlostdate
					,T.C.value('./@bdaq', 'VARCHAR(50)') AS betdaqid
					,T.C.value('./@m', 'MONEY') AS modds
					,T.C.value('./@o', 'SMALLMONEY') AS odds
					,T.C.value('./@oid', 'INT') AS oddsid
					,T.C.value('./@os', 'VARCHAR(20)') AS oddsspread
					,T.C.value('./@statuswl', 'VARCHAR(1)') AS statuswinlost
					,T.C.value('./@st', 'DATETIME') AS SettlementTime
					,T.C.value('./@w', 'MONEY') AS WinLost
					,T.C.value('./@aw', 'MONEY') AS aWinLost
					,T.C.value('./@mw', 'MONEY') AS mWinLost
					,T.C.value('./@sw', 'MONEY') AS sWinLost
					,T.C.value('./@pc', 'MONEY') AS PlayerComm
					,T.C.value('./@c', 'MONEY') AS Comm 
					,T.C.value('./@ac', 'MONEY') AS aComm
					,T.C.value('./@sc', 'MONEY') AS sComm
					,T.C.value('./@s', 'NVARCHAR(10)')	AS [Status]
					,T.C.value('./@sid', 'TINYINT')		AS StatusID
					,T.C.value('./@r', 'TINYINT')		AS ruben
					,T.C.value('./@rut', 'DATETIME2')	AS FcUpdateTime	
					,T.C.value('./@hdp1', 'SMALLMONEY') AS hdp1
					,T.C.value('./@hdp2', 'SMALLMONEY') AS hdp2
					,T.C.value('./@lh', 'SMALLINT') AS livehomescore
					,T.C.value('./@la', 'SMALLINT') AS liveawayscore
					,T.C.value('./@cr', 'INT') AS creator
					,T.C.value('./@bid', 'VARCHAR(50)') AS betid
					,T.C.value('./@ex', 'VARCHAR(1000)') AS ExtraInfo	  
					,T.C.value('./@v', 'FLOAT') AS virtualrate
			FROM	@transInfo.nodes('/root/r') AS T(C)
			OPTION (OPTIMIZE FOR (@transInfo = NULL ))

			SET @batchNo = @@ROWCOUNT

			IF @Action = 'U'
			BEGIN
				UPDATE TOP (@batchNo) b
					SET
						matchid = CASE WHEN t.matchid IS NULL THEN b.matchid ELSE t.matchid END
						,winlostdate = CASE WHEN t.winlostdate IS NULL THEN b.winlostdate ELSE t.winlostdate END
						,betdaqid = CASE WHEN t.betdaqid IS NULL THEN b.betdaqid ELSE CAST(t.betdaqid AS BIGINT) END
						,modds = CASE WHEN t.modds IS NULL THEN b.modds ELSE t.modds END
						,odds = CASE WHEN t.odds IS NULL THEN b.odds ELSE t.odds END
						,oddsid = CASE WHEN t.oddsid IS NULL THEN b.oddsid ELSE t.oddsid END
						,oddsspread = CASE WHEN t.oddsspread IS NULL THEN b.oddsspread ELSE CAST(t.oddsspread AS MONEY) END  	
						,statuswinlost = CASE 
											WHEN t.statuswinlost IS NULL THEN b.statuswinlost
											WHEN t.statuswinlost = '' THEN NULL
											ELSE CAST(t.statuswinlost AS TINYINT)
										END
						,SettlementTime = CASE WHEN t.SettlementTime IS NULL THEN b.SettlementTime ELSE GETDATE() END						
						,WinLost = CASE WHEN t.WinLost IS NULL THEN b.winlost ELSE t.WinLost END
						,aWinLost = CASE WHEN t.aWinLost IS NULL THEN b.awinlost ELSE t.aWinLost END			
						,mWinLost = CASE WHEN t.mWinLost IS NULL THEN b.mwinlost ELSE t.mWinLost END
						,sWinLost = CASE WHEN t.sWinLost IS NULL THEN b.swinlost ELSE t.sWinLost END
						,PlayerComm = CASE WHEN t.PlayerComm IS NULL THEN b.playercomm ELSE t.PlayerComm END
						,Comm = CASE WHEN t.Comm IS NULL THEN b.comm ELSE t.Comm END					
						,aComm = CASE WHEN t.aComm IS NULL THEN b.acomm  ELSE t.aComm END					
						,sComm = CASE WHEN t.sComm IS NULL THEN b.scomm ELSE t.sComm END					
						,Status = CASE WHEN t.Status IS NULL THEN b.status ELSE t.Status END
						,StatusID = CASE WHEN t.StatusID IS NULL THEN b.statusID ELSE t.StatusID END
						,ruben= CASE WHEN t.ruben IS NULL THEN b.ruben ELSE t.ruben END
						,FcUpdateTime = CASE WHEN t.FcUpdateTime IS NULL THEN b.FcUpdateTime ELSE SYSDATETIME() END
						,hdp1 = CASE WHEN t.hdp1 IS NULL THEN b.hdp1 ELSE t.hdp1 END					
						,hdp2 = CASE WHEN t.hdp2 IS NULL THEN b.hdp2  ELSE t.hdp2 END					
						,livehomescore = CASE WHEN t.livehomescore IS NULL THEN b.livehomescore ELSE t.livehomescore END					
						,liveawayscore = CASE WHEN t.liveawayscore IS NULL THEN b.liveawayscore ELSE t.liveawayscore END									
						,creator = CASE WHEN t.creator IS NULL THEN b.creator ELSE t.creator END
						,betid = CASE WHEN t.betid IS NULL THEN b.betid ELSE CAST(t.betid AS BIGINT) END
						,ExtraInfo = CASE WHEN t.ExtraInfo IS NULL THEN b.ExtraInfo ELSE t.ExtraInfo END
						,virtualrate = CASE WHEN t.virtualrate IS NULL THEN b.virtualrate ELSE t.virtualrate END
				FROM @tmpTransId t
					INNER JOIN dbo.bettrans b  WITH (ROWLOCK, UPDLOCK) 
						ON  t.transid = b.transid 
				OPTION (OPTIMIZE FOR (@batchNo = 1), FORCE ORDER)
			END			
		END
		ELSE IF @TableName = 'bettransm'
		BEGIN
			INSERT INTO @tmpTransId (TransID, matchid
				,winlostdate, statuswinlost, refno, WinLost
				, Status, StatusID, ruben, hdp1, hdp2, livehomescore, liveawayscore, Creator
			)
			SELECT	T.C.value('./@t', 'bigint') AS transid
				,T.C.value('./@mid', 'INT') AS matchid
					,T.C.value('./@wld', 'SMALLDATETIME') AS Winlostdate
					,T.C.value('./@statuswl', 'VARCHAR(1)') AS statuswinlost
					,T.C.value('./@ref', 'BIGINT') AS refno
					,T.C.value('./@w', 'MONEY') AS WinLost	
					,T.C.value('./@s', 'NVARCHAR(10)') AS Status
					,T.C.value('./@sid', 'TINYINT') AS StatusID
					,T.C.value('./@r', 'TINYINT') AS ruben	
					,T.C.value('./@hdp1', 'SMALLMONEY') AS hdp1
					,T.C.value('./@hdp2', 'SMALLMONEY') AS hdp2
					,T.C.value('./@lh', 'SMALLINT') AS livehomescore
					,T.C.value('./@la', 'SMALLINT') AS liveawayscore	
					,T.C.value('./@cr', 'INT') AS Creator
			FROM	@transInfo.nodes('/root/r') AS T(C)
			OPTION (OPTIMIZE FOR (@transInfo = NULL ))

			SET @batchNo = @@ROWCOUNT

			UPDATE TOP (@batchNo)  bm
			SET matchid = CASE WHEN t.matchid IS NULL THEN bm.matchid ELSE t.matchid END
				,ruben = CASE WHEN t.ruben IS NULL THEN bm.ruben ELSE t.ruben END								
					,winlostdate = CASE 
										WHEN t.winlostdate IS NULL THEN bm.winlostdate	
										WHEN t.winlostdate = '' THEN NULL
										ELSE t.winlostdate
									END
					,[status] = CASE WHEN t.Status IS NULL THEN bm.status ELSE t.Status END
					,statusID = CASE WHEN t.StatusID IS NULL THEN bm.statusID ELSE t.StatusID END								
					,statuswinlost = CASE 
										WHEN t.statuswinlost IS NULL THEN bm.statuswinlost
										WHEN t.statuswinlost = '' THEN NULL
										ELSE CAST(t.statuswinlost AS TINYINT)
									END
					,hdp1 = CASE WHEN t.hdp1 IS NULL THEN bm.hdp1 ELSE t.hdp1 END					
					,hdp2 = CASE WHEN t.hdp2 IS NULL THEN bm.hdp2  ELSE t.hdp2 END					
					,livehomescore = CASE WHEN t.livehomescore IS NULL THEN bm.livehomescore ELSE t.livehomescore END					
					,liveawayscore = CASE WHEN t.liveawayscore IS NULL THEN bm.liveawayscore ELSE t.liveawayscore END									
					,creator = CASE WHEN t.creator IS NULL THEN bm.creator ELSE t.creator END
			FROM	@tmptransid t
				INNER JOIN dbo.bettransm bm WITH (ROWLOCK, UPDLOCK)
					ON	bm.transid = t.transid
			--OPTION (OPTIMIZE FOR (@batchNo = 1), FORCE ORDER)
		END
		ELSE IF @TableName = 'BetParlayDetail'
		BEGIN
			INSERT INTO @tmpTransId (TransID, matchid
				,winlostdate, statuswinlost, StatusID
			)
			SELECT	T.C.value('./@t', 'bigint') AS transid
				,T.C.value('./@mid', 'INT') AS matchid
					,CASE 
						WHEN T.C.value('./@wld', 'SMALLDATETIME') = '' THEN NULL 
						ELSE T.C.value('./@wld', 'SMALLDATETIME') 
					END AS winlostdate
					,T.C.value('./@statuswl', 'VARCHAR(1)')				
					,T.C.value('./@sid', 'TINYINT') AS StatusID									
			FROM	@transInfo.nodes('/root/r') AS T(C)
			OPTION (OPTIMIZE FOR (@transInfo = NULL ))

			UPDATE pd 
			SET matchid = CASE WHEN t.matchid IS NULL THEN pd.matchid ELSE t.matchid END
				,winlostdate = CASE	
									WHEN t.winlostdate IS NULL THEN pd.winlostdate
									WHEN t.winlostdate = '' THEN NULL
									ELSE t.winlostdate
								END
					,statusID = CASE WHEN t.StatusID IS NULL THEN pd.statusid ELSE t.StatusID END			
					,statuswinlost = CASE 
										WHEN t.statuswinlost IS NULL THEN pd.statuswinlost
										WHEN t.statuswinlost = '' THEN NULL
										ELSE CAST(t.statuswinlost AS TINYINT)
									END		
			FROM   @tmpTransId t
				INNER JOIN dbo.BetParlayDetail pd WITH(ROWLOCK, UPDLOCK)
					ON  pd.transid = t.transid
			--OPTION (OPTIMIZE FOR (@batchNo = 1), FORCE ORDER)
		END
		ELSE IF @TableName = 'MarkedTransaction'
		BEGIN
			IF @Action = 'I'
			BEGIN
				INSERT INTO @tmpTransId (TransID ,matchid, custid, bettype, userid, CreatedDate, MarkType)
				SELECT	T.C.value('./@t', 'BIGINT') AS transid
						,T.C.value('./@mid', 'INT') AS matchid
						,T.C.value('./@cust', 'INT') AS custid
						,T.C.value('./@btype', 'SMALLINT') AS bettype			
						,T.C.value('./@us', 'INT') AS userid	
						,T.C.value('./@crdate', 'DATETIME') AS CreatedDate
						,T.C.value('./@mt', 'TINYINT') AS MarkType		
				FROM	@transInfo.nodes('/root/r') AS T(C)
				OPTION (OPTIMIZE FOR (@transInfo = NULL ))

				INSERT INTO dbo.MarkedTransaction (TransID ,matchid, custid, bettype, userid, CreatedDate, MarkType)
				SELECT TransID ,matchid, custid, bettype, userid, CreatedDate, MarkType
				FROM @tmpTransId
			END
			ELSE IF @Action = 'D'
			BEGIN
				INSERT INTO @tmpTransId (TransID ,matchid)
				SELECT	T.C.value('./@t', 'bigint') AS transid
					   ,T.C.value('./@mid', 'INT') AS matchid
				FROM	@transInfo.nodes('/root/r') AS T(C)
				OPTION (OPTIMIZE FOR (@transInfo = NULL ))

				DELETE m 
				FROM dbo.MarkedTransaction m WITH (ROWLOCK, UPDLOCK)
					INNER JOIN @tmpTransId t ON t.TransId = m.TransId AND t.MatchId = m.MatchId
			END
		END
		ELSE IF @TableName = 'zzzbettrans' AND OBJECT_ID('zzzbettrans','U') IS NOT NULL
		BEGIN
			IF @Action = 'U'
			BEGIN
				INSERT INTO @tmpTransId (TransID ,matchid, Status, WinLost)
				SELECT	T.C.value('./@t', 'bigint') AS transid	
					,T.C.value('./@mid', 'INT') AS matchid	
					,T.C.value('./@s', 'NVARCHAR(10)') AS Status	
					,T.C.value('./@w', 'MONEY') AS WinLost	
				FROM	@transInfo.nodes('/root/r') AS T(C)	
				OPTION (OPTIMIZE FOR (@transInfo = NULL ))		

				SET @batchNo = @@ROWCOUNT

				UPDATE TOP (@batchNo)  b
					SET [status] = CASE WHEN t.Status IS NULL THEN b.status ELSE t.Status END
						,WinLost = CASE WHEN t.WinLost IS NULL THEN b.winlost ELSE t.WinLost END
				FROM	@tmptransid t
					INNER JOIN dbo.zzzbettrans b WITH (ROWLOCK, UPDLOCK)
						ON	b.transid = t.transid
			END
			ELSE IF @Action = 'D'
			BEGIN
				INSERT INTO @tmpTransId (TransID ,matchid, transdate, comstatus)
				SELECT	T.C.value('./@t', 'bigint') AS transid
					   ,T.C.value('./@mid', 'INT') AS matchid
					   ,T.C.value('./@td', 'datetime') AS transdate
						,T.C.value('./@cst', 'nvarchar(40)') AS comstatus
				FROM	@transInfo.nodes('/root/r') AS T(C)
				OPTION (OPTIMIZE FOR (@transInfo = NULL ))

				DELETE m 
				FROM dbo.zzzbettrans m WITH (ROWLOCK, UPDLOCK)
					INNER JOIN @tmpTransId t ON t.TransId = m.TransId AND t.MatchId = m.MatchId 
										AND ISNULL(m.comstatus, '') = ISNULL(t.comstatus, '')
										AND m.transdate = t.transdate
			END
		END
		ELSE IF @TableName = 'zzzbettransm' AND OBJECT_ID('zzzbettransm','U') IS NOT NULL
		BEGIN
			IF @Action = 'U'
			BEGIN
				INSERT INTO @tmpTransId (TransID ,matchid)
				SELECT	T.C.value('./@t', 'bigint') AS transid	
					,T.C.value('./@mid', 'INT') AS matchid
				FROM	@transInfo.nodes('/root/r') AS T(C)	
				OPTION (OPTIMIZE FOR (@transInfo = NULL ))		

				SET @batchNo = @@ROWCOUNT

				UPDATE TOP (@batchNo)  b
					SET matchid = CASE WHEN t.matchid IS NULL THEN b.matchid ELSE t.matchid END
				FROM	@tmptransid t
					INNER JOIN dbo.zzzbettransm b WITH (ROWLOCK, UPDLOCK)
						ON	b.transid = t.transid
			END
			ELSE IF @Action = 'D' --TVS subparlay
			BEGIN
				INSERT INTO @tmpTransId (TransID ,matchid)
				SELECT	T.C.value('./@t', 'BIGINT') AS transid	
					   ,T.C.value('./@mid', 'INT') AS matchid
				FROM	@transInfo.nodes('/root/r') AS T(C)	
				OPTION (OPTIMIZE FOR (@transInfo = NULL ))		

				DELETE bm 
				FROM dbo.zzzbettransm bm WITH (ROWLOCK, UPDLOCK)
					INNER JOIN @tmpTransId t ON t.TransId = bm.TransId AND t.MatchId = bm.MatchId
			END
		END
		ELSE IF @TableName = 'BetParlayResult'
		BEGIN
			SELECT  @matchdate = T.C.value('@wld', 'SMALLDATETIME') 
					,@strTransIds = T.C.value('@strTransId', 'VARCHAR(MAX)') 
			FROM    @TransInfo.nodes('/root/r') AS T(C)

			EXEC dbo.NAP_Admin_Calculate_MP_PreCal_29 
				@matchid = @matchid
				,@matchdate = @matchdate
				,@strXML = @strTransIds
		END
		ELSE IF @TableName = 'TicketVoiding_VoidedTransaction' AND OBJECT_ID('TicketVoiding_VoidedTransaction','U') IS NOT NULL
		BEGIN
			IF @Action = 'U'
			BEGIN
				INSERT INTO @tmpTransId (TransID ,matchid)
				SELECT	T.C.value('./@t', 'bigint') AS transid	
					,T.C.value('./@mid', 'INT') AS matchid
				FROM	@transInfo.nodes('/root/r') AS T(C)	
				OPTION (OPTIMIZE FOR (@transInfo = NULL ))		

				SET @batchNo = @@ROWCOUNT

				UPDATE TOP (@batchNo)  v
					SET matchid = CASE WHEN t.matchid IS NULL THEN v.matchid ELSE t.matchid END
				FROM	@tmptransid t
					INNER JOIN dbo.TicketVoiding_VoidedTransaction v WITH (ROWLOCK, UPDLOCK)
						ON	v.transid = t.transid
			END
		END
	END
END
GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_01_UAT2]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_01_UAT2]	
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_01_UAT3]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_01_UAT3]	
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_02_UAT1]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--------------------------------------------------
CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_02_UAT1]	
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_02_UAT2]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_02_UAT2]	
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_02_UAT3]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_02_UAT3]	
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_03_UAT1]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------

CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_03_UAT1]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_03_UAT2]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_03_UAT2]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_03_UAT3]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_03_UAT3]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_04_UAT1]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------

CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_04_UAT1]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_04_UAT2]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_04_UAT2]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_04_UAT3]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_04_UAT3]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_05_UAT1]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------

CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_05_UAT1]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_05_UAT2]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_05_UAT2]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_05_UAT3]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_05_UAT3]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_06_UAT1]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

---------------------------------------------------

CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_06_UAT1]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_06_UAT2]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_06_UAT2]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_06_UAT3]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_06_UAT3]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_07_UAT1]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-----------------------------------------------------

CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_07_UAT1]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_07_UAT2]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_07_UAT2]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_07_UAT3]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_07_UAT3]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_08_UAT1]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------

CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_08_UAT1]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_08_UAT2]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_08_UAT2]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_08_UAT3]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_08_UAT3]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_09_UAT1]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------

CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_09_UAT1]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_09_UAT2]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_09_UAT2]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_09_UAT3]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_09_UAT3]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_10_UAT1]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------

CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_10_UAT1]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_10_UAT2]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_10_UAT2]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[Bet_ExecRep_NAP_Admin_10_UAT3]    Script Date: 10/24/2022 11:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Bet_ExecRep_NAP_Admin_10_UAT3]
AS
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
BEGIN
	SET NOCOUNT ON
END

GO


--===============================================================================


USE [bodb02]
GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_01_UAT1]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*<info serverAlias="DBTXN-bodb02" executers="" viewers="" isFunction="0"></info>*/
CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_01_UAT1]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_01_UAT2]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_01_UAT2]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_01_UAT3]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_01_UAT3]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_02_UAT1]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_02_UAT1]
	@MatchId INT
	,@Mode VARCHAR(15)
	,@strTransIds VARCHAR(MAX)
	,@EventDate DATETIME = NULL
AS
/*	Creator: Kathy
	Date: 20210218
	Task: Move ticket of cricket
	DB: DBTXN/BODB02

	Revisions:
		- 20210218@Kathy: Move Tickets of Settled Results Functions [Redmine:#148870]
		- 20210930@Louisa: Move running single tickets for E-Sports [Redmine:#159271]
		- 20220110@Kathy: Update winlostdate = eventdate if these values are different [Redmine:#167246]
		- 20220719@Kathy: Scale Out BetTrans [Redmine:#175251]

	Param's Explanation:
		@matchid: child matchid
		@Mode: single
				subparlay
				SingleRunning

*/
BEGIN
	SET NOCOUNT ON

	DECLARE @xml XML
			,@transInfo	XML
			,@IsSiteDB	BIT = 0

	IF OBJECT_ID('SiteDB_SettlementService_CalculationLog','U') IS NOT NULL 
	SET @IsSiteDB = 1

	DECLARE @tmpTrans TABLE (TransID BIGINT PRIMARY KEY, StatusId TINYINT, MainTransId BIGINT, oddsid INT)
	DECLARE @tmpTransInfo TABLE (transId BIGINT
		,winlostdate SMALLDATETIME
		,matchid INT
		,oddsid INT
	)

	SET @xml = CAST(@strTransIds AS XML)

	IF @Mode IN ('Single', 'subParlay' ) -- move ticket for Cricket Test match
	BEGIN
		INSERT INTO @tmpTrans (TransID, StatusId, MainTransId)
		SELECT	T.C.value('./@t', 'bigint') AS transid
				,T.C.value('./@s', 'tinyint') AS statusId
				,T.C.value('./@mt', 'bigint') AS maintransid
		FROM	@xml.nodes('/root/r') AS T(C)
		OPTION (OPTIMIZE FOR (@xml = NULL ))

		IF @Mode = 'Single'
		BEGIN
			-- bettrans
			DELETE @tmpTransInfo

			UPDATE	b WITH(ROWLOCK, UPDLOCK)
				SET matchid = @MatchId
					,winlostdate = CASE WHEN @EventDate IS NOT NULL AND winlostdate <> @EventDate THEN @EventDate ELSE winlostdate END
				OUTPUT	inserted.transid
					,inserted.matchid
					,inserted.winlostdate
				INTO @tmpTransInfo (
					transId
					,matchid
					,winlostdate
				)
			FROM	@tmpTrans t
				INNER JOIN dbo.bettrans b
					ON	t.TransID = b.transid

			IF @IsSiteDB = 1 AND EXISTS (SELECT TOP 1 1 FROM @tmpTransInfo)
			BEGIN
				SET @transInfo = (
					SELECT	transId AS '@t'
							,matchid AS '@mid'
							,winlostdate AS '@wld'
					
					FROM	@tmpTransInfo
					FOR XML PATH('r'),ROOT('root'), TYPE
				)

				INSERT INTO dbo.SiteDB_SettlementService_CalculationLog (SystemName, FunctionName, TableName, MatchId, TransInfo)
				VALUES ('Settlement', 'MoveTicket', 'bettrans', @MatchId, @transInfo)	
				
			END

			IF EXISTS (SELECT TOP 1 1 FROM @tmpTrans WHERE StatusId = 102)
			BEGIN
				IF OBJECT_ID('zzzbettrans','U') IS NOT NULL 
				BEGIN
					DELETE @tmpTransInfo
					
					UPDATE	zb WITH(ROWLOCK, UPDLOCK)
						SET matchid = @MatchId
						OUTPUT	inserted.transid
							,inserted.matchid
						INTO @tmpTransInfo (
							transId
							,matchid
						)
					FROM	@tmpTrans t
						INNER JOIN dbo.zzzbettrans zb
							ON	t.TransID = zb.transId
					WHERE	t.StatusId = 102

					IF @IsSiteDB = 1 AND EXISTS (SELECT TOP 1 1 FROM @tmpTransInfo)
					BEGIN
						SET @transInfo = (
							SELECT	transId AS '@t'
									,matchid AS '@mid'
									,winlostdate AS '@wld'
					
							FROM	@tmpTransInfo
							FOR XML PATH('r'),ROOT('root'), TYPE
						)

						INSERT INTO dbo.SiteDB_SettlementService_CalculationLog (SystemName, FunctionName, TableName, MatchId, TransInfo)
						VALUES ('Settlement', 'MoveTicket', 'zzzbettrans', @MatchId, @transInfo)	
					
					END
				END
			END
		END

		ELSE IF @Mode = 'subParlay'
		BEGIN
			-- bettransM
			DELETE @tmpTransInfo

			UPDATE	bm WITH(UPDLOCK, ROWLOCK)
				SET matchid = @MatchId
					,winlostdate = CASE 
										WHEN winlostdate IS NULL THEN winlostdate
										WHEN @EventDate IS NOT NULL AND winlostdate <> @EventDate THEN @EventDate 
										ELSE winlostdate 
									END
				OUTPUT	inserted.transid
					,inserted.matchid
					,inserted.winlostdate
				INTO @tmpTransInfo (
					transId
					,matchid
					,winlostdate
				)
			FROM	@tmpTrans t
				INNER JOIN dbo.bettransm bm 
					ON	bm.transid = t.transid
			
			IF @IsSiteDB = 1 AND EXISTS (SELECT TOP 1 1 FROM @tmpTransInfo) 
			BEGIN
				SET @transInfo = (
					SELECT	transId AS '@t'
							,matchid AS '@mid'
							,winlostdate AS '@wld'
					
					FROM	@tmpTransInfo
					FOR XML PATH('r'),ROOT('root'), TYPE
				)

				INSERT INTO dbo.SiteDB_SettlementService_CalculationLog (SystemName, FunctionName, TableName, MatchId, TransInfo)
				VALUES ('Settlement', 'MoveTicket', 'bettransm', @MatchId, @transInfo)	
						
			END

			-- BetParlayDetail
			IF OBJECT_ID('BetParlayDetail','U') IS NOT NULL 
			BEGIN
				DELETE @tmpTransInfo

				UPDATE	d  WITH(ROWLOCK, UPDLOCK)
					SET matchid = @MatchId
					OUTPUT	inserted.transid
						,inserted.matchid
					INTO @tmpTransInfo (
						transId
						,matchid
					)
				FROM	@tmpTrans t
					INNER JOIN dbo.BetParlayDetail d
						ON	d.transid = t.TransId

				IF @IsSiteDB = 1 AND EXISTS (SELECT TOP 1 1 FROM @tmpTransInfo) 
				BEGIN
					SET @transInfo = (
						SELECT	transId AS '@t'
								,matchid AS '@mid'
								
						FROM	@tmpTransInfo
						FOR XML PATH('r'),ROOT('root'), TYPE
					)

					INSERT INTO dbo.SiteDB_SettlementService_CalculationLog (SystemName, FunctionName, TableName, MatchId, TransInfo)
					VALUES ('Settlement', 'MoveTicket', 'BetParlayDetail', @MatchId, @transInfo)	
						
				END
			END

			IF EXISTS (SELECT TOP 1 1 FROM @tmpTrans WHERE StatusId = 102)
			BEGIN
				IF OBJECT_ID('zzzbettrans','U') IS NOT NULL 
				BEGIN
					DELETE @tmpTransInfo

					UPDATE	zb WITH(ROWLOCK, UPDLOCK)
						SET matchid = @MatchId
						OUTPUT	inserted.transid
							,inserted.matchid
						INTO @tmpTransInfo (
							transId
							,matchid
						)
					FROM	@tmpTrans t
						INNER JOIN dbo.zzzbettrans zb
							ON	t.TransID = zb.transId
					WHERE	t.StatusId = 102

					IF @IsSiteDB = 1 AND EXISTS (SELECT TOP 1 1 FROM @tmpTransInfo)
					BEGIN
						SET @transInfo = (
							SELECT	transId AS '@t'
									,matchid AS '@mid'
								
							FROM	@tmpTransInfo
							FOR XML PATH('r'),ROOT('root'), TYPE
						)

						INSERT INTO dbo.SiteDB_SettlementService_CalculationLog (SystemName, FunctionName, TableName, MatchId, TransInfo)
						VALUES ('Settlement', 'MoveTicket', 'zzzbettrans', @MatchId, @transInfo)	
						
					END
				END

				IF OBJECT_ID('zzzbettransm','U') IS NOT NULL 
				BEGIN
					DELETE @tmpTransInfo

					UPDATE zbm WITH(ROWLOCK, UPDLOCK)
						SET matchid = @MatchId
						OUTPUT	inserted.transid
							,inserted.matchid
						INTO @tmpTransInfo (
							transId
							,matchid
						)
					FROM	@tmpTrans t
						INNER JOIN dbo.zzzbettransm zbm
							ON	t.TransID = zbm.transId
					WHERE	t.StatusId = 102

					IF @IsSiteDB = 1 AND EXISTS (SELECT TOP 1 1 FROM @tmpTransInfo) 
					BEGIN
						SET @transInfo = (
							SELECT	transId AS '@t'
									,matchid AS '@mid'
								
							FROM	@tmpTransInfo
							FOR XML PATH('r'),ROOT('root'), TYPE
						)

						INSERT INTO dbo.SiteDB_SettlementService_CalculationLog (SystemName, FunctionName, TableName, MatchId, TransInfo)
						VALUES ('Settlement', 'MoveTicket', 'zzzbettransm', @MatchId, @transInfo)	
							
					END
				END

				--sitedb not exists table TicketVoiding_VoidedTransaction'
				IF @IsSiteDB = 1
					BEGIN
						SET @transInfo = (
							SELECT	MainTransId AS '@t'
									,@MatchId AS '@mid'							
							FROM	@tmpTrans
							WHERE	StatusId = 102
							FOR XML PATH('r'),ROOT('root'), TYPE
						)
						INSERT INTO dbo.SiteDB_SettlementService_CalculationLog (SystemName, FunctionName, TableName, MatchId, TransInfo)
						VALUES ('Settlement', 'MoveTicket', 'TicketVoiding_VoidedTransaction', @MatchId, @transInfo)		
								
					END

				IF @IsSiteDB = 0 AND OBJECT_ID('TicketVoiding_VoidedTransaction','U') IS NOT NULL 
				BEGIN
					DELETE @tmpTransInfo

					UPDATE	vt WITH(ROWLOCK, UPDLOCK)
						SET matchid = @MatchId
						OUTPUT	inserted.transid
							,inserted.matchid
						INTO @tmpTransInfo (
							transId
							,matchid
						)
					FROM	@tmpTrans t
						INNER JOIN dbo.TicketVoiding_VoidedTransaction vt
							ON	t.MainTransId = vt.transId			
				END

			END
		END
	END

	ELSE IF @Mode = 'SingleRunning' -- Move single running ticket for E-SPorts
	BEGIN
		INSERT INTO @tmpTrans (TransID, oddsid)
		SELECT	T.C.value('./@t', 'bigint') AS transid
				,T.C.value('./@o', 'int') AS oddsid
		FROM	@xml.nodes('/root/r') AS T(C)
		OPTION (OPTIMIZE FOR (@xml = NULL ))

		UPDATE	b WITH(ROWLOCK, UPDLOCK)
			SET matchid = @MatchId
				,oddsid = t.oddsid
			OUTPUT	inserted.transid
				,inserted.matchid
				,inserted.oddsid
			INTO @tmpTransInfo (
				transId
				,matchid
				,oddsid
			)
		FROM	@tmpTrans t
			INNER JOIN dbo.bettrans b
				ON	t.TransID = b.transid

		IF @IsSiteDB = 1 AND EXISTS (SELECT TOP 1 1 FROM @tmpTransInfo) 
		BEGIN		
			SET @transInfo = (
				SELECT	transId AS '@t'
						,matchid AS '@mid'
						,oddsid AS '@oid'
									
				FROM	@tmpTransInfo
				FOR XML PATH('r'),ROOT('root'), TYPE
			)

			INSERT INTO dbo.SiteDB_SettlementService_CalculationLog (SystemName, FunctionName, TableName, MatchId, TransInfo)
			VALUES ('Settlement', 'MoveOdds', 'bettrans', @MatchId, @transInfo)							
		END
	END
	
END
GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_02_UAT2]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_02_UAT2]
	@MatchId INT
	,@Mode VARCHAR(15)
	,@strTransIds VARCHAR(MAX)
AS
/*	Creator: Kathy
	Date: 20210218
	Task: Move ticket of cricket
	DB: DBTXN/BODB02

	Revisions:
		- 20210218@Kathy: Move Tickets of Settled Results Functions [Redmine:#148870]
		- 20210930@Louisa: Move running single tickets for E-Sports [Redmine:#159271]

	Param's Explanation:
		@matchid: child matchid
		@Mode: single
				subparlay
				SingleRunning

*/
BEGIN
	SET NOCOUNT ON
	DECLARE @xml XML

	DECLARE @tmpTrans TABLE (TransID BIGINT PRIMARY KEY, StatusId TINYINT, MainTransId BIGINT, oddsid INT)
	
	SET @xml = CAST(@strTransIds AS XML)

	IF @Mode IN ('Single', 'subParlay' ) -- move ticket for Cricket Test match
	BEGIN
		INSERT INTO @tmpTrans (TransID, StatusId, MainTransId)
		SELECT	T.C.value('./@t', 'bigint') AS transid
				,T.C.value('./@s', 'tinyint') AS statusId
				,T.C.value('./@mt', 'bigint') AS maintransid
		FROM	@xml.nodes('/root/r') AS T(C)
		OPTION (OPTIMIZE FOR (@xml = NULL ))

		IF @Mode = 'Single'
		BEGIN
			-- bettrans
			UPDATE	b WITH(ROWLOCK, UPDLOCK)
				SET matchid = @MatchId
			FROM	@tmpTrans t
				INNER JOIN dbo.bettrans b
					ON	t.TransID = b.transid

			IF EXISTS (SELECT TOP 1 1 FROM @tmpTrans WHERE StatusId = 102)
			BEGIN
				IF OBJECT_ID('zzzbettrans','U') IS NOT NULL 
					UPDATE	zb WITH(ROWLOCK, UPDLOCK)
						SET matchid = @MatchId
					FROM	@tmpTrans t
						INNER JOIN dbo.zzzbettrans zb
							ON	t.TransID = zb.transId
					WHERE	t.StatusId = 102
			END
		END

		ELSE IF @Mode = 'subParlay'
		BEGIN
			-- bettransM
			UPDATE	bm WITH(UPDLOCK, ROWLOCK)
				SET matchid = @MatchId
			FROM	@tmpTrans t
				INNER JOIN dbo.bettransm bm 
					ON	bm.transid = t.transid

			-- BetParlayDetail
			IF OBJECT_ID('BetParlayDetail','U') IS NOT NULL 
				UPDATE	d  WITH(ROWLOCK, UPDLOCK)
					SET matchid = @MatchId
				FROM	@tmpTrans t
					INNER JOIN dbo.BetParlayDetail d
						ON	d.transid = t.TransId

			IF EXISTS (SELECT TOP 1 1 FROM @tmpTrans WHERE StatusId = 102)
			BEGIN
				IF OBJECT_ID('zzzbettrans','U') IS NOT NULL 
					UPDATE	zb WITH(ROWLOCK, UPDLOCK)
						SET matchid = @MatchId
					FROM	@tmpTrans t
						INNER JOIN dbo.zzzbettrans zb
							ON	t.TransID = zb.transId
					WHERE	t.StatusId = 102

				IF OBJECT_ID('zzzbettransm','U') IS NOT NULL 
					UPDATE zbm WITH(ROWLOCK, UPDLOCK)
						SET matchid = @MatchId
					FROM	@tmpTrans t
						INNER JOIN dbo.zzzbettransm zbm
							ON	t.TransID = zbm.transId
					WHERE	t.StatusId = 102

				IF OBJECT_ID('TicketVoiding_VoidedTransaction','U') IS NOT NULL 
				BEGIN
					UPDATE	vt WITH(ROWLOCK, UPDLOCK)
						SET matchid = @MatchId
					FROM	@tmpTrans t
						INNER JOIN dbo.TicketVoiding_VoidedTransaction vt
							ON	t.MainTransId = vt.transId
					WHERE	t.StatusId = 102

				END
			END
		END
	END

	ELSE IF @Mode = 'SingleRunning' -- Move single running ticket for E-SPorts
	BEGIN
		INSERT INTO @tmpTrans (TransID, oddsid)
		SELECT	T.C.value('./@t', 'bigint') AS transid
				,T.C.value('./@o', 'int') AS oddsid
		FROM	@xml.nodes('/root/r') AS T(C)
		OPTION (OPTIMIZE FOR (@xml = NULL ))

		UPDATE	b WITH(ROWLOCK, UPDLOCK)
				SET matchid = @MatchId
					,oddsid = t.oddsid
			FROM	@tmpTrans t
				INNER JOIN dbo.bettrans b
					ON	t.TransID = b.transid
	END
	
END
GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_02_UAT3]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_02_UAT3]
	@MatchId INT
	,@Mode VARCHAR(15)
	,@strTransIds VARCHAR(MAX)
AS
/*	Creator: Kathy
	Date: 20210218
	Task: Move ticket of cricket
	DB: DBTXN/BODB02

	Revisions:
		- 20210218@Kathy: Move Tickets of Settled Results Functions [Redmine:#148870]

	Param's Explanation:
		@matchid: child matchid
		@Mode: single
				subparlay
*/
BEGIN
	SET NOCOUNT ON
	DECLARE @xml XML

	DECLARE @tmpTrans TABLE (TransID BIGINT PRIMARY KEY, StatusId TINYINT, MainTransId BIGINT)
	
	SET @xml = CAST(@strTransIds AS XML)

	INSERT INTO @tmpTrans (TransID, StatusId, MainTransId)
	SELECT	T.C.value('./@t', 'bigint') AS transid
			,T.C.value('./@s', 'tinyint') AS statusId
			,T.C.value('./@mt', 'bigint') AS maintransid
	FROM	@xml.nodes('/root/r') AS T(C)
	OPTION (OPTIMIZE FOR (@xml = NULL ))

	IF @Mode = 'Single'
	BEGIN
		-- bettrans
		UPDATE	b WITH(ROWLOCK, UPDLOCK)
			SET matchid = @MatchId
		FROM	@tmpTrans t
			INNER JOIN dbo.bettrans b
				ON	t.TransID = b.transid

		IF EXISTS (SELECT TOP 1 1 FROM @tmpTrans WHERE StatusId = 102)
		BEGIN
			IF OBJECT_ID('zzzbettrans','U') IS NOT NULL 
				UPDATE	zb WITH(ROWLOCK, UPDLOCK)
					SET matchid = @MatchId
				FROM	@tmpTrans t
					INNER JOIN dbo.zzzbettrans zb
						ON	t.TransID = zb.transId
				WHERE	t.StatusId = 102
		END
	END
	ELSE IF @Mode = 'subParlay'
	BEGIN
		-- bettransM
		UPDATE	bm WITH(UPDLOCK, ROWLOCK)
			SET matchid = @MatchId
		FROM	@tmpTrans t
			INNER JOIN dbo.bettransm bm 
				ON	bm.transid = t.transid

		-- BetParlayDetail
		IF OBJECT_ID('BetParlayDetail','U') IS NOT NULL 
			UPDATE	d  WITH(ROWLOCK, UPDLOCK)
				SET matchid = @MatchId
			FROM	@tmpTrans t
				INNER JOIN dbo.BetParlayDetail d
					ON	d.transid = t.TransId

		IF EXISTS (SELECT TOP 1 1 FROM @tmpTrans WHERE StatusId = 102)
		BEGIN
			IF OBJECT_ID('zzzbettrans','U') IS NOT NULL 
				UPDATE	zb WITH(ROWLOCK, UPDLOCK)
					SET matchid = @MatchId
				FROM	@tmpTrans t
					INNER JOIN dbo.zzzbettrans zb
						ON	t.TransID = zb.transId
				WHERE	t.StatusId = 102

			IF OBJECT_ID('zzzbettransm','U') IS NOT NULL 
				UPDATE zbm WITH(ROWLOCK, UPDLOCK)
					SET matchid = @MatchId
				FROM	@tmpTrans t
					INNER JOIN dbo.zzzbettransm zbm
						ON	t.TransID = zbm.transId
				WHERE	t.StatusId = 102

			IF OBJECT_ID('TicketVoiding_VoidedTransaction','U') IS NOT NULL 
			BEGIN
				UPDATE	vt WITH(ROWLOCK, UPDLOCK)
					SET matchid = @MatchId
				FROM	@tmpTrans t
					INNER JOIN dbo.TicketVoiding_VoidedTransaction vt
						ON	t.MainTransId = vt.transId
				WHERE	t.StatusId = 102

			END
		END
	END
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_03_UAT1]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_03_UAT1] 
	@transIds	VARCHAR(MAX)
	,@Mode		VARCHAR(20)
	,@MatchId	INT = 0
AS
/*
	Created: 20211130@Kathy.Nguyen	
	Task: New cashout model [Redmine:#164838]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20211130@Kathy: New cashout model [Redmine:#164838]			
		- 20211215@Kathy: Soccer - Include calculate parlay into calculate single tickets process [Redmine:#166072]
		- 20220719@Kathy: Scale Out BetTrans [Redmine:#175251]

	Param's Explanation:  
		   
		@transIds = '<root>
						<r t="104730774034" w="" s=""/>
					</root>'
					t: transid
					s: statuswinlost
					w: winlost
*/ 
BEGIN
	SET NOCOUNT ON
	-----------------------CHECK SERVER-----------------------------------------
	DECLARE @ServerName			SYSNAME 
			,@AllowCalculation	BIT
			,@AllowUndo			BIT
			,@AllowRefund		BIT
			,@IsSiteDB			BIT = 0

	SET @ServerName = @@SERVERNAME

	IF OBJECT_ID('SiteDB_SettlementService_CalculationLog','U') IS NOT NULL 
	SET @IsSiteDB = 1

	IF OBJECT_ID('NAP_Set_ServerAction', 'P') IS NOT NULL
	BEGIN
		EXEC [dbo].[NAP_Set_ServerAction]
			@ServerName			= @ServerName
			,@AllowCalculation	= @AllowCalculation	OUTPUT
			,@AllowUndo			= @AllowUndo OUTPUT
			,@AllowRefund		= @AllowRefund OUTPUT

		IF @AllowCalculation = 0 AND @mode = 'CAL'
			RETURN
		
		IF @AllowUndo = 0 AND @mode = 'UNDO'
			RETURN

		IF @AllowRefund = 0 AND @mode = 'REFUND'
			RETURN

	END

	DECLARE @handle 			INT
			,@statusId			TINYINT
			,@IsUpdated			BIT		
			,@settlementTime	DATETIME
			,@commWinRate		SMALLMONEY
			,@commLostRate		SMALLMONEY
			,@transinfo		XML	

	DECLARE @tempTrans TABLE (TransID BIGINT, statuswinlost TINYINT, winlost MONEY)
	DECLARE @tmpTransInfo TABLE (transId BIGINT
		,statuswinlost TINYINT
		,WinLost MONEY,aWinLost MONEY,mWinLost MONEY,sWinLost MONEY
		,PlayerComm MONEY, Comm MONEY,aComm MONEY,sComm MONEY
		,Status NVARCHAR(10),StatusID TINYINT, FcUpdateTime DATETIME2
		,SettlementTime DATETIME
		,bef_winlost MONEY
		,bef_statusid TINYINT
	)

	---parse XML
	EXEC sp_xml_preparedocument @handle OUTPUT, @transIds
	INSERT INTO @tempTrans(TransID, statuswinlost, winlost)
	SELECT t, s, w
	FROM OPENXML(@handle,'root/r',1) WITH(t   BIGINT
										 ,s   TINYINT
										 ,w	  MONEY
									) tbl
	EXEC sp_xml_removedocument @handle

	SET	@IsUpdated = 0
	SET @SettlementTime = GETDATE()

	UPDATE b
		SET @StatusId = CASE	
							WHEN b.statusID = 102 THEN 102
							WHEN t.statuswinlost = 6 THEN 103
							WHEN b.actual_stake < t.Winlost THEN 112
							WHEN b.actual_stake = t.Winlost THEN 111
							ELSE 113
						END
			,@IsUpdated = CASE WHEN b.statusID = 103 OR @StatusId = 103 THEN 1 ELSE 0 END
			,@commWinRate = CASE b.comstatus -- 0 : pay normal, both win/lost -- 1 : pay 'double' ONLY on lost
								WHEN '0' THEN 1
								WHEN '1' THEN 0
								ELSE 1 END
			,@commLostRate = CASE b.comstatus
								WHEN '0' THEN 1
								WHEN '1' THEN 2
								ELSE 1 END
			,statusID = CASE WHEN @IsUpdated = 1 THEN @StatusId ELSE b.statusID END
			,winlost = CASE 
							WHEN @IsUpdated = 1 
								THEN CASE WHEN @StatusId = 103 THEN b.actual_stake ELSE t.Winlost END 
							ELSE b.winlost 
						END
			,awinlost = CASE
							WHEN @IsUpdated = 0 THEN b.awinlost
							WHEN @StatusId = 103 THEN 0
							WHEN @StatusId = 112 THEN ABS(t.Winlost - b.actual_stake) * -b.apositiontaking
							WHEN @StatusId = 111 THEN 0
							ELSE ABS(t.Winlost - b.actual_stake) * b.apositiontaking
						END
			,mwinlost = CASE
							WHEN @IsUpdated = 0 THEN b.mwinlost
							WHEN @StatusId = 103 THEN 0
							WHEN @StatusId = 112 THEN ABS(t.Winlost - b.actual_stake) * -b.mpositiontaking
							WHEN @StatusId = 111 THEN 0
							ELSE ABS(t.Winlost - b.actual_stake) * b.mpositiontaking
						END
			,swinlost = CASE
							WHEN @IsUpdated = 0 THEN b.swinlost
							WHEN @StatusId = 103 THEN 0
							WHEN @StatusId = 112 THEN ABS(t.Winlost - b.actual_stake) * -b.spositiontaking
							WHEN @StatusId = 111 THEN 0
							ELSE ABS(t.Winlost - b.actual_stake) * b.spositiontaking
						END
			,playercomm = CASE
							WHEN @IsUpdated = 0 THEN b.playercomm
							WHEN @StatusId = 103 THEN 0
							WHEN @StatusId = 112 THEN @commWinRate * b.stake * b.playerdiscount
							WHEN @StatusId = 111 THEN @commWinRate * b.stake * b.playerdiscount
							ELSE @commLostRate * b.stake * b.playerdiscount
						END
			,comm = CASE
						WHEN @IsUpdated = 0 THEN b.comm
						WHEN @StatusId = 103 THEN 0
						WHEN @StatusId = 112 THEN @commWinRate * b.stake * b.discount * (1-apositiontaking)
						WHEN @StatusId = 111 THEN @commWinRate * b.stake * b.discount * (1-apositiontaking)
						ELSE @commLostRate * b.stake * b.discount * (1-apositiontaking)
					END
			,acomm = CASE
						WHEN @IsUpdated = 0 THEN b.acomm
						WHEN @StatusId = 103 THEN 0
						WHEN @StatusId = 112 THEN @commWinRate * b.stake * b.adiscount * (1-apositiontaking - mpositiontaking)
						WHEN @StatusId = 111 THEN @commWinRate * b.stake * b.adiscount * (1-apositiontaking - mpositiontaking)
						ELSE @commLostRate * b.stake * b.adiscount * (1-apositiontaking - mpositiontaking)
					END
			,scomm = CASE
						WHEN @IsUpdated = 0 THEN b.scomm
						WHEN @StatusId = 103 THEN 0
						WHEN @StatusId = 112 THEN @commWinRate * b.stake * b.sdiscount * (1-apositiontaking - mpositiontaking - spositiontaking)
						WHEN @StatusId = 111 THEN @commWinRate * b.stake * b.sdiscount * (1-apositiontaking - mpositiontaking - spositiontaking)
						ELSE @commLostRate * b.stake * b.sdiscount * (1-apositiontaking - mpositiontaking - spositiontaking)
					END
			,status = CASE 
						WHEN @IsUpdated = 0 THEN b.status
						WHEN @StatusId = 103 THEN 'Refund'
						WHEN @StatusId = 112 THEN 'WON'
						WHEN @StatusId = 111 THEN 'DRAW'
						ELSE 'LOSE'
					END
			,statuswinlost = t.statuswinlost
			,SettlementTime = CASE 
								WHEN @IsUpdated = 0 THEN b.SettlementTime
								ELSE CASE WHEN b.winlost <> t.Winlost OR b.statusID <> @StatusId THEN @settlementTime ELSE SettlementTime END
								END	
			,FcUpdateTime = CASE WHEN @statusId = 103 AND b.statusID <> 103 THEN SYSDATETIME() ELSE FcUpdateTime END
		OUTPUT	inserted.transid
			,inserted.statuswinlost
			,inserted.WinLost,inserted.aWinLost,inserted.mWinLost,inserted.sWinLost
			,inserted.PlayerComm,inserted.Comm,inserted.aComm,inserted.sComm
			,inserted.Status,inserted.StatusID
			,CASE WHEN inserted.SettlementTime <> ISNULL(deleted.SettlementTime,'') THEN inserted.SettlementTime ELSE NULL END
			,CASE WHEN inserted.FcUpdateTime <> deleted.FcUpdateTime THEN inserted.FcUpdateTime ELSE NULL END	
			,deleted.winlost
			,deleted.statusid		
		INTO @tmpTransInfo (
			transId
			,statuswinlost,WinLost,aWinLost
			,mWinLost,sWinLost,PlayerComm,Comm,aComm,sComm,Status,StatusID, SettlementTime, FcUpdateTime
			,bef_winlost, bef_statusid
		)
	FROM	dbo.bettrans b WITH(ROWLOCK, UPDLOCK)
		INNER JOIN @tempTrans t
			ON b.transid = t.TransId

	IF @IsSiteDB = 1
	BEGIN
		SET @transInfo = (
			SELECT	transId AS '@t'	
					,CASE WHEN statuswinlost IS NULL THEN '' ELSE CAST(statuswinlost AS VARCHAR(1)) END AS '@statuswl' 					
					,WinLost AS '@w' 
					,aWinLost AS '@aw' 
					,mWinLost AS '@mw' 
					,sWinLost AS '@sw' 
					,PlayerComm AS '@pc' 
					,Comm AS '@c' 
					,aComm AS '@ac' 
					,sComm AS '@sc' 
					,Status AS '@s' 
					,StatusID AS '@sid' 
					,FcUpdateTime AS '@rut' 
					,SettlementTime AS '@st'
					,bef_winlost AS '@bef_w' 
					,bef_statusid AS '@bef_sid' 
					
			FROM	@tmpTransInfo
			FOR XML PATH('r'),ROOT('root'), TYPE
		)
	
		INSERT INTO dbo.SiteDB_SettlementService_CalculationLog (SystemName, FunctionName, TableName, MatchId, TransInfo, SettlementAction, TicketType)
		SELECT 'Settlement', 'CalculateCashout', 'bettrans', @MatchId, @transInfo, @Mode, 's'
		WHERE @transInfo IS NOT NULL
		
	END
END
GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_03_UAT2]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_03_UAT2]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_03_UAT3]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_03_UAT3]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_04_UAT1]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

---------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_04_UAT1]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/	
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_04_UAT2]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_04_UAT2]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/	
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_04_UAT3]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_04_UAT3]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/	
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_05_UAT1]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

---------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_05_UAT1]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/	
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_05_UAT2]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_05_UAT2]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/	
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_05_UAT3]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_05_UAT3]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/	
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_06_UAT1]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------------------

CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_06_UAT1]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_06_UAT2]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_06_UAT2]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_06_UAT3]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_06_UAT3]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_07_UAT1]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-----------------------------------------------------

CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_07_UAT1]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_07_UAT2]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_07_UAT2]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_07_UAT3]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_07_UAT3]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_08_UAT1]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--------------------------------------------------------------

CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_08_UAT1]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_08_UAT2]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_08_UAT2]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_08_UAT3]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_08_UAT3]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_09_UAT1]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------------

CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_09_UAT1]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_09_UAT2]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_09_UAT2]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_09_UAT3]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_09_UAT3]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_10_UAT1]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_10_UAT1]
	@Winlostdate SMALLDATETIME = NULL
	,@Target VARCHAR(30) = 'DBTXN' -- DBTRANS/REPLICATED
	,@TableName VARCHAR(200) 
	,@isSiteDB BIT = 0
AS 

/*
	Created by: 20201006@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: SP for Settlement [Redmine:#140452]		
		- 20220801@Sophia: Scale out DB, borrow SPs for UAT test ExecRep_00 [RedmineID: #175253]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep
*/	
BEGIN
	SET NOCOUNT ON

	IF @Winlostdate IS NULL RETURN
	IF @Target NOT IN ('DBTXN', 'REPLICATED') RETURN
	
	DECLARE @SiteDBGroupID INT	
	SELECT @SiteDBGroupID = dbo.f_Get_SiteDBGroupID ()	 
	
	-- Check Central DBTRANS
	IF @Target = 'DBTXN' AND @isSiteDB = 0 AND @SiteDBGroupID <> 0 RETURN
	
	-- Check SiteDB
	IF @Target = 'DBTXN' AND @isSiteDB = 1 AND @SiteDBGroupID IN (0,1023) RETURN
	
	--Check replicated server
	IF @Target = 'REPLICATED' AND @SiteDBGroupID < 1023 RETURN
	
	
	IF OBJECT_ID (@TableName, N'U') IS NULL RETURN
	
	--CREATE TABLE #tmp (transid BIGINT, actualrate FLOAT, virtualrate FLOAT)

	CREATE TABLE #bettrans (transid BIGINT, actualrate FLOAT, virtualrate FLOAT, old_actualrate FLOAT)
	CREATE TABLE #translog (transid BIGINT, actualrate FLOAT, virtualrate FLOAT)
	CREATE TABLE #bettransRnG (transid BIGINT, actualrate FLOAT, virtualrate FLOAT)
	CREATE TABLE #bettransLC (transid BIGINT, actualrate FLOAT, virtualrate FLOAT)
	CREATE TABLE #Transfer_Coll (transid BIGINT, actualrate FLOAT)
	CREATE TABLE #bettransG (transid BIGINT, actualrate FLOAT, virtualrate FLOAT)
	CREATE TABLE #transfer (transid BIGINT, actualrate FLOAT)
	CREATE TABLE #CashOutSelling (transid BIGINT, virtualrate FLOAT)
	CREATE CLUSTERED INDEX ix_bettrans ON #bettrans (transid)

	IF @Target = 'DBTXN' AND @SiteDBGroupID < 1023    --- Run at Central DBTrans and SiteDBGroupID
	BEGIN
		IF @TableName = 'bettrans' --bettrans@dbtrans
		BEGIN
			-- update for SB's tickets (using virtualrate)
			INSERT INTO #bettrans(transid, actualrate, virtualrate, old_actualrate)
			SELECT transid, e.actualrate, e.actualrate*(b.virtualrate/b.actualrate) AS virtualrate, b.actualrate
			FROM dbo.bettrans b WITH(NOLOCK) 
				INNER JOIN CustDB.dbo.exchange e WITH (NOLOCK) ON b.currency = e.exchangeid
			WHERE b.actualrate <> e.actualrate AND b.winlostdate >= @Winlostdate 
				AND (b.bettype <= 30 OR b.bettype BETWEEN 50 AND 19998) AND b.actualrate <> b.virtualrate
			 
			-- update for SB's tickets (without virtualrate)
			INSERT INTO #bettrans(transid, actualrate, virtualrate, old_actualrate)
			SELECT transid, e.actualrate, e.actualrate, b.actualrate 
			FROM dbo.bettrans b WITH(NOLOCK) 
				,CustDB.dbo.exchange e WITH (NOLOCK)
			WHERE b.currency = e.exchangeid AND b.actualrate <> e.actualrate 
				AND b.winlostdate >= @Winlostdate AND (b.bettype <= 30 OR b.bettype BETWEEN 50 AND 19998) 
				AND b.actualrate = b.virtualrate

			INSERT INTO #bettrans(transid, actualrate, virtualrate, old_actualrate)
			SELECT transid, e.actualrate, e.actualrate, b.actualrate 
			FROM dbo.bettrans b WITH(NOLOCK) 
				,CustDB.dbo.exchange e WITH (NOLOCK)
			WHERE b.currency = e.exchangeid AND b.actualrate <> e.actualrate 
				AND b.winlostdate >= @Winlostdate AND b.bettype BETWEEN 31 AND 49 
				AND b.actualrate = b.virtualrate AND b.currency2 IS NULL

			--==	
			INSERT INTO #bettrans(transid, actualrate, virtualrate, old_actualrate)
			SELECT transid, e.actualrate, b.virtualrate, b.actualrate
			FROM dbo.bettrans b WITH(NOLOCK) 
				,CustDB.dbo.exchange e WITH (NOLOCK)
			WHERE b.currency = e.exchangeid AND b.actualrate <> e.actualrate 
				AND b.winlostdate >= @Winlostdate AND b.bettype BETWEEN 31 AND 49 AND b.currency2 IS NOT NULL

			IF OBJECT_ID ('CashOutSelling', N'U') IS NOT NULL
			BEGIN
				INSERT INTO #CashOutSelling (transid, virtualrate)
				SELECT b.transid, b.actualrate * (co.VirtualRate/b.old_actualrate)
				FROM dbo.CashOutSelling co WITH(NOLOCK)
					INNER JOIN #bettrans b ON b.transid = co.TransID
			END
		END
		
		IF @TableName = 'translog'  --translog@dbtrans
		BEGIN
			-- update for TransLog table (using virtualrate)
			INSERT INTO #translog(transid, actualrate, virtualrate)
			SELECT translogid, e.actualrate, e.actualrate*(b.virtualrate/b.actualrate) as virtualrate
			FROM dbo.TransLog b WITH(NOLOCK) 				
				INNER JOIN CustDB.dbo.exchange e WITH (NOLOCK) ON b.currency = e.exchangeid 
			WHERE b.winlostdate >= @Winlostdate
				AND b.actualrate <> e.actualrate 				
			 
		END

		IF @TableName = 'bettransRnG' --bettransRnG@dbtrans
		BEGIN
			-- update for BettransRNG table (using virtualrate)
			INSERT INTO #bettransRnG(transid, actualrate, virtualrate)
			SELECT transid, e.actualrate, e.actualrate*(b.virtualrate/b.actualrate) as virtualrate
			FROM dbo.BettransRNG b WITH(NOLOCK) 				
				INNER JOIN CustDB.dbo.exchange e WITH (NOLOCK) ON b.currency = e.exchangeid 
			WHERE b.winlostdate >= @Winlostdate
				AND b.actualrate <> e.actualrate 				
				 
		END
		
		IF @TableName = 'bettransLC' --bettransLC@dbtrans
		BEGIN
			-- update for BettransLC table (using virtualrate)
			INSERT INTO #bettransLC(transid, actualrate, virtualrate)
			select transid, e.actualrate, e.actualrate*(b.virtualrate/b.actualrate) as virtualrate
			FROM dbo.BettransLC b WITH(NOLOCK) 				
				INNER JOIN CustDB.dbo.exchange e WITH (NOLOCK) ON b.currency = e.exchangeid 
			WHERE b.winlostdate >= @Winlostdate
				AND b.actualrate <> e.actualrate 
		END
		 
		IF @TableName = 'Transfer_Coll' --transfer_coll@dbtrans
		BEGIN
			-- Transfer_Coll tickets
			INSERT INTO #Transfer_Coll(transid, actualrate)
			SELECT b.transid, e.actualrate
			FROM dbo.Transfer_Coll b WITH(NOLOCK) 
				,CustDB.dbo.exchange e WITH (NOLOCK)
			WHERE b.currency = e.exchangeid AND b.actualrate <> e.actualrate 
				AND b.winlostdate >= @Winlostdate AND b.bettype >= 19001
		END
		
		IF @TableName = 'bettransG' --bettransG@dbtrans
		BEGIN
			-- update for bettransG table 
			INSERT INTO #bettransG(transid, actualrate, virtualrate)
			SELECT b.transid, e.actualrate, e.actualrate * (b.virtualrate / b.actualrate) AS virtualrate
			FROM dbo.bettransG b WITH(NOLOCK)
				INNER JOIN CustDB.dbo.CustInfo c WITH (NOLOCK) ON c.custid = b.custid
				INNER JOIN CustDB.dbo.exchange e WITH (NOLOCK)  ON e.exchangeid = c.currency	
			WHERE b.winlostdate >= @Winlostdate AND b.actualrate <> e.actualrate
		END

		IF @TableName = 'Transfer' --Transfer@dbtrans
		BEGIN
			-- update for transfer table 
			INSERT INTO #transfer(transid, actualrate)
			SELECT transid, e.actualrate
			FROM dbo.Transfer b WITH(NOLOCK) 
				,CustDB.dbo.exchange e WITH (NOLOCK)
			WHERE b.currency = e.exchangeid AND b.actualrate <> e.actualrate 
				AND b.winlostdate >= @Winlostdate 
		END
	END
	
	IF @Target = 'REPLICATED' AND @SiteDBGroupID = 1023 
	BEGIN
		IF (
			SELECT COUNT(1)
			FROM sysobjects
			WHERE NAME IN ('custinfo', 'bettrans', 'exchange') AND type = 'U'
		) < 3 RETURN

		IF @TableName = 'bettrans' --bettrans@replicated
		BEGIN
			-- update for SB's tickets (using virtualrate)
			INSERT INTO #bettrans(transid, actualrate, virtualrate, old_actualrate)
			SELECT transid, e.actualrate, e.actualrate*(b.virtualrate/b.actualrate) as virtualrate, b.actualrate
			FROM dbo.bettrans b WITH(NOLOCK) 
				INNER JOIN bodb02.dbo.exchange e WITH (NOLOCK) ON b.currency = e.exchangeid
			WHERE b.actualrate <> e.actualrate AND b.winlostdate >= @Winlostdate 
				AND (b.bettype <= 30 OR b.bettype BETWEEN 50 AND 19998) AND b.actualrate <> b.virtualrate

			-- update for SB's tickets (without virtualrate)
			INSERT INTO #bettrans(transid, actualrate, virtualrate, old_actualrate)
			SELECT transid, e.actualrate, e.actualrate , b.actualrate
			FROM dbo.bettrans b WITH(nolock) 
				,bodb02.dbo.exchange e WITH (NOLOCK)
			WHERE b.currency = e.exchangeid AND b.actualrate <> e.actualrate 
				AND b.winlostdate >= @Winlostdate AND (b.bettype <= 30 OR b.bettype BETWEEN 50 AND 19998) 
				AND b.actualrate = b.virtualrate
 
			--==
			INSERT INTO #bettrans(transid, actualrate, virtualrate, old_actualrate)
			SELECT transid, e.actualrate, e.actualrate, b.actualrate
			FROM dbo.bettrans b WITH(NOLOCK) 
				,bodb02.dbo.exchange e WITH (NOLOCK)
			WHERE b.currency = e.exchangeid AND b.actualrate <> e.actualrate 
				AND b.winlostdate >= @Winlostdate AND b.bettype BETWEEN 31 AND 49 
				AND b.actualrate = b.virtualrate AND b.currency2 IS NULL
 
			-- OPENTOTE tickets
			INSERT INTO #bettrans(transid, actualrate, virtualrate, old_actualrate)
			SELECT transid, e.actualrate, b.virtualrate, b.actualrate
			FROM dbo.bettrans b WITH(NOLOCK) 
				,bodb02.dbo.exchange e WITH (NOLOCK)
			WHERE b.currency = e.exchangeid AND b.actualrate <> e.actualrate 
			AND b.winlostdate >= @Winlostdate AND b.bettype BETWEEN 31 AND 49 AND b.currency2 IS NOT NULL

			IF OBJECT_ID ('CashOutSelling', N'U') IS NOT NULL
			BEGIN
				INSERT INTO #CashOutSelling (transid, virtualrate)
				SELECT b.transid, b.actualrate * (co.VirtualRate/b.old_actualrate)
				FROM dbo.CashOutSelling co WITH(NOLOCK)
					INNER JOIN #bettrans b ON b.transid = co.TransID
			END
		END
		
		IF @TableName = 'translog' --translog@replicated
		BEGIN
			-- update for TransLog table (using virtualrate)
			INSERT INTO #translog(transid, actualrate, virtualrate)
			SELECT translogid, e.actualrate, e.actualrate*(b.virtualrate/b.actualrate) AS virtualrate
			FROM dbo.TransLog b WITH(NOLOCK) 			
				INNER JOIN bodb02.dbo.exchange e WITH (NOLOCK) ON b.currency = e.exchangeid 
			WHERE b.winlostdate >= @Winlostdate
				AND b.actualrate <> e.actualrate 				
			 
		END
		
		IF @TableName = 'bettransRnG' --bettransRnG@replicated
		BEGIN
			-- update for BettransRNG table (using virtualrate)
			INSERT INTO #bettransRnG(transid, actualrate, virtualrate)
			SELECT transid, e.actualrate, e.actualrate*(b.virtualrate/b.actualrate) AS virtualrate
			FROM dbo.BettransRNG b WITH(NOLOCK) 			
				INNER JOIN bodb02.dbo.exchange e WITH (NOLOCK) ON b.currency = e.exchangeid 
			WHERE b.winlostdate >= @Winlostdate
				AND b.actualrate <> e.actualrate 				
		END
		
		IF @TableName = 'bettransLC' --bettransLC@replicated
		BEGIN
			-- update for BettransLC table (using virtualrate)
			INSERT INTO #bettransLC(transid, actualrate, virtualrate)
			SELECT transid, e.actualrate, e.actualrate*(b.virtualrate/b.actualrate) as virtualrate
			FROM dbo.BettransLC b WITH(NOLOCK) 				
				INNER JOIN bodb02.dbo.exchange e WITH (NOLOCK) ON b.currency = e.exchangeid 
			WHERE b.winlostdate >= @Winlostdate
				AND b.actualrate <> e.actualrate 	 
		END
		
		IF @TableName = 'Transfer_Coll' --transfer_coll@replicated
		BEGIN 
			INSERT INTO #Transfer_Coll(transid, actualrate)
			select b.transid, e.actualrate 
			FROM dbo.Transfer_Coll b WITH(NOLOCK) 
				,dbo.exchange e WITH (NOLOCK)
			WHERE b.currency = e.exchangeid AND b.actualrate <> e.actualrate 
				AND b.winlostdate >= @Winlostdate AND b.bettype >= 19001
		END
		
		IF @TableName = 'bettransG' --bettransG@replicated
		BEGIN
			-- update for bettransG table 
			INSERT INTO #bettransG(transid, actualrate, virtualrate)
			SELECT b.transid, e.actualrate, e.actualrate * (b.virtualrate / b.actualrate) AS virtualrate
			FROM dbo.bettransG b WITH (NOLOCK)
				INNER JOIN bodb02.dbo.CustInfo c WITH (NOLOCK) ON b.custid = c.custid
				INNER JOIN bodb02.dbo.exchange e WITH (NOLOCK) ON e.exchangeid = c.currency
			WHERE b.winlostdate >= @winlostdate
				  AND b.actualrate <> e.actualrate
		END  

		IF @TableName = 'Transfer' --Transfer@replicated
		BEGIN
			-- update for transfer table 
			INSERT INTO #transfer(transid, actualrate)
			SELECT transid, e.actualrate
			FROM dbo.Transfer b WITH(NOLOCK) 
				,bodb02.dbo.exchange e WITH (NOLOCK)
			WHERE b.currency = e.exchangeid AND b.actualrate <> e.actualrate 
				AND b.winlostdate >= @Winlostdate 
		END
	END 
	
	
	DECLARE @__table TABLE (transid BIGINT, actualrate FLOAT, virtualrate FLOAT)
	DECLARE @rowcount INT = 1
	
	IF @TableName = 'bettransRnG' --update bettransRnG
	BEGIN
		SET @rowcount = 1
		WHILE @rowcount <> 0
		BEGIN
			DELETE FROM @__table
		
			DELETE TOP(2000) FROM #bettransRnG
			OUTPUT deleted.transid, deleted.actualrate, deleted.virtualrate INTO @__table
			SET @rowcount = @@ROWCOUNT
		
			UPDATE b WITH(ROWLOCK, UPDLOCK)
			SET b.actualrate = t.actualrate,
				b.virtualrate = t.virtualrate
			FROM @__table t 
				INNER JOIN dbo.bettransRnG b ON t.transid = b.transid
		END
	END
	
	IF @TableName = 'bettransLC' --update bettransLC
	BEGIN
		SET @rowcount = 1 
		WHILE @rowcount <> 0
		BEGIN
			DELETE FROM @__table
		
			DELETE TOP(2000) FROM #bettransLC
			OUTPUT deleted.transid, deleted.actualrate, deleted.virtualrate into @__table
			SET @rowcount = @@ROWCOUNT
		
			UPDATE b WITH(ROWLOCK, UPDLOCK)
			SET b.actualrate = t.actualrate,
				b.virtualrate = t.virtualrate
			FROM @__table t 
				INNER JOIN dbo.bettransLC b ON t.transid = b.transid 
		END
	END
	
	IF @TableName = 'translog' --update translog
	BEGIN
		SET @rowcount = 1 
		WHILE @rowcount <> 0
		BEGIN
			DELETE FROM @__table
		
			DELETE TOP(2000) FROM #translog
			OUTPUT deleted.transid, deleted.actualrate, deleted.virtualrate INTO @__table
			SET @rowcount = @@ROWCOUNT
		
			UPDATE b WITH(ROWLOCK, UPDLOCK)
			SET b.actualrate = t.actualrate,
				b.virtualrate = t.virtualrate
			FROM @__table t 
				INNER JOIN dbo.translog b on t.transid = b.translogid 
		END
	END
	
	IF @TableName = 'bettrans' --update bettrans
	BEGIN
		SET @rowcount = 1 
		WHILE @rowcount <> 0
		BEGIN
			DELETE FROM @__table
		
			DELETE TOP(2000) FROM #bettrans 
			OUTPUT deleted.transid, deleted.actualrate, deleted.virtualrate into @__table
			SET @rowcount = @@ROWCOUNT
		
			UPDATE b WITH(ROWLOCK, UPDLOCK)
			SET b.actualrate = t.actualrate,
				b.virtualrate = t.virtualrate
			FROM @__table t 
				INNER JOIN dbo.bettrans b ON t.transid = b.transid 
		END

		IF OBJECT_ID ('CashOutSelling', N'U') IS NOT NULL
		BEGIN
			SET @rowcount = 1
			WHILE @rowcount <> 0
			BEGIN
				DELETE FROM @__table

				DELETE TOP(2000) FROM #CashOutSelling
				OUTPUT deleted.transid, deleted.virtualrate INTO @__table (transid, virtualrate)
				SET @rowcount = @@ROWCOUNT

				UPDATE co WITH(ROWLOCK, UPDLOCK)
				SET co.VirtualRate = t.virtualrate
				FROM @__table t
					INNER JOIN dbo.CashOutSelling co ON co.TransID = t.transid
			END
		END
	END
	
	IF @TableName = 'Transfer_Coll' --update transfer_coll
	BEGIN 
		SET @rowcount = 1 
		WHILE @rowcount <> 0
		BEGIN
			DELETE FROM @__table
			
			DELETE TOP(2000) FROM #Transfer_Coll 
			OUTPUT deleted.transid, deleted.actualrate, 0 INTO @__table
			SET @rowcount = @@ROWCOUNT
			
			UPDATE b WITH(ROWLOCK, UPDLOCK)
			SET b.actualrate = t.actualrate			
			FROM @__table t 
				INNER JOIN dbo.Transfer_Coll b ON t.transid = b.transid 
		END
	END 
	
	IF @TableName = 'bettransG' --update bettransG
	BEGIN
		SET @rowcount = 1
		-- update for bettransG 
		WHILE @rowcount <> 0
		BEGIN
			DELETE FROM @__table
		
			DELETE TOP(2000) FROM #bettransG
			OUTPUT deleted.transid, deleted.actualrate, deleted.virtualrate INTO @__table
			SET @rowcount = @@ROWCOUNT
	
			UPDATE b WITH (ROWLOCK, UPDLOCK)
			SET b.actualrate = t.actualrate, b.virtualrate = t.virtualrate
			FROM @__table t 
				INNER JOIN dbo.bettransG b ON t.transid = b.transid 	
		END
	END

	IF @TableName = 'Transfer' --update Transfer
	BEGIN
		SET @rowcount = 1
		-- update for Transfer 
		WHILE @rowcount <> 0
		BEGIN
			DELETE FROM @__table
		
			DELETE TOP(2000) FROM #transfer
			OUTPUT deleted.transid, deleted.actualrate INTO @__table (transid, actualrate)
			SET @rowcount = @@ROWCOUNT
	
			UPDATE b WITH (ROWLOCK, UPDLOCK)
			SET b.actualrate = t.actualrate
			FROM @__table t 
				INNER JOIN dbo.Transfer b ON t.transid = b.transid 	
		END
	END
		
	DROP TABLE #bettrans
	DROP TABLE #bettransG
	DROP TABLE #bettransLC
	DROP TABLE #bettransRnG
	DROP TABLE #Transfer_Coll
	DROP TABLE #translog
	DROP TABLE #transfer
	DROP TABLE #CashOutSelling
END
GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_10_UAT2]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_10_UAT2]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO

/****** Object:  StoredProcedure [dbo].[ExecRep_NAP_Admin_10_UAT3]    Script Date: 10/24/2022 11:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ExecRep_NAP_Admin_10_UAT3]
/*
	Created by: 20210303@Louisa
	Task: execRep SP for Settlement [Redmine:#140452]
	DB: DBTXN/bodb02
	
	Revisions:
		- 20201006@Louisa: add SPs into Pub Test [Redmine:#140452]

	Param's Explanation:
		- ExecRep SP: DBTrans_ExecRep_UAT
*/
AS
BEGIN
	SET NOCOUNT ON
END

GO




