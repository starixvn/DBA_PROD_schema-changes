/*
	Task: Rename columns after removing tables from replication
	Run script below @DBCUST, DB06x, DBTP + MNL
*/

--Step 3: rename current columns ( run on all DB of custdb_custsetting publications )
	--Rename current columns
	exec sp_rename 'CustPTSetting3rd_Agent.SuperPT','SuperPT_BK','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Agent.MasterPT','MasterPT_BK','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Agent.AgentPT','AgentPT_BK','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Agent.AutoSuperPT','AutoSuperPT_BK','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Agent.AutoMasterPT','AutoMasterPT_BK','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Agent.MinPT','MinPT_BK','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Agent.MaxPT','MaxPT_BK','COLUMN'

	exec sp_rename 'CustPTSetting3rd_Member.SuperPT','SuperPT_BK','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Member.MasterPT','MasterPT_BK','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Member.AgentPT','AgentPT_BK','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Member.AutoSuperPT','AutoSuperPT_BK','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Member.AutoMasterPT','AutoMasterPT_BK','COLUMN'
	GO
	--Rename new columns
	exec sp_rename 'CustPTSetting3rd_Agent.SuperPT_tmp','SuperPT','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Agent.MasterPT_tmp','MasterPT','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Agent.AgentPT_tmp','AgentPT','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Agent.AutoSuperPT_tmp','AutoSuperPT','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Agent.AutoMasterPT_tmp','AutoMasterPT','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Agent.MinPT_tmp','MinPT','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Agent.MaxPT_tmp','MaxPT','COLUMN'

	exec sp_rename 'CustPTSetting3rd_Member.SuperPT_tmp','SuperPT','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Member.MasterPT_tmp','MasterPT','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Member.AgentPT_tmp','AgentPT','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Member.AutoSuperPT_tmp','AutoSuperPT','COLUMN'
	exec sp_rename 'CustPTSetting3rd_Member.AutoMasterPT_tmp','AutoMasterPT','COLUMN'
	GO

