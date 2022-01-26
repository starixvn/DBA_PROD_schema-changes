/*<info serverAlias="DBSPARE-bodb02_CustRep" executers="" selecters="" viewers="" isFunction="0" isNested="0"></info>*/
ALTER PROCEDURE	[dbo].[Acc_RunCS_SSB]
	@CSType varchar(20) = 'CustSetting', --CustSetting/CustInfo
	@Step tinyint, -- 1 to 99
    @custid int = NULL,
	@maxcustid int = NULL
AS
/*
	Creator:	20220124@Daniel
	Task:		Exec rep SP to run cust setting by custid from main DBCUST + async (SSB) run on replicated servers
	Database:	DBSPARE.bodb02_custRep
	
	exec Acc_RunCS_SSB 23456
		
*/
BEGIN;
	SET NOCOUNT ON;

	declare @sql nvarchar(max)
	declare @StepSf char(2) = RIGHT('0' + CAST(@Step AS VARCHAR),2)
	
	set @sql = 'EXEC dbo.' 
		+ case @CSType 
			when 'CustSetting' then 'Acc_RunCS_SSB_CustSetting_' 
			when 'CustInfo' then 'Acc_RunCS_SSB_CustInfo_'
		end + @StepSf 
		+ case when @CustID IS NOT NULL then ' ' + convert(nvarchar(30), @custid) else '' end
		+ case when (@CustID IS NOT NULL AND @maxcustid IS NOT NULL) then ', ' + convert(nvarchar(30), @maxcustid) else '' end

	if @@servername IN('DBCUST', 'DBBACKUP2') --main: run directly
	begin
		EXEC(@sql)
	end
	else--replicated: enqueued in SSB
	begin
		exec dbo.Acc_RunCS_SBInputMsg @message = @sql
	end

END;