/*
	Phease 1A:
	Task- Revise indexes for Fraud Sensor relocation
	
	Run on DB052/DB054
*/
--==> run on bk database
CREATE TABLE [dbo].[BetBackupSettings](
	[VID] [int] IDENTITY(1,1) NOT NULL,
	[VName] [varchar](30) NULL,
	[VValue] [varchar](500) NULL,
CONSTRAINT [PK_BetBackupSettings] PRIMARY KEY CLUSTERED 
(
	[VID] ASC
)
) ON bets_data

GO

--==init data for betReject setting
IF NOT EXISTS (SELECT TOP 1 1 FROM dbo.BetBackupSettings WITH(NOLOCK) WHERE VName = 'betReject')
BEGIN
	DECLARE @tstamp_max VARCHAR(200)
	SELECT @tstamp_max = CAST(CAST(MAX(tstamp) AS BIGINT) AS VARCHAR(200))
	FROM bodb02.dbo.bettrans WITH(NOLOCK)

	SET IDENTITY_INSERT dbo.BetBackupSettings ON
	
	INSERT INTO dbo.BetBackupSettings(VID, VName, VValue) VALUES(2, 'betReject', @tstamp_max)
	
	SET IDENTITY_INSERT dbo.BetBackupSettings ON
END