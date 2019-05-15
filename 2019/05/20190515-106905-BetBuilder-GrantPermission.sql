/*
	Created by: Kos
	Date: 20190515
	Task: GRANT PERMISSION to access table SMP_Market_bk and SMP_MarketSelection_bk
	DB: DBARC.bodb_Archive
*/

USE [bodb_Archive]
GO

GRANT	SELECT	ON	SMP_Market_bk	TO	bodbLicenseeNet
GRANT	SELECT	ON	SMP_Market_bk	TO	bodbDownlineNetView
GRANT	SELECT	ON	SMP_Market_bk	TO	bodbDownlineNet
GRANT	SELECT	ON	SMP_Market_bk	TO	bodbAdminNet

GRANT	SELECT	ON	SMP_MarketSelection_bk	TO	bodbLicenseeNet
GRANT	SELECT	ON	SMP_MarketSelection_bk	TO	bodbDownlineNetView
GRANT	SELECT	ON	SMP_MarketSelection_bk	TO	bodbDownlineNet
GRANT	SELECT	ON	SMP_MarketSelection_bk	TO	bodbAdminNet