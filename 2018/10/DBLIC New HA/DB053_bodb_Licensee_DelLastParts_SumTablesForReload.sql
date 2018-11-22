--delete data of Sep 2018

While(1=1)
begin
	delete top (50000)  rpt_Betting with (rowlock)
	where $PARTITION.pf_rptBetting_monthly(rptdate) in (117)

	if (@@rowcount < 50000) BREAK
end


While(1=1)
begin
	delete top (50000)  from rptCustomerActive with (rowlock)
	where $PARTITION.pf_rptCustomerActive_monthly(transdate) in (77)

	if (@@rowcount < 50000) BREAK
end
--

While(1=1)
begin
	delete top (50000)  rptCustomerMatch with (rowlock)
	where $PARTITION.pf_rptCustomerMatch_monthly(winlostdate) in (57)

	if (@@rowcount < 50000) BREAK
end


While(1=1)
begin
	delete top (50000) rptCustomerTurnover with (rowlock)
	where $PARTITION.pf_rptCustomerTurnover_monthly(winlostdate) in(37)

	if (@@rowcount < 50000) BREAK
end
--

While(1=1)
begin
	delete top (50000)  rptLicIPBetting with (rowlock)
	where $PARTITION.pf_rptLicIPBetting_monthly_new(winlostdate)  in (105)
	if (@@rowcount < 50000) BREAK
end


While(1=1)
begin
	delete top (50000)  rptLicWinloss2 with (rowlock)
	where $PARTITION.pf_rptLicensee_monthly(winlostdate) in (105)

	if (@@rowcount < 50000) BREAK
end

--
While(1=1)
begin
	delete top (50000)  rptLicWinlossGMT with (rowlock)
	where $PARTITION.pf_rptLicWLGMT_monthly(rptDateGMT) in (11)

	if (@@rowcount < 50000) BREAK
end


While(1=1)
begin
	delete top (50000)  rptWinlostbyLeague with (rowlock)
	where $PARTITION.pf_rptWinlostByLeague_monthly(winlostdate) in (57)

	if (@@rowcount < 50000) BREAK
end
