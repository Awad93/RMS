
/****** Object:  StoredProcedure [dbo].[sp_rep_GetNonISIPublicationsAll]    Script Date: 7/21/2016 11:13:16 AM ******/

-- [sp_rep_GetNonISIPublicationsAll] 0
-- [sp_rep_GetNonISIPublicationsAll] 1
ALTER PROCEDURE [dbo].[sp_rep_GetNonISIPublicationsAll] 
@Approved int = null
	-- Add the parameters for the stored procedure here	
AS
BEGIN

	SET NOCOUNT ON;

	SELECT DISTINCT 
	[Publication_NonISI_ID]
      ,[KFUPMID]
      ,isnull([DOI],'') as doi
      ,[Authors]
      ,[Paper_Title]
      ,[Source]
      ,[Publication_Year]
      ,[Approved]
      ,[isCorrespondingAuthor]
	FROM Publication_NonISI P
	WHERE Approved = ISNULL(@Approved, Approved)
	ORDER BY P.Publication_Year, Paper_Title
END
