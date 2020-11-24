/*
	Task: Copy data for columns extended data type of table CustPTSetting3rd_Agent, CustPTSetting3rd_Member
*/

-- 1. Deploy exec rep SP @ DBCUST

USE CustDB
GO

ALTER PROCEDURE [dbo].[Acc_DynamicCustSetting3rd_09]
	@srecommend INT	,
	@target VARCHAR(20)
AS
BEGIN
	SET NOCOUNT ON

	IF (@target = 'REPLICATED' AND @@SERVERNAME IN ('DBCUST','SITDBCUST','DB233','DB230\SQLSERVER2008R2')) RETURN -- run at all replicated servers
	IF (@target = 'DBCUST' AND @@SERVERNAME NOT IN ('DBCUST','SITDBCUST','DB233','DB230\SQLSERVER2008R2')) RETURN -- run at dbcust only

	IF dbo.f_CheckRepTable('CustPTSetting3rd_Member') = 0 RETURN
	IF dbo.f_CheckRepTable('CustPTSetting3rd_Agent') = 0 RETURN

	DECLARE @batch int = 5000
	CREATE TABLE #CustTbl_Agent(CustID INT PRIMARY KEY)
	CREATE TABLE #CustTbl_Member(CustID INT PRIMARY KEY)
	CREATE TABLE #CustTbl_tmp(CustID INT PRIMARY KEY)

	INSERT INTO #CustTbl_Member (CustID)
	SELECT custid
	FROM Custinfo WITH (NOLOCK)
	WHERE srecommend = @srecommend AND roleid = 1

	INSERT INTO #CustTbl_Agent (CustID)
	SELECT custid
	FROM Custinfo WITH (NOLOCK)
	WHERE srecommend = @srecommend AND roleid IN (2,3,4)

	WHILE 1 = 1
	BEGIN
		TRUNCATE TABLE #CustTbl_tmp

		DELETE TOP (@batch) t
		OUTPUT deleted.CustID INTO #CustTbl_tmp(CustID)
		FROM #CustTbl_Agent t

		IF @@ROWCOUNT = 0 BREAK;

		UPDATE c
		SET	  c.AgentPT = c.AgentPT_BK, 
			  c.MasterPT = c.MasterPT_BK, 
			  c.SuperPT = c.SuperPT_BK, 
			  c.AutoMasterPT = c.AutoMasterPT_BK, 
			  c.AutoSuperPT = c.AutoSuperPT_BK, 
			  c.MinPT = c.MinPT_BK, 
			  c.MaxPT = c.MaxPT_BK
		FROM CustPTSetting3rd_Agent c WITH (ROWLOCK, UPDLOCK)
			 INNER JOIN #CustTbl_tmp t
			   ON c.CustID = t.CustID;

		--WAITFOR DELAY '00:00:00.010'
	END

	WHILE 1 = 1
	BEGIN
		TRUNCATE TABLE #CustTbl_tmp

		DELETE TOP (@batch) t
		OUTPUT deleted.CustID INTO #CustTbl_tmp(CustID)
		FROM #CustTbl_Member t

		IF @@ROWCOUNT = 0 BREAK;

		UPDATE c
		SET	  c.AgentPT = c.AgentPT_BK, 
			  c.MasterPT = c.MasterPT_BK, 
			  c.SuperPT = c.SuperPT_BK, 
			  c.AutoMasterPT = c.AutoMasterPT_BK, 
			  c.AutoSuperPT = c.AutoSuperPT_BK
		FROM CustPTSetting3rd_Member c WITH (ROWLOCK, UPDLOCK)
			 INNER JOIN #CustTbl_tmp t
			   ON c.CustID = t.CustID;

		--WAITFOR DELAY '00:00:00.010'
	END
	DROP TABLE #CustTbl_Agent
	DROP TABLE #CustTbl_Member
	DROP TABLE #CustTbl_tmp
END
GO



-- 2. Run at Replicated server DB06x, DBTP

USE bodb02
GO

CREATE TABLE #supers (custid int,isfinished bit default(0))
DECLARE @srecommend INT

INSERT INTO #supers(custid)
SELECT ci.srecommend
FROM CustPTSetting3rd_Agent C WITH(NOLOCK)
	INNER JOIN  Custinfo ci WITH (NOLOCK) ON ci.custid = c.custid
UNION
SELECT ci.srecommend
FROM CustPTSetting3rd_Member C WITH(NOLOCK)
	INNER JOIN  Custinfo ci WITH (NOLOCK) ON ci.custid = c.custid

-- For deployer info
DECLARE @super_cnt INT, @index INT = 0
DECLARE @msg NVARCHAR(200) = 'Currently at order %d, SuperID: %d.'
DECLARE @msg_total NVARCHAR(200) = 'Total of supers: %d.'

SET @super_cnt = (SELECT COUNT(*) FROM #supers )
RAISERROR (@msg_total, 0, 1, @super_cnt) WITH NOWAIT

WHILE (1 = 1)
BEGIN
	UPDATE TOP (1) #supers
	SET isfinished = 1
		,@srecommend = custid	
	WHERE isfinished = 0

	IF @@ROWCOUNT = 0 BREAK

	SET @index = @index + 1
	RAISERROR (@msg, 0, 1, @index, @srecommend) WITH NOWAIT

	EXEC dbo.Acc_DynamicCustSetting3rd_09 @srecommend = @srecommend
			,@target = 'REPLICATED'
		
		
	--WAITFOR DELAY '00:00:00.010'
END

DROP TABLE #supers
GO



-- 3. Run at DBCUST

USE CUSTDB
GO
CREATE TABLE #supers (custid int,isfinished bit default(0))
DECLARE @srecommend INT

INSERT INTO #supers(custid)
SELECT ci.srecommend
FROM CustPTSetting3rd_Agent C WITH(NOLOCK)
	INNER JOIN  Custinfo ci WITH (NOLOCK) ON ci.custid = c.custid
UNION
SELECT ci.srecommend
FROM CustPTSetting3rd_Member C WITH(NOLOCK)
	INNER JOIN  Custinfo ci WITH (NOLOCK) ON ci.custid = c.custid

-- For deployer info
DECLARE @super_cnt INT, @index INT = 0
DECLARE @msg NVARCHAR(200) = 'Currently at order %d, SuperID: %d.'
DECLARE @msg_total NVARCHAR(200) = 'Total of supers: %d.'

SET @super_cnt = (SELECT COUNT(*) FROM #supers )
RAISERROR (@msg_total, 0, 1, @super_cnt) WITH NOWAIT

WHILE (1 = 1)
BEGIN
	UPDATE TOP (1) #supers
	SET isfinished = 1
		,@srecommend = custid	
	WHERE isfinished = 0

	IF @@ROWCOUNT = 0 BREAK

	SET @index = @index + 1
	RAISERROR (@msg, 0, 1, @index, @srecommend) WITH NOWAIT

	EXEC dbo.Acc_DynamicCustSetting3rd_09 @srecommend = @srecommend
			,@target = 'DBCUST'
		
		
	--WAITFOR DELAY '00:00:00.010'
END

DROP TABLE #supers
GO


