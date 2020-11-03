/*
	Task: Copy data for columns extended data type of table CustPTSetting3rd_Agent, CustPTSetting3rd_Member
*/

-- 1. Run at Replicated server DB06x, DBTP

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



-- 2. Run at DBCUST

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


