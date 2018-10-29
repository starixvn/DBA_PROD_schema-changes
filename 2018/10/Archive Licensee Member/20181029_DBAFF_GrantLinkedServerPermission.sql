/*
	Task: Add linked server permission for some AFF DBs, used for project Archive Deposit Members
	Run at DBAFF

*/



USE [master]
GO
ALTER DATABASE [Affiliate_Alpha] SET  READ_WRITE WITH NO_WAIT
GO
ALTER DATABASE [Affiliate_Bwinning] SET  READ_WRITE WITH NO_WAIT
GO
ALTER DATABASE [Affiliate_I668Bet] SET  READ_WRITE WITH NO_WAIT
GO
ALTER DATABASE [Affiliate_MYMBet] SET  READ_WRITE WITH NO_WAIT
GO


USE [Affiliate_Alpha]
GO
CREATE USER [SqlLink] FOR LOGIN [SqlLink]
GO
USE [Affiliate_Alpha]
GO
EXEC sp_addrolemember N'db_owner', N'SqlLink'
GO
USE [Affiliate_Bwinning]
GO
CREATE USER [SqlLink] FOR LOGIN [SqlLink]
GO
USE [Affiliate_Bwinning]
GO
EXEC sp_addrolemember N'db_owner', N'SqlLink'
GO
USE [Affiliate_I668Bet]
GO
CREATE USER [SqlLink] FOR LOGIN [SqlLink]
GO
USE [Affiliate_I668Bet]
GO
EXEC sp_addrolemember N'db_owner', N'SqlLink'
GO
USE [Affiliate_MYMBet]
GO
CREATE USER [SqlLink] FOR LOGIN [SqlLink]
GO
USE [Affiliate_MYMBet]
GO
EXEC sp_addrolemember N'db_owner', N'SqlLink'
GO


USE [master]
GO
ALTER DATABASE [Affiliate_Alpha] SET  READ_ONLY WITH NO_WAIT
GO
ALTER DATABASE [Affiliate_Bwinning] SET  READ_ONLY WITH NO_WAIT
GO
ALTER DATABASE [Affiliate_I668Bet] SET  READ_ONLY WITH NO_WAIT
GO
ALTER DATABASE [Affiliate_MYMBet] SET  READ_ONLY WITH NO_WAIT
GO