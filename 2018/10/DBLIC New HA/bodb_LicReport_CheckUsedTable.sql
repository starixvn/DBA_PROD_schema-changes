SELECT distinct f.data_space_id, DS.NAME AS DataSpaceName
	,f.name, f.physical_name
	--,AU.type_desc AS AllocationDesc
	--,AU.total_pages / 128 AS TotalSizeMB
	--,OBJ.type_desc AS ObjectType
	--,OBJ.NAME AS ObjectName
	--,IDX.type_desc AS IndexType
	--,IDX.NAME AS IndexName
into #tmp
FROM sys.data_spaces AS DS
inner JOIN sys.allocation_units AS AU ON DS.data_space_id = AU.data_space_id
left JOIN sys.partitions AS PA ON (
		AU.type IN (1,3)
		AND AU.container_id = PA.hobt_id
		)
	OR (
		AU.type = 2
		AND AU.container_id = PA.partition_id
		)
right JOIN sys.database_files f ON AU.data_space_id = f.data_space_id
LEFT JOIN sys.objects AS OBJ ON PA.object_id = OBJ.object_id
left JOIN sys.schemas AS SCH ON OBJ.schema_id = SCH.schema_id
left JOIN sys.indexes AS IDX ON PA.object_id = IDX.object_id
	AND PA.index_id = IDX.index_id
	AND AU.total_pages > 0
where  1=1 and isnull(OBJ.type_desc,'') NOT IN('INTERNAL_TABLE', 'SYSTEM_TABLE')
	--and f.physical_name like '%bodb_LicenseeReport_log.log%'
	AND
	(
		f.data_space_id = 0
		OR OBJ.NAME IN( --add filtered used tables here
			'bettrans',
			'DataCheckingLog',
			--'Lrf_Rpt_LicWinloss_Log',
			'match',
			'outright',
			'rpt_Betting',
			'rpt_Betting_BA',
			'rpt_BettingByProduct',
			'rpt_BettingBySport',
			'rpt_BettingColossusBets',
			'rpt_BettingParlay',
			'rpt_ThirdPartyWL_ExtraGMT',
			'rptCustomerActive',
			'rptCustomerMatch',
			'rptCustomerTurnover',
			'rptDep_AuditTickets',
			'rptDepWinlost_ThirdParty',
			'rptDepWinlost_ThirdParty_Performance',
			'rptKenoWinloss',
			'rptLicCashoutSummary',
			'rptLicIPBetting',
			'rptLicWinloss_old',
			'rptLicWinloss2',
			'rptLicWinlossGMT',
			'rptWinlostbyLeague',
			'Sports_ThirdParty',
			'tbl_Customer_Account'
			--'tbl_Customer_Account_old'
			)
	)
--ORDER BY case when f.data_space_id = 0 then 'zzzz' else f.name end, dataspacename, OBJ.NAME

select
	case data_space_id 
		when 0 then 'LOG ON '
		when 1 then 'CREATE DATABASE [bodb_LicenseeReport] ON PRIMARY '
		else 'FILEGROUP [' + name + '] '
	end 
	--+ '( NAME = N''' + name + ''', FILENAME = N''G:\IBC_DB\bodb_LicenseeReport\' + name + '.ndf'' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),' filegroup_gen
	+ '( NAME = N''' + name + ''', FILENAME = N''' + replace(physical_name, 'M:\', 'G:\') + ''' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),' filegroup_gen
	, * 
from #tmp
--where physical_name not like '%\IBC_DB\bodb_LicenseeReport%'
ORDER BY case data_space_id when 0 then 'zzzz' when 1 then '__aa' else name end

drop table #tmp