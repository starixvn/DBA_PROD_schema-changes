
/*
	Task- copy missing data
	Due to archiving process got problem when archiving data for event
	The message like that: "Message
Executed as user: ONEWORKS\sqladmin. OLE DB provider "SQLNCLI10" for linked server "DB02" returned message "Query timeout expired". [SQLSTATE 01000] (Message 7412).  The step succeeded."
	But the sql not failed and as the result DBA does not aware of that issue.

	Solution: copy data missing on 2018-09-01 to archive

	Run on DB06.bodb_Archive
*/

--//Odds3rd_bk -->  (155748 row(s) affected) 
insert into dbo.Odds3rd_bk(oddsid, matchid, odds3rdid, bettype, hdp1, hdp2, odds1a, odds2a, oddsstatus, changetime, creator, com1, comx, com2, cs00, cs01, cs10, cs11, cs02, cs12, cs22, cs21, cs20, cs30, cs31, cs32, cs33, cs23, cs13, cs03, cs99, sporttype, cs04, cs05, Resourceid)
select oddsid, matchid, odds3rdid, bettype, hdp1, hdp2, odds1a, odds2a, oddsstatus, changetime, creator, com1, comx, com2, cs00, cs01, cs10, cs11, cs02, cs12, cs22, cs21, cs20, cs30, cs31, cs32, cs33, cs23, cs13, cs03, cs99, sporttype, cs04, cs05, Resourceid
from DBTP.bodb_archive.dbo.Odds3rd_bk_20190913_tmp


--//Intg_OddsFeed_SettlementAction_bk --> (3947 row(s) affected)
insert into dbo.Intg_OddsFeed_SettlementAction_bk(ActionId, LeagueId, MatchId, ActionType, HTHomeScore, HTAwayScore, FTHomeScore, FTAwayScore, CreateTime, OtherInfo)
select ActionId, LeagueId, MatchId, ActionType, HTHomeScore, HTAwayScore, FTHomeScore, FTAwayScore, CreateTime, OtherInfo
from DBTP.bodb_archive.dbo.Intg_OddsFeed_SettlementAction_Issue

--//Intg_OddsFeed_SettlementAction_bk --> (22 row(s) affected)
insert into dbo.Match3rd_bk(Match3rdId, League3rdId, HomeId, AwayId, EventDate, SportType, VendorMatchId, MatchNo, HasLive, EventStatus, VendorEventStatus, CreateTime, UpdateTime, VendorEventDate, GameResultDate)
select Match3rdId, League3rdId, HomeId, AwayId, EventDate, SportType, VendorMatchId, MatchNo, HasLive, EventStatus, VendorEventStatus, CreateTime, UpdateTime, VendorEventDate, GameResultDate
from DBTP.bodb_archive.dbo.Match3rd14_Issue

go
