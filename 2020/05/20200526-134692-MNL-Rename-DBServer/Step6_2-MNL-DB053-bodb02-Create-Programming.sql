/*
	Creator:	20200526@vnBobby
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		DB053[.bodb02]
*/


--	BEGIN STEP :
--		Create new programming objects on bodb02
----------------------------------------------------------------------------------------------------
USE [bodb02]
GO
/****** Object:  StoredProcedure [dbo].[DBA_Monitor_bettransm14_CopyData]    Script Date: 5/26/2020 5:35:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DBA_Monitor_bettransm14_CopyData]
AS
BEGIN
	SET NOCOUNT ON 
	create table #cntResult (sv varchar(20),winlostdate smalldatetime,cnt int)
	
	--insert into #cntResult
	--select 'DB054' as sv, winlostdate, count(1) cnt 
	--from bettransm14 witH(nolock)
	--group by winlostdate 

	insert into #cntResult
	select 'DB053' as server, winlostdate, count(1) cnt 
	from DBAGE.bodb02.dbo.bettransm14 witH(nolock)
	group by winlostdate 

	insert into #cntResult
	select 'DB052' as server, winlostdate, count(1) cnt 
	from DBEXT.bodb02.dbo.bettransm14 witH(nolock)
	group by winlostdate 

	insert into #cntResult
	select 'DB06' as server, winlostdate, count(1) cnt 
	from DBARC.bodb02.dbo.bettransm14 witH(nolock)
	group by winlostdate 

	;with rs as
	(
		select sv,count(1) cnt 
		from #cntResult
		group by sv
	)
	select left(sv,2),  min(cnt) ,max(cnt), (select top 1 sv from rs order by cnt asc)
	from rs
	group by left(sv,2)
	having min(cnt) <> max(cnt)
	if @@ROWCOUNT <> 0
	begin
		declare @lestalkMessage varchar(200)
		set @lestalkMessage = 'you got bettransm14 missing data, please help check. (DB054.bodb02.DBA_monitor_bettransm14_Lukas)'
		EXECUTE	DBNOTI.NotificationDB.dbo.DBA_Letstalk_NewJobMessage @ServerName = 'PONTUS'
		  , @JobId  = NULL
		  , @JobName = 'Custom Message'
		  , @Message = @lestalkMessage
	end 
END

GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Repl_Article]    Script Date: 5/26/2020 5:35:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 14.Replication Article
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Repl_Article]
	@TableHTML [varchar](max) = ''
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2018/06/06>
-- Description: <DB Compare Tool - Get Repl Article>
-- INPUT
-- =============================================
BEGIN
SELECT p.name [Publication],t.name [Article]
 ,ISNULL(STUFF( 
       (SELECT ', ' + sc.name AS [text()] 
           FROM dbo.sysarticlecolumns (NOLOCK) tc
               INNER JOIN dbo.syscolumns (NOLOCK) sc
		    ON tc.colid = sc.colorder 
           WHERE tc.artid = t.artid AND t.objid = sc.id 
           ORDER BY sc.colorder
           FOR XML PATH('') 
       ), 1, 2, '' 
   ) ,'')  [Columns]
 FROM dbo.syspublications(NOLOCK) p
   INNER JOIN dbo.sysarticles(NOLOCK) t
 ON p.pubid = t.pubid 
END
GO

