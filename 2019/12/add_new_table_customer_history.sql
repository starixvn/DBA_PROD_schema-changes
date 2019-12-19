 

 use bodb_history
 go



CREATE TABLE [dbo].[Customer_History](
	[UpdateTime] [datetime] NOT NULL,
	[custid] [int] ,
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[address] [nvarchar](80) NULL,
	[postal] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[mobilephone] [nvarchar](50) NULL,
	[fax] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[birthday] [smalldatetime] NULL,
	[refcode1] [nvarchar](50) NULL,
	[refcode2] [nvarchar](50) NULL,
	[remark] [nvarchar](50) NULL,
	[creatdate] [smalldatetime] NULL,
	[creator] [int] NOT NULL,
	[username] [varchar](30) NOT NULL,
	[currency] [tinyint] NULL,
	[userpwd] [varchar](40) NULL,
	[lastlogged] [smalldatetime] NULL,
	[pwdexpiry] [datetime] NULL,
	[roleid] [tinyint] NULL,
	[mrecommend] [int] NULL,
	[recommend] [int] NULL,
	[ugroup] [varchar](3) NULL,
	[logincount] [tinyint] NULL,
	[on_sessionid] [int] NULL,
	[site] [varchar](10) NULL,
	[iplogin] [nvarchar](20) NULL,
	[important] [bit] NULL,
	[srecommend] [int] NULL,
	[username2] [varchar](50) NULL ) ON [Customer_table]

GO
 
 
ALTER TABLE [dbo].[Customer_History] ADD  CONSTRAINT [DF_Customer_History_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO

CREATE CLUSTERED INDEX [CIX_Customer_History] ON [dbo].[Customer_History]
(
	[UpdateTime] ASC,
	[custid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Customer_table]
GO


------------------------------------
create TRIGGER [dbo].[Customer_update] ON [dbo].Customer
AFTER UPDATE
AS
/*  

	Created by: 20191219@Lukas
	Task: Trigger for updating customer table 
	DB: DBTP/bodb02  
	Revisions:   
	 
*/
BEGIN
	
	SET NOCOUNT ON
    
    IF UPDATE(lastlogged)
		RETURN
		
	INSERT INTO bodb_CustHistory.dbo.Customer_history (
	custid
	,firstname
	,lastname
	,address
	,postal
	,city
	,STATE
	,country
	,phone
	,mobilephone
	,fax
	,email
	,birthday
	,refcode1
	,refcode2
	,remark
	,creatdate
	,creator
	,username
	,currency
	,userpwd
	,lastlogged
	,pwdexpiry
	,roleid
	,mrecommend
	,recommend
	,ugroup
	,logincount
	,on_sessionid
	,site
	,iplogin
	,important
	,srecommend
	,username2
		)
	SELECT custid
	,firstname
	,lastname
	,address
	,postal
	,city
	,STATE
	,country
	,phone
	,mobilephone
	,fax
	,email
	,birthday
	,refcode1
	,refcode2
	,remark
	,creatdate
	,creator
	,username
	,currency
	,userpwd
	,lastlogged
	,pwdexpiry
	,roleid
	,mrecommend
	,recommend
	,ugroup
	,logincount
	,on_sessionid
	,site
	,iplogin
	,important
	,srecommend
	,username2
	FROM [DELETED]
END

