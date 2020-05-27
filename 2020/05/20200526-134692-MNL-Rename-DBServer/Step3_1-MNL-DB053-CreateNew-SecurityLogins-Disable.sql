/*
	Creator:	20200526@vnBobby
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		DB053[.msdb]
*/


--	BEGIN STEP :
--		Create new logins as disabled by default
----------------------------------------------------------------------------------------------------
USE master;
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [ANS_Member]    Script Date: 5/26/2020 6:04:31 AM ******/
CREATE LOGIN [ANS_Member] WITH PASSWORD=N'sZH6/5k6jktCCnnIPQxF36nktbKPjm3up1zIc8OpGGM=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [ANS_Member] DISABLE
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [CTO_Test]    Script Date: 5/26/2020 6:05:53 AM ******/
CREATE LOGIN [CTO_Test] WITH PASSWORD=N'Qhf0HIn6ZmWl5oLKEgy41t9mqmVnqrEmEysaoqrfbPw=', DEFAULT_DATABASE=[bodb02], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [CTO_Test] DISABLE
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [ibcrep]    Script Date: 5/26/2020 6:06:11 AM ******/
CREATE LOGIN [ibcrep] WITH PASSWORD=N'yKIPdlTCg8CUvghHVfA4PBPDxhrhxA4+6YGSRN3HerM=', DEFAULT_DATABASE=[bodb02], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [ibcrep] DISABLE
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [RB_Member]    Script Date: 5/26/2020 6:06:25 AM ******/
CREATE LOGIN [RB_Member] WITH PASSWORD=N'ChkKUPbxd61xRpC3obEvURuDkw4vjX1QuZujz1Eyn6I=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [RB_Member] DISABLE
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [rdsvntrack]    Script Date: 5/26/2020 6:06:45 AM ******/
CREATE LOGIN [rdsvntrack] WITH PASSWORD=N'j6BMe166Z+px3FNql8uRQVQD7qNbg/b0gunCOfloPOc=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [rdsvntrack] DISABLE
GO


/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [repl_ap]    Script Date: 5/26/2020 6:07:07 AM ******/
CREATE LOGIN [repl_ap] WITH PASSWORD=N'7YcEnxpIJvhOfBDFiU56DAG6EFeZEjx/mlPuPMDM6yw=', DEFAULT_DATABASE=[bodb02], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [repl_ap] DISABLE
GO







