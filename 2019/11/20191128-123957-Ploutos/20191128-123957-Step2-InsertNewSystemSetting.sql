/*
	Creator:	20191122@Sophia
	Task:		Insert System Setting for Ploutos - [Redmine: #123957]
	Server:		DBPLO.bodb02
*/


USE bodb02;

DECLARE @MAX_CustID INT
	,@lookupName VARCHAR(100) = 'Plo_MaxCustId';

SELECT @MAX_CustID = MAX(CustID)
FROM bodb02.dbo.Customer al WITH(NOLOCK);

SELECT @MAX_CustID;

IF(EXISTS (SELECT 1 FROM bodb02.dbo.SystemSettings WHERE VName = @lookupName))
BEGIN
	UPDATE bodb02.dbo.SystemSettings
	SET VValue = CAST(@MAX_CustID AS VARCHAR(200))
	WHERE VName = @lookupName;
END;
ELSE
BEGIN
	INSERT INTO bodb02.dbo.SystemSettings(VName,VValue)
	VALUES (@lookupName,@MAX_CustID);
END;

-----------------------------------


DECLARE @MAX_TransID BIGINT;

SELECT @lookupName = 'Plo_MaxTransId';

SELECT @MAX_TransID = MAX(TransactionId)
FROM 	bodb_LicenseeReportArchive.dbo.rptDep_AuditTickets al WITH(NOLOCK);

SELECT @MAX_TransID;

IF(EXISTS (SELECT 1 FROM bodb02.dbo.SystemSettings WHERE VName = @lookupName))
BEGIN
	UPDATE bodb02.dbo.SystemSettings
	SET VValue = CAST(@MAX_TransID AS VARCHAR(200))
	WHERE VName = @lookupName;
END;
ELSE
BEGIN
	INSERT INTO bodb02.dbo.SystemSettings(VName,VValue)
	VALUES (@lookupName,@MAX_TransID);
END;