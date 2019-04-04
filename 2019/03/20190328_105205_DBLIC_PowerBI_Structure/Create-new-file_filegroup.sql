
/*
	Task- New schema for PowerBI
*/

ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicPerformanceAnalysisData

ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicPerformanceAnalysisData', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport\rptLicPerformanceAnalysisData.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicPerformanceAnalysisData