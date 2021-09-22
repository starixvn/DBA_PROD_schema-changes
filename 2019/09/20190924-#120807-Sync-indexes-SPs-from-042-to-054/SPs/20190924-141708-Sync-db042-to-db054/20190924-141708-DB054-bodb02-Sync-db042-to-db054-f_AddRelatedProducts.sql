
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  User Defined Function dbo.f_AddRelatedProducts    Script Date: 9/24/2019 2:17:16 PM ******/
/****** Object:  User Defined Function dbo.f_AddRelatedProducts    Script Date: 9/24/2019 2:12:47 AM ******/

CREATE FUNCTION [dbo].[f_AddRelatedProducts]
(
	@ProductIds VARCHAR(MAX) = ''
)
RETURNS VARCHAR(MAX)
AS

/*
	Created by Percy
	Date: 2017-06-23
	DB: DBAGE.bodb02, DBACC.bodb02, DB042.bodb02
	Task: Add related products

	Revisions:
		- 20170623@Percy: Create new [RedmineID: #78339]
		- 20171101@Percy: Enhance Performance [RedmineID: #86200]
*/

BEGIN
	DECLARE @ProductIdList VARCHAR(MAX)

	SELECT @ProductIdList = @ProductIds + 
		ISNULL(
				(SELECT ',' + CONVERT(VARCHAR(10), ProductId)
				FROM dbo.f_GroupProduct()
				WHERE ProductId <> GroupProductId
					AND CHARINDEX(',' + CONVERT(VARCHAR(10), GroupProductId) + ',', ',' + @ProductIds + ',') > 0
				FOR XML PATH(''))
			, '')
	
	RETURN @ProductIdList
END
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


GO 
 GRANT EXECUTE ON [dbo].[f_AddRelatedProducts] TO [bodbExtAccNet]
GO 
 GRANT EXECUTE ON [dbo].[f_AddRelatedProducts] TO [bodbDownlineNetView]
GO 
 GRANT EXECUTE ON [dbo].[f_AddRelatedProducts] TO [bodbDownlineNet]
GO 
 GRANT EXECUTE ON [dbo].[f_AddRelatedProducts] TO [bodbAdminNet]
GO 
 GRANT EXECUTE ON [dbo].[f_AddRelatedProducts] TO [vnteam]
GO 
 GRANT VIEW DEFINITION ON [dbo].[f_AddRelatedProducts] TO [vnteam]
GO 
