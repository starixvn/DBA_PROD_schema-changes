-- Delete data of Oct 2018

While(1=1)
begin
	delete top (50000)  rpt_Betting with (rowlock)
	where $PARTITION.pf_rptBetting_monthly(rptdate) in (118)

	if (@@rowcount < 50000) BREAK
end


While(1=1)
begin
	delete top (50000)  from rptCustomerActive with (rowlock)
	where $PARTITION.pf_rptCustomerActive_monthly(transdate) in (78)

	if (@@rowcount < 50000) BREAK
end
--

While(1=1)-- No data Oct
begin
	delete top (50000)  rptCustomerMatch with (rowlock)
	where $PARTITION.pf_rptCustomerMatch_monthly(winlostdate) in (58)

	if (@@rowcount < 50000) BREAK
end


While(1=1)-- No data Oct
begin
	delete top (50000) rptCustomerTurnover with (rowlock)
	where $PARTITION.pf_rptCustomerTurnover_monthly(winlostdate) in(38)

	if (@@rowcount < 50000) BREAK
end

--

While(1=1)
begin
	delete top (50000)  rptLicIPBetting with (rowlock)
	where $PARTITION.pf_rptLicIPBetting_monthly_new(winlostdate)  in (106)

	if (@@rowcount < 50000) BREAK
end


While(1=1)
begin
	delete top (50000)  rptLicWinloss2 with (rowlock)
	where $PARTITION.pf_rptLicensee_monthly(winlostdate) in (106)

	if (@@rowcount < 50000) BREAK
end
--

While(1=1)
begin
	delete top (50000)  rptLicWinlossGMT with (rowlock)
	where $PARTITION.pf_rptLicWLGMT_monthly(rptDateGMT) in (12)

	if (@@rowcount < 50000) BREAK
end


While(1=1)
begin
	delete top (50000)  rptWinlostbyLeague with (rowlock)
	where $PARTITION.pf_rptWinlostByLeague_monthly(winlostdate) in (58)

	if (@@rowcount < 50000) BREAK
end
