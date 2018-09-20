USE [bodb_LicenseeReport]
GO
/*
	Task - Archive data for rptCustomerTurnover
		+ Remove old data
	Run on DB054
*/

exec [dbo].[DBA_CloneTableStructure]
    @SourceSchema  = 'dbo',
    @SourceTable = 'rptCustomerTurnover',
    @DestinationSchema = 'dbo',
    @DestinationTable = 'rptCustomerTurnover_tmp',
    @RecreateIfExists = 0,
	@FileGroup = ''


ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 1 TO [rptCustomerTurnover_tmp] PARTITION 1; --Boundary: 2015-09-30 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 2 TO [rptCustomerTurnover_tmp] PARTITION 2; --Boundary: 2015-10-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 3 TO [rptCustomerTurnover_tmp] PARTITION 3; --Boundary: 2015-11-30 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 4 TO [rptCustomerTurnover_tmp] PARTITION 4; --Boundary: 2015-12-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 5 TO [rptCustomerTurnover_tmp] PARTITION 5; --Boundary: 2016-01-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 6 TO [rptCustomerTurnover_tmp] PARTITION 6; --Boundary: 2016-02-29 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 7 TO [rptCustomerTurnover_tmp] PARTITION 7; --Boundary: 2016-03-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 8 TO [rptCustomerTurnover_tmp] PARTITION 8; --Boundary: 2016-04-30 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 9 TO [rptCustomerTurnover_tmp] PARTITION 9; --Boundary: 2016-05-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 10 TO [rptCustomerTurnover_tmp] PARTITION 10; --Boundary: 2016-06-30 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 11 TO [rptCustomerTurnover_tmp] PARTITION 11; --Boundary: 2016-07-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 12 TO [rptCustomerTurnover_tmp] PARTITION 12; --Boundary: 2016-08-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 13 TO [rptCustomerTurnover_tmp] PARTITION 13; --Boundary: 2016-09-30 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 14 TO [rptCustomerTurnover_tmp] PARTITION 14; --Boundary: 2016-10-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 15 TO [rptCustomerTurnover_tmp] PARTITION 15; --Boundary: 2016-11-30 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 16 TO [rptCustomerTurnover_tmp] PARTITION 16; --Boundary: 2016-12-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 17 TO [rptCustomerTurnover_tmp] PARTITION 17; --Boundary: 2017-01-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 18 TO [rptCustomerTurnover_tmp] PARTITION 18; --Boundary: 2017-02-28 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 19 TO [rptCustomerTurnover_tmp] PARTITION 19; --Boundary: 2017-03-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 20 TO [rptCustomerTurnover_tmp] PARTITION 20; --Boundary: 2017-04-30 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 21 TO [rptCustomerTurnover_tmp] PARTITION 21; --Boundary: 2017-05-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 22 TO [rptCustomerTurnover_tmp] PARTITION 22; --Boundary: 2017-06-30 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 23 TO [rptCustomerTurnover_tmp] PARTITION 23; --Boundary: 2017-07-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 24 TO [rptCustomerTurnover_tmp] PARTITION 24; --Boundary: 2017-08-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 25 TO [rptCustomerTurnover_tmp] PARTITION 25; --Boundary: 2017-09-30 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 26 TO [rptCustomerTurnover_tmp] PARTITION 26; --Boundary: 2017-10-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 27 TO [rptCustomerTurnover_tmp] PARTITION 27; --Boundary: 2017-11-30 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 28 TO [rptCustomerTurnover_tmp] PARTITION 28; --Boundary: 2017-12-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 29 TO [rptCustomerTurnover_tmp] PARTITION 29; --Boundary: 2018-01-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 30 TO [rptCustomerTurnover_tmp] PARTITION 30; --Boundary: 2018-02-28 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 31 TO [rptCustomerTurnover_tmp] PARTITION 31; --Boundary: 2018-03-31 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 32 TO [rptCustomerTurnover_tmp] PARTITION 32; --Boundary: 2018-04-30 23:59:00
ALTER TABLE [rptCustomerTurnover] SWITCH PARTITION 33 TO [rptCustomerTurnover_tmp] PARTITION 33; --Boundary: 2018-05-31 23:59:00
GO

DROP TABLE [rptCustomerTurnover_tmp]
