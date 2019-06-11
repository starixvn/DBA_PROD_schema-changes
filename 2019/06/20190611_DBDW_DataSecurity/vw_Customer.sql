ALTER VIEW [dbo].[vw_Customer] 
/*
	created: 20190622@Daniel
	Task: Data Security for DW servers - create view for customer table
	DB: DBDW/bodb_Account, DBDW2/bodb_Account
*/
AS
SELECT [custid]
      ,'' [firstname]
      ,'' [lastname]
      ,[username]
      ,[roleid]
      ,[recommend]
      ,[mrecommend]
      ,[srecommend]
      ,[currency]
      ,[Closed]
      ,[site]
      ,[creationdate]
  FROM [dbo].[Customer] with (nolock)
GO
